import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:audioplayers/audioplayers.dart';

import 'package:pokedex/graphql/PokemonDetail.graphql.dart';
import 'package:pokedex/widgets/type_badge.dart';
import 'package:pokedex/widgets/type_gradients.dart';
import 'package:pokedex/widgets/start_bar.dart';
import 'package:pokedex/widgets/animated_detail_screen.dart';

String _imageById(int id) =>
    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$id.png';

String _cryById(int id) =>
    'https://raw.githubusercontent.com/PokeAPI/cries/main/cries/pokemon/latest/$id.ogg';

Color _typeColor(String type) {
  final g = typeGradients[type] ?? typeGradients['normal']!;
  return g.colors.first;
}

String _pretty(String s) => s.isEmpty ? s : s[0].toUpperCase() + s.substring(1);
String _titleCase(String s) => s.split('-').map((p) => _pretty(p)).join(' ');

String _genderText(num? genderRate) {
  if (genderRate == null || genderRate == -1) return 'Genderless';
  final female = (genderRate * 12.5);
  final male = 100 - female;
  return '♂ ${male.toStringAsFixed(1)}%    ♀ ${female.toStringAsFixed(1)}%';
}

class PokemonDetailScreen extends StatefulWidget {
  final int id;
  const PokemonDetailScreen({super.key, required this.id});

  @override
  State<PokemonDetailScreen> createState() => _PokemonDetailScreenState();
}

