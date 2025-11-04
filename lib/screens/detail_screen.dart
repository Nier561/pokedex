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

String _genderText(num? genderRate) {
  // gender_rate: -1 genderless, 0..8 => female = rate*12.5
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
    _tabController = TabController(length: 4, vsync: this);
    // Warm-up del audio para que suene instantáneo
    _player.setSource(UrlSource(_cryById(widget.id)));
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

        // Autoplay del cry una sola vez al entrar con datos listos
        _maybeAutoplayCry();

        final name = p['name'] as String;
        final height = p['height'] as int;
        final weight = p['weight'] as int;

        final types = (p['pokemon_v2_pokemontypes'] as List)
            .map((e) => e['pokemon_v2_type']['name'] as String)
            .toList();
        final primaryType = types.isNotEmpty ? types.first : 'normal';
        final gradient = typeGradients[primaryType] ?? typeGradients['normal']!;

        final stats = (p['pokemon_v2_pokemonstats'] as List)
            .map((s) => {
          'name': (s['pokemon_v2_stat'] as Map)['name'] as String,
          'value': s['base_stat'] as int,
        })
            .toList();

        // Habilidades con descripción (short_effect)
        final rawAbilities = (p['pokemon_v2_pokemonabilities'] as List);
        final abilitiesWithDesc = rawAbilities.map<Map<String, String>>((a) {
          final ab = a['pokemon_v2_ability'] as Map;
          final descList =
              (ab['pokemon_v2_abilityeffecttexts'] as List?) ?? const [];
          final desc = descList.isNotEmpty
              ? (descList.first['short_effect'] as String)
              : '';
          return {
            'name': ab['name'] as String,
            'desc': desc,
          };
        }).toList();

        // NOTE: en el esquema Hasura de PokeAPI la relación desde pokemon suele
        // llamarse "pokemon_v2_pokemonspecy". Si usas "pokemonspecies" te dará null.
        final species =
        p['pokemon_v2_pokemonspecy'] as Map<String, dynamic>?; // <-- OJO

        // Flavor text + gender + evolución
        String dexEntry = '';
        String genderText = '—';
        List<Map<String, dynamic>> evoSpecies = const [];

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

          final chain =
          species['pokemon_v2_evolutionchain'] as Map<String, dynamic>?;
          if (chain != null) {
            final sp =
                (chain['pokemon_v2_pokemonspecies'] as List?) ?? const [];
            evoSpecies = sp.map<Map<String, dynamic>>((e) {
              final pidList = (e['pokemon_v2_pokemons'] as List?) ?? const [];
              final firstId =
              pidList.isNotEmpty ? (pidList.first['id'] as int) : null;
              return {
                'species_id': e['id'] as int,
                'pokemon_id': firstId,
                'name': e['name'] as String,
                'from': e['evolves_from_species_id'],
                'order': e['order'],
              };
            }).toList();
          }
        }

        // Movimientos: dedupe por nombre, quedándonos con la entrada más nueva (version_group_id desc)
        final rawMoves = (p['pokemon_v2_pokemonmoves'] as List);
        final Map<String, Map<String, dynamic>> dedup = {};
        for (final m in rawMoves) {
          final mv = m['pokemon_v2_move'] as Map?;
          if (mv == null) continue;
          final nameMv = mv['name'] as String;
          if (dedup.containsKey(nameMv)) continue;
          dedup[nameMv] = {
            'name': nameMv,
            'type':
            (mv['pokemon_v2_type'] as Map)['name'] as String, // color/type
            'class': (mv['pokemon_v2_movedamageclass'] as Map?)?['name']
            as String? ??
                'status',
            'power': mv['power'],
            'pp': mv['pp'],
            'accuracy': mv['accuracy'],
            'level': m['level'],
            'method':
            (m['pokemon_v2_movelearnmethod'] as Map)['name'] as String, // level-up|machine|tutor|egg
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
                // Header with gradient
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
                                    // Play cry
                                    InteractiveButton(
                                      onTap: _playCry,
                                      child: const Icon(Icons.volume_up,
                                          color: Colors.white),
                                    ),
                                    const SizedBox(width: 8),
                                    // Favorite placeholder
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

                        // Name, types, id
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

                        // Image
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
                                tabs: const [
                                  Tab(text: 'About'),
                                  Tab(text: 'Base Stats'),
                                  Tab(text: 'Evolution'),
                                  Tab(text: 'Moves'),
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
                                  _buildEvolutionTab(evoSpecies),
                                  _buildMovesTab(
                                    movesLevelUp: movesLevelUp,
                                    movesMachine: movesMachine,
                                    movesTutor: movesTutor,
                                    movesEgg: movesEgg,
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
          // Abilities con descripción
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

  Widget _buildEvolutionTab(List<Map<String, dynamic>> evoSpecies) {
    if (evoSpecies.isEmpty) {
      return const Center(child: Text('No evolution data'));
    }
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: evoSpecies.length,
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      itemBuilder: (context, i) {
        final e = evoSpecies[i];
        final pid = e['pokemon_id'] as int?;
        final nm = _pretty(e['name'] as String);
        return ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 8),
          leading: pid == null
              ? const SizedBox.shrink()
              : Image.network(_imageById(pid), width: 56, height: 56),
          title: Text(nm, style: const TextStyle(fontWeight: FontWeight.w600)),
          subtitle:
          e['from'] == null ? const Text('Base form') : Text('Evolves from #${e['from']}'),
          onTap: pid == null
              ? null
              : () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => PokemonDetailScreen(id: pid),
            ));
          },
        );
      },
    );
  }

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
            child:
            Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
          ),
          ...list.map((m) {
            final t = m['type'] as String;
            final cls = m['class'] as String; // physical | special | status
            final color = _typeColor(t);
            final badge = cls == 'physical'
                ? '⚔'
                : cls == 'special'
                ? '✨'
                : '★';
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
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: color.withOpacity(.25)),
                color: color.withOpacity(.06),
              ),
              child: Row(
                children: [
                  Container(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
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
}