class _PokemonDetailScreenState extends State<PokemonDetailScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final _player = AudioPlayer();
  bool _playedOnOpen = false;

  @override
  void initState() {
    super.initState();
    // 6 tabs (About, Base, Evo, Moves, Megas/G-Max, Forms)
    _tabController = TabController(length: 6, vsync: this);
    _player.setSource(UrlSource(_cryById(widget.id))); // warm-up
  }

  @override
  void dispose() {
    _tabController.dispose();
    _player.dispose();
    super.dispose();
  }

  Future<void> _playCry() async {
    try {
      await _player.stop();
      await _player.play(UrlSource(_cryById(widget.id)));
    } catch (_) {}
  }

  void _maybeAutoplayCry() {
    if (_playedOnOpen) return;
    _playedOnOpen = true;
    _playCry();
  }

  @override
  Widget build(BuildContext context) {
    return Query(
      options: QueryOptions(
        document: documentNodeQueryPokemonDetailV3,
        variables: {'id': widget.id, 'langId': 9},
        fetchPolicy: FetchPolicy.cacheFirst,
      ),
      builder: (result, {fetchMore, refetch}) {
        if (result.isLoading && result.data == null) {
          return const Scaffold(
            backgroundColor: Colors.white,
            body: Center(child: CircularProgressIndicator()),
          );
        }
        if (result.hasException) {
          return Scaffold(
            body: Center(child: Text('Error: ${result.exception}')),
          );
        }

        final p =
        result.data?['pokemon_v2_pokemon_by_pk'] as Map<String, dynamic>?;
        if (p == null) {
          return const Scaffold(body: Center(child: Text('Not found')));
        }

        _maybeAutoplayCry();

        final name = p['name'] as String;
        final height = p['height'] as int;
        final weight = p['weight'] as int;

        final types = (p['pokemon_v2_pokemontypes'] as List)
            .map((e) => e['pokemon_v2_type']['name'] as String)
            .toList();
        final primaryType = types.isNotEmpty ? types.first : 'normal';
        final gradient =
            typeGradients[primaryType] ?? typeGradients['normal']!;

        final stats = (p['pokemon_v2_pokemonstats'] as List)
            .map((s) => {
          'name': (s['pokemon_v2_stat'] as Map)['name'] as String,
          'value': s['base_stat'] as int,
        })
            .toList();

        // Abilities + descripción
        final rawAbilities = (p['pokemon_v2_pokemonabilities'] as List);
        final abilitiesWithDesc = rawAbilities.map<Map<String, String>>((a) {
          final ab = a['pokemon_v2_ability'] as Map;
          final descList =
              (ab['pokemon_v2_abilityeffecttexts'] as List?) ?? const [];
          final desc =
          descList.isNotEmpty ? (descList.first['short_effect'] as String) : '';
          return {
            'name': ab['name'] as String,
            'desc': desc,
          };
        }).toList();

        // Species
        final species =
        p['pokemon_v2_pokemonspecy'] as Map<String, dynamic>?;

        String dexEntry = '';
        String genderText = '—';

        // Evolución (edges con método)
        final List<_EvoEdge> evoEdges;

        // ---- Forms/Megas/G-Max ----
        final List<_FormCard> megaCards = [];
        final List<_FormCard> gmaxCards = [];
        final List<_FormCard> otherFormCards = [];

        if (species != null) {
          final flavors =
              (species['pokemon_v2_pokemonspeciesflavortexts'] as List?) ??
                  const [];
          if (flavors.isNotEmpty) {
            dexEntry = (flavors.first['flavor_text'] as String)
                .replaceAll('\n', ' ')
                .replaceAll('\f', ' ')
                .trim();
          }
          genderText = _genderText(species['gender_rate'] as int?);

          // --- Evolutions
          evoEdges = _extractAndReduceEvolutionEdges(
            species['pokemon_v2_evolutionchain'] as Map<String, dynamic>?,
          );

          // --- Forms (todas las variantes de la especie)
          final speciesPokemons =
              (species['pokemon_v2_pokemons'] as List?) ?? const [];
          for (final pk in speciesPokemons) {
            final int pid = pk['id'] as int;
            final String pname = pk['name'] as String;

            final pfList =
                (pk['pokemon_v2_pokemonforms'] as List?) ?? const [];
            for (final f in pfList) {
              final isMega = f['is_mega'] == true;
              final isBattleOnly = f['is_battle_only'] == true;
              final formName = (f['form_name'] as String?) ?? '';
              final displayName = _formDisplayName(pname, formName, isMega);

              final typesF =
              ((f['pokemon_v2_pokemonformtypes'] as List?) ?? [])
                  .map((t) =>
              (t['pokemon_v2_type'] as Map)['name'] as String)
                  .toList();

              final String front = _imageById(pid);

              final card = _FormCard(
                pokemonId: pid,
                title: _titleCase(displayName),
                tags: [
                  if (isMega) 'Mega',
                  if (!isMega && _isGmax(formName, pname)) 'G-Max',
                  if (_isRegional(formName)) _regionalTag(formName),
                  if (isBattleOnly &&
                      !_isGmax(formName, pname) &&
                      !isMega)
                    'Battle-only',
                ],
                imageUrl: front,
                types: typesF.isNotEmpty ? typesF : types,
              );

              if (isMega) {
                megaCards.add(card);
              } else if (_isGmax(formName, pname)) {
                gmaxCards.add(card);
              } else if (!_isDefaultForm(formName)) {
                otherFormCards.add(card);
              }
            }
          }
        } else {
          evoEdges = const [];
        }

        // Movimientos (dedupe por nombre)
        final rawMoves = (p['pokemon_v2_pokemonmoves'] as List);
        final Map<String, Map<String, dynamic>> dedup = {};
        for (final m in rawMoves) {
          final mv = m['pokemon_v2_move'] as Map?;
          if (mv == null) continue;
          final nameMv = mv['name'] as String;
          if (dedup.containsKey(nameMv)) continue;
          dedup[nameMv] = {
            'name': nameMv,
            'type': (mv['pokemon_v2_type'] as Map)['name'] as String,
            'class':
            (mv['pokemon_v2_movedamageclass'] as Map?)?['name'] as String? ??
                'status',
            'power': mv['power'],
            'pp': mv['pp'],
            'accuracy': mv['accuracy'],
            'level': m['level'],
            'method':
            (m['pokemon_v2_movelearnmethod'] as Map)['name'] as String,
          };
        }
        final moves = dedup.values.toList();

        List<Map<String, dynamic>> by(String method) =>
            moves.where((m) => m['method'] == method).toList();

        final movesLevelUp = by('level-up')
          ..sort((a, b) => (a['level'] as int).compareTo(b['level'] as int));
        final movesMachine = by('machine')
          ..sort((a, b) =>
              (a['name'] as String).compareTo(b['name'] as String));
        final movesTutor = by('tutor')
          ..sort((a, b) =>
              (a['name'] as String).compareTo(b['name'] as String));
        final movesEgg = by('egg')
          ..sort((a, b) =>
              (a['name'] as String).compareTo(b['name'] as String));

        return AnimatedDetailScreen(
          child: Scaffold(
            body: Column(
              children: [
                // Header con gradiente
                Container(
                  decoration: BoxDecoration(gradient: gradient),
                  child: SafeArea(
                    bottom: false,
                    child: Column(
                      children: [
                        // App bar
                        StaggeredAnimationItem(
                          index: 0,
                          animationType: AnimationType.slideDown,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InteractiveButton(
                                  onTap: () => Navigator.of(context).pop(),
                                  child: const Icon(Icons.arrow_back,
                                      color: Colors.white),
                                ),
                                Row(
                                  children: [
                                    InteractiveButton(
                                      onTap: _playCry,
                                      child: const Icon(Icons.volume_up,
                                          color: Colors.white),
                                    ),
                                    const SizedBox(width: 8),
                                    InteractiveButton(
                                      onTap: () {},
                                      child: const Icon(Icons.favorite_border,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        // Nombre, tipos, id
                        StaggeredAnimationItem(
                          index: 1,
                          animationType: AnimationType.slideLeft,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        _pretty(name),
                                        style: const TextStyle(
                                          fontSize: 32,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(height: 8),
                                      Wrap(
                                        spacing: 8,
                                        children: types
                                            .map((t) => TypeBadge(
                                          type: t,
                                          backgroundColor:
                                          gradient.colors.first,
                                        ))
                                            .toList(),
                                      ),
                                    ],
                                  ),
                                ),
                                Text(
                                  '#${widget.id.toString().padLeft(3, '0')}',
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white70,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // Imagen
                        AnimatedPokemonImage(
                          child: SizedBox(
                            height: 240,
                            child: Image.network(_imageById(widget.id),
                                fit: BoxFit.contain),
                          ),
                        ),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ),
                ),

                // Tabs
                Expanded(
                  child: StaggeredAnimationItem(
                    index: 2,
                    animationType: AnimationType.slideUp,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24),
                        ),
                      ),
                      child: Column(
                        children: [
                          StaggeredAnimationItem(
                            index: 3,
                            animationType: AnimationType.slideUp,
                            child: Container(
                              margin: const EdgeInsets.only(top: 16),
                              child: TabBar(
                                controller: _tabController,
                                labelColor: gradient.colors.first,
                                unselectedLabelColor: Colors.grey,
                                indicatorColor: gradient.colors.first,
                                indicatorWeight: 3,
                                isScrollable: true,
                                tabs: const [
                                  Tab(text: 'About'),
                                  Tab(text: 'Base Stats'),
                                  Tab(text: 'Evolution'),
                                  Tab(text: 'Moves'),
                                  Tab(text: 'Megas / G-Max'),
                                  Tab(text: 'Forms'),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: StaggeredAnimationItem(
                              index: 4,
                              animationType: AnimationType.slideUp,
                              child: TabBarView(
                                controller: _tabController,
                                children: [
                                  _buildAboutTab(
                                    height,
                                    weight,
                                    abilitiesWithDesc,
                                    _pretty(name),
                                    dexEntry,
                                    genderText,
                                  ),
                                  _buildBaseStatsTab(
                                      stats, gradient.colors.first),
                                  _buildEvolutionTab(evoEdges),
                                  _buildMovesTab(
                                    movesLevelUp: movesLevelUp,
                                    movesMachine: movesMachine,
                                    movesTutor: movesTutor,
                                    movesEgg: movesEgg,
                                  ),
                                  _buildFormsGrid(
                                    // Megas y G-Max en una sola pestaña
                                    [...megaCards, ...gmaxCards],
                                    emptyText: 'No Mega/G-Max data',
                                  ),
                                  _buildFormsGrid(
                                    otherFormCards,
                                    emptyText: 'No alternate forms',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildAboutTab(
      int height,
      int weight,
      List<Map<String, String>> abilitiesWithDesc,
      String speciesName,
      String dexEntry,
      String genderText,
      ) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildInfoRow('Pokédex Entry', dexEntry.isEmpty ? '—' : dexEntry),
          const SizedBox(height: 16),
          _buildInfoRow('Species', speciesName),
          const SizedBox(height: 16),
          _buildInfoRow(
            'Height',
            '${(height / 10).toStringAsFixed(1)} m (${(height * 3.937 / 10).toStringAsFixed(1)} ft)',
          ),
          const SizedBox(height: 16),
          _buildInfoRow(
            'Weight',
            '${(weight / 10).toStringAsFixed(1)} kg (${(weight * 2.205 / 10).toStringAsFixed(1)} lbs)',
          ),
          const SizedBox(height: 16),
          const Text('Abilities',
              style: TextStyle(
                  fontSize: 14, color: Colors.grey, fontWeight: FontWeight.w500)),
          const SizedBox(height: 8),
          ...abilitiesWithDesc.map((a) => Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: RichText(
              text: TextSpan(
                style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
                children: [
                  TextSpan(
                    text: '${_pretty(a['name']!)}: ',
                    style: const TextStyle(fontWeight: FontWeight.w700),
                  ),
                  TextSpan(text: (a['desc'] ?? '').replaceAll('\n', ' ')),
                ],
              ),
            ),
          )),
          const SizedBox(height: 24),
          _buildInfoRow('Gender', genderText),
        ],
      ),
    );
  }

  Widget _buildBaseStatsTab(
      List<Map<String, dynamic>> stats,
      Color primaryColor,
      ) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: stats.asMap().entries.map((entry) {
          final index = entry.key;
          final stat = entry.value;
          final name = (stat['name'] as String);
          final value = stat['value'] as int;
          return StaggeredAnimationItem(
            index: index,
            animationType: AnimationType.slideLeft,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: InteractiveButton(
                onTap: () {},
                child: StatBar(label: name, value: value),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  // ---------- Evolution UI ----------
  Widget _buildEvolutionTab(List<_EvoEdge> edges) {
    if (edges.isEmpty) {
      return const Center(child: Text('No evolution data'));
    }

    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: edges.length,
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      itemBuilder: (context, i) {
        final e = edges[i];

        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.black12),
            boxShadow: const [
              BoxShadow(
                blurRadius: 6,
                offset: Offset(0, 2),
                color: Color(0x11000000),
              )
            ],
          ),
          child: Row(
            children: [
              _EvoMonTile(
                name: _pretty(e.fromName),
                pokemonId: e.fromPokemonId,
                onTap: e.fromPokemonId == null
                    ? null
                    : () => Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (_) =>
                          PokemonDetailScreen(id: e.fromPokemonId!)),
                ),
              ),
              const SizedBox(width: 8),
              const Icon(Icons.arrow_forward, size: 20),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _EvoMonTile(
                      name: _pretty(e.toName),
                      pokemonId: e.toPokemonId,
                      onTap: e.toPokemonId == null
                          ? null
                          : () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (_) =>
                                PokemonDetailScreen(id: e.toPokemonId!)),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 6,
                      runSpacing: 6,
                      children: _buildMethodChips(e.method),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  // ---------- Forms grid (Megas/G-Max y otras Forms) ----------
  Widget _buildFormsGrid(List<_FormCard> items, {required String emptyText}) {
    if (items.isEmpty) return Center(child: Text(emptyText));

    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: .88),
      itemCount: items.length,
      itemBuilder: (ctx, i) {
        final f = items[i];
        final color =
        _typeColor(f.types.isNotEmpty ? f.types.first : 'normal');

        return InkWell(
          onTap: () {
            Navigator.of(ctx).push(MaterialPageRoute(
              builder: (_) => PokemonDetailScreen(id: f.pokemonId),
            ));
          },
          child: Container(
            decoration: BoxDecoration(
              color: color.withOpacity(.08),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: color.withOpacity(.25)),
            ),
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Center(
                    child: Image.network(
                      f.imageUrl ?? _imageById(f.pokemonId),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  f.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 4),
                Wrap(
                  spacing: 6,
                  runSpacing: 6,
                  children: [
                    ...f.types.map((t) => Chip(
                      label: Text(_titleCase(t)),
                      materialTapTargetSize:
                      MaterialTapTargetSize.shrinkWrap,
                    )),
                    ...f.tags.map((t) => Chip(
                      label: Text(t),
                      materialTapTargetSize:
                      MaterialTapTargetSize.shrinkWrap,
                    )),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  // ---------- Moves ----------
  Widget _buildMovesTab({
    required List<Map<String, dynamic>> movesLevelUp,
    required List<Map<String, dynamic>> movesMachine,
    required List<Map<String, dynamic>> movesTutor,
    required List<Map<String, dynamic>> movesEgg,
  }) {
    Widget section(String title, List<Map<String, dynamic>> list,
        {bool showLevel = false}) {
      if (list.isEmpty) return const SizedBox.shrink();
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Text(title,
                style:
                const TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
          ),
          ...list.map((m) {
            final t = m['type'] as String;
            final cls = m['class'] as String; // physical | special | status
            final color = _typeColor(t);
            final badge =
            cls == 'physical' ? '⚔' : cls == 'special' ? '✨' : '★';
            final pp = m['pp'];
            final pw = m['power'];
            final acc = m['accuracy'];
            final right = [
              if (pw != null) 'Pow $pw',
              if (acc != null) 'Acc $acc',
              if (pp != null) 'PP $pp',
            ].join(' · ');
            final level = (m['level'] ?? 0) as int;

            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              padding:
              const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: color.withOpacity(.25)),
                color: color.withOpacity(.06),
              ),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 6),
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(_pretty(t),
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w700)),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(_pretty(m['name'] as String),
                            style:
                            const TextStyle(fontWeight: FontWeight.w700)),
                        const SizedBox(height: 2),
                        Text('$badge ${cls.toUpperCase()}',
                            style: const TextStyle(color: Colors.black54)),
                      ],
                    ),
                  ),
                  if (showLevel)
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Text('Lv ${level > 0 ? level : 1}',
                          style: const TextStyle(fontWeight: FontWeight.w600)),
                    ),
                  Text(right, style: const TextStyle(color: Colors.black87)),
                ],
              ),
            );
          }),
        ],
      );
    }

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          section('Level-Up', movesLevelUp, showLevel: true),
          section('Machine', movesMachine),
          section('Tutor', movesTutor),
          section('Egg', movesEgg),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return InteractiveButton(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 110,
              child: Text(label,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                  )),
            ),
            const SizedBox(width: 24),
            Expanded(
              child: Text(value,
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w500)),
            ),
          ],
        ),
      ),
    );
  }

  // --------- Evolución: helpers ---------

  String _formDisplayName(String baseName, String formName, bool isMega) {
    final bn = _titleCase(baseName);
    final f = formName.trim().toLowerCase();

    // Mega (X/Y si aplica)
    if (isMega) {
      if (f.contains('x')) return 'Mega $bn X';
      if (f.contains('y')) return 'Mega $bn Y';
      return 'Mega $bn';
    }

    // Gigantamax
    if (f.contains('gmax') || f.contains('gigantamax')) {
      return '$bn (Gigantamax)';
    }

    // Regionales
    if (f.contains('alola')) return '$bn (Alola)';
    if (f.contains('galar')) return '$bn (Galar)';
    if (f.contains('hisui')) return '$bn (Hisui)';
    if (f.contains('paldea')) return '$bn (Paldea)';

    // Default
    if (f.isEmpty || f == 'default') return bn;

    // Otros casos
    return '$bn (${_titleCase(formName)})';
  }

  int _evoScore(Map<String, dynamic> evo) {
    final hasItem = evo['item'] != null && (evo['item'] as String).isNotEmpty;
    final hasLevel = evo['min_level'] != null;
    final hasLocation =
        evo['location'] != null && (evo['location'] as String).isNotEmpty;

    int score = 0;
    if (hasItem) score += 100;
    if (hasLevel) score += 80;
    if (!hasLocation) score += 20;
    if (evo['min_happiness'] != null) score += 10;
    if ((evo['time_of_day'] as String?)?.isNotEmpty == true) score += 6;
    if (evo['needs_overworld_rain'] == true) score -= 2;
    return score;
  }

  Map<String, dynamic> _normalizeEvo(Map<String, dynamic> raw) {
    return {
      'trigger':
      raw['pokemon_v2_evolutiontrigger']?['name'] as String? ?? '',
      'item': raw['pokemon_v2_item']?['name'] as String? ?? '',
      'min_level': raw['min_level'],
      'min_happiness': raw['min_happiness'],
      'min_beauty': raw['min_beauty'],
      'min_affection': raw['min_affection'],
      'time_of_day': raw['time_of_day'] as String? ?? '',
      'needs_overworld_rain': raw['needs_overworld_rain'] == true,
      'turn_upside_down': raw['turn_upside_down'] == true,
      'move': raw['pokemon_v2_move']?['name'] as String? ?? '',
      'location': raw['pokemon_v2_location']?['name'] as String? ?? '',
      'type': raw['pokemon_v2_type']?['name'] as String? ?? '',
      'held_item': raw['pokemon_v2_held_item']?['name'] as String? ??
          raw['pokemon_v2_helditem']?['name'] as String? ??
          '',
      'trade_species':
      raw['pokemon_v2_tradespecies']?['name'] as String? ??
          raw['trade_species']?['name'] as String? ??
          '',
    };
  }

  List<Widget> _buildMethodChips(Map<String, dynamic> evo) {
    final chips = <Widget>[];

    final trigger = (evo['item'] as String).isNotEmpty
        ? 'Use ${_titleCase(evo["item"])} 💎'
        : (evo['min_level'] != null
        ? 'Level Up to Lv ${evo["min_level"]} ⬆️'
        : _titleCase((evo['trigger'] as String).replaceAll('-', ' ')));

    chips.add(Chip(
      label: Text(trigger, style: const TextStyle(fontWeight: FontWeight.w600)),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    ));

    if ((evo['held_item'] as String).isNotEmpty) {
      chips.add(Chip(
        label: Text('Holding ${_titleCase(evo["held_item"])}'),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ));
    }
    if ((evo['time_of_day'] as String).isNotEmpty) {
      final t = evo['time_of_day'] == 'night' ? 'Night 🌙' : 'Day ☀️';
      chips.add(Chip(
          label: Text(t),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap));
    }
    if (evo['min_happiness'] != null) {
      chips.add(const Chip(
          label: Text('High Friendship 💞'),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap));
    }
    if (evo['min_beauty'] != null) {
      chips.add(const Chip(
          label: Text('High Beauty ✨'),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap));
    }
    if (evo['min_affection'] != null) {
      chips.add(const Chip(
          label: Text('High Affection 💗'),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap));
    }
    if (evo['needs_overworld_rain'] == true) {
      chips.add(const Chip(
          label: Text('Rain 🌧️'),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap));
    }
    if ((evo['move'] as String).isNotEmpty) {
      chips.add(Chip(
        label: Text('Know ${_titleCase(evo["move"])} 📘'),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ));
    }
    if ((evo['type'] as String).isNotEmpty) {
      chips.add(Chip(
        label: Text('With ${_titleCase(evo["type"])} type'),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ));
    }
    final showLocation = (evo['item'] as String).isEmpty &&
        evo['min_level'] == null &&
        (evo['location'] as String).isNotEmpty;
    if (showLocation) {
      chips.add(Chip(
        label: Text('At ${_titleCase(evo["location"])} 📍'),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ));
    }
    if ((evo['trade_species'] as String).isNotEmpty) {
      chips.add(Chip(
        label: Text('Trade for ${_titleCase(evo["trade_species"])} 🔁'),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ));
    }
    if (evo['turn_upside_down'] == true) {
      chips.add(const Chip(
          label: Text('Hold Upside Down 📱'),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap));
    }

    return chips;
  }

  List<_EvoEdge> _extractAndReduceEvolutionEdges(
      Map<String, dynamic>? chain) {
    if (chain == null) return const [];

    final all = (chain['pokemon_v2_pokemonspecies'] as List?) ?? const [];

    // índice por species_id
    final byId = <int, Map<String, dynamic>>{};
    for (final s in all) {
      byId[s['id'] as int] = s as Map<String, dynamic>;
    }

    // bucket por destino con todos los métodos
    final Map<int, List<Map<String, dynamic>>> candidates = {};

    for (final s in all) {
      final childId = s['id'] as int;
      final fromId = s['evolves_from_species_id'] as int?;
      if (fromId == null) continue;

      final evos = (s['pokemon_v2_pokemonevolutions'] as List?) ?? const [];
      if (evos.isEmpty) continue;

      final parent = byId[fromId];
      if (parent == null) continue;

      final childPokes = (s['pokemon_v2_pokemons'] as List?) ?? const [];
      final childPid =
      childPokes.isNotEmpty ? (childPokes.first['id'] as int) : null;

      final pp = (parent['pokemon_v2_pokemons'] as List?) ?? const [];
      final parentPid = pp.isNotEmpty ? (pp.first['id'] as int) : null;

      for (final ev in evos) {
        final nrm = _normalizeEvo(ev as Map<String, dynamic>);
        candidates.putIfAbsent(childId, () => []).add({
          'from_species_id': fromId,
          'from_pokemon_id': parentPid,
          'from_name': parent['name'],
          'to_species_id': childId,
          'to_pokemon_id': childPid,
          'to_name': s['name'],
          'method': nrm,
        });
      }
    }

    // elegir mejor método por destino
    final edges = <_EvoEdge>[];
    for (final entry in candidates.entries) {
      Map<String, dynamic>? best;
      int bestScore = -999;
      for (final cand in entry.value) {
        final sc = _evoScore(cand['method'] as Map<String, dynamic>);
        if (sc > bestScore) {
          bestScore = sc;
          best = cand;
        }
      }
      if (best != null) {
        edges.add(_EvoEdge(
          fromSpeciesId: best['from_species_id'] as int,
          fromPokemonId: best['from_pokemon_id'] as int?,
          fromName: best['from_name'] as String,
          toSpeciesId: best['to_species_id'] as int,
          toPokemonId: best['to_pokemon_id'] as int?,
          toName: best['to_name'] as String,
          method: best['method'] as Map<String, dynamic>,
        ));
      }
    }

    // ORDEN CORRECTO: por especie origen y luego destino
    edges.sort((a, b) {
      final c1 = a.fromSpeciesId.compareTo(b.fromSpeciesId);
      return c1 != 0 ? c1 : a.toSpeciesId.compareTo(b.toSpeciesId);
    });
    return edges;
  }

  // --------- Forms helpers ---------
  bool _isDefaultForm(String formName) =>
      formName.isEmpty || formName == 'default';

  bool _isGmax(String formName, String pname) {
    final f = formName.toLowerCase();
    final n = pname.toLowerCase();
    return f.contains('gmax') || f.contains('gigantamax') || n.contains('gmax');
  }

  bool _isRegional(String formName) {
    final f = formName.toLowerCase();
    return f.contains('alola') ||
        f.contains('galar') ||
        f.contains('hisui') ||
        f.contains('paldea');
  }

  String _regionalTag(String formName) {
    final f = formName.toLowerCase();
    if (f.contains('alola')) return 'Alola';
    if (f.contains('galar')) return 'Galar';
    if (f.contains('hisui')) return 'Hisui';
    if (f.contains('paldea')) return 'Paldea';
    return 'Regional';
  }
}

class _EvoEdge {
  final int fromSpeciesId;
  final int? fromPokemonId;
  final String fromName;
  final int toSpeciesId;
  final int? toPokemonId;
  final String toName;
  final Map<String, dynamic> method;

  _EvoEdge({
    required this.fromSpeciesId,
    required this.fromPokemonId,
    required this.fromName,
    required this.toSpeciesId,
    required this.toPokemonId,
    required this.toName,
    required this.method,
  });
}

class _FormCard {
  final int pokemonId;
  final String title;
  final List<String> types;
  final List<String> tags;
  final String? imageUrl;

  _FormCard({
    required this.pokemonId,
    required this.title,
    required this.types,
    required this.tags,
    required this.imageUrl,
  });
}

// EVO TILE CLICABLE
class _EvoMonTile extends StatelessWidget {
  final int? pokemonId;
  final String name;
  final VoidCallback? onTap;

  const _EvoMonTile({
    super.key,
    required this.pokemonId,
    required this.name,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final content = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (pokemonId != null)
          Image.network(_imageById(pokemonId!), width: 48, height: 48)
        else
          const SizedBox(width: 48, height: 48),
        const SizedBox(width: 8),
        Text(name, style: const TextStyle(fontWeight: FontWeight.w600)),
      ],
    );

    if (onTap == null) return content;

    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
        child: content,
      ),
    );
  }
}
