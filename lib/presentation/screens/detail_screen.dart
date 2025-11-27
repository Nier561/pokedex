import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:screenshot/screenshot.dart';

import 'package:pokedex/domain/entities/pokemon_detail.dart';
import 'package:pokedex/data/models/pokemon_detail_dto.dart';
import 'package:pokedex/presentation/providers/favorites_provider.dart';
import 'package:pokedex/presentation/providers/pokemon_provider.dart';
import 'package:pokedex/presentation/providers/language_provider.dart';
import 'package:pokedex/presentation/screens/region_map_screen.dart'; // Importar mapa
import 'package:pokedex/presentation/widgets/page_transitions.dart';
import 'package:pokedex/presentation/widgets/type_badge.dart';
import 'package:pokedex/presentation/widgets/type_gradients.dart';
import 'package:pokedex/presentation/widgets/stat_bar.dart';
import 'package:pokedex/presentation/widgets/matchup_grid.dart';
import 'package:pokedex/presentation/widgets/animated_detail_screen.dart';

class PokemonDetailScreen extends ConsumerStatefulWidget {
  final int id;
  final List<int>? listIds;
  final int? initialIndex;
  final int? genContext;

  const PokemonDetailScreen({
    super.key,
    required this.id,
    this.listIds,
    this.initialIndex,
    this.genContext
  });

  @override
  ConsumerState<PokemonDetailScreen> createState() => _PokemonDetailScreenState();
}

class _PokemonDetailScreenState extends ConsumerState<PokemonDetailScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final _player = AudioPlayer();
  final _screenshotController = ScreenshotController();

  bool _playedOnOpen = false;
  late List<int> _ids;
  late int _idx;

  @override
  void initState() {
    super.initState();
    // AHORA SON 7 TABS
    _tabController = TabController(length: 7, vsync: this);
    _ids = widget.listIds ?? [];
    _idx = widget.initialIndex ?? -1;
  }

  @override
  void dispose() {
    _tabController.dispose();
    _player.dispose();
    super.dispose();
  }

  void _playCry() async {
    try {
      await _player.play(UrlSource('https://raw.githubusercontent.com/PokeAPI/cries/main/cries/pokemon/latest/${widget.id}.ogg'));
    } catch (_) {}
  }

  Future<void> _sharePokemon(PokemonDetail p) async {
    try {
      final Uint8List? image = await _screenshotController.captureFromWidget(
        Container(
          padding: const EdgeInsets.all(20),
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(p.name.toUpperCase(), style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              Image.network('https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${p.id}.png', height: 200),
              const SizedBox(height: 10),
              Text(p.flavorText, textAlign: TextAlign.center),
            ],
          ),
        ),
        delay: const Duration(milliseconds: 10),
      );

      if (image != null) {
        final directory = await getApplicationDocumentsDirectory();
        final imagePath = await File('${directory.path}/pokemon_card_${p.id}.png').create();
        await imagePath.writeAsBytes(image);
        await Share.shareXFiles([XFile(imagePath.path)], text: 'Check out ${p.name}!');
      }
    } catch (e) {
      debugPrint('Error sharing: $e');
    }
  }

  String _img(int id) => 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$id.png';

  @override
  Widget build(BuildContext context) {
    final locale = ref.watch(languageProvider);
    String tr(String key) => S(locale).get(key);

    final isFav = ref.watch(favoritesProvider.select((s) => s.contains(widget.id)));

    final detailAsync = ref.watch(pokemonDetailProvider(
        PokemonDetailParams(id: widget.id, gen: widget.genContext)
    ));

    return detailAsync.when(
      loading: () => const Scaffold(body: Center(child: CircularProgressIndicator())),
      error: (err, stack) => const Scaffold(body: Center(child: Text('Not found'))),
      data: (p) {
        if (!_playedOnOpen) { _playedOnOpen = true; _playCry(); }

        final type = p.types.isNotEmpty ? p.types.first : 'normal';
        final gradient = typeGradients[type] ?? typeGradients['normal']!;
        final color = gradient.colors.first;

        final movesLvl = p.moves.where((m) => m.learnMethod == 'level-up').toList()..sort((a,b) => a.level.compareTo(b.level));
        final movesTm = p.moves.where((m) => m.learnMethod == 'machine').toList()..sort((a,b) => a.name.compareTo(b.name));
        final movesEgg = p.moves.where((m) => m.learnMethod == 'egg').toList();
        final movesTutor = p.moves.where((m) => m.learnMethod == 'tutor').toList();

        final formsMega = p.forms.where((f) => f.isMega || f.isGmax).toList();
        final formsAlt = p.forms.where((f) => !f.isMega && !f.isGmax).toList();

        return AnimatedDetailScreen(
          child: GestureDetector(
            onHorizontalDragEnd: _onSwipe,
            child: Scaffold(
              body: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(gradient: gradient),
                    child: SafeArea(bottom: false, child: Column(children: [
                      StaggeredAnimationItem(index: 0, animationType: AnimationType.slideDown, child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                          IconButton(icon: const Icon(Icons.arrow_back, color: Colors.white), onPressed: () => Navigator.pop(context)),
                          Row(children: [
                            IconButton(icon: const Icon(Icons.share, color: Colors.white), onPressed: () => _sharePokemon(p)),
                            IconButton(
                                icon: const Icon(Icons.volume_up, color: Colors.white),
                                onPressed: _playCry
                            ),
                            IconButton(
                              icon: Icon(isFav ? Icons.favorite : Icons.favorite_border, color: Colors.white),
                              onPressed: () => ref.read(favoritesProvider.notifier).toggle(widget.id),
                            ),
                          ]),
                        ]),
                      )),
                      StaggeredAnimationItem(index: 1, animationType: AnimationType.slideLeft, child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [
                          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                            Text(p.name[0].toUpperCase()+p.name.substring(1), style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white)),
                            Wrap(spacing: 8, children: p.types.map((t) => TypeBadge(type: t, backgroundColor: color)).toList())
                          ]),
                          Text('#${p.id.toString().padLeft(3,'0')}', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white70))
                        ]),
                      )),
                      AnimatedPokemonImage(child: SizedBox(height: 240, child: Image.network(_img(p.id), fit: BoxFit.contain))),
                    ])),
                  ),

                  Expanded(
                    child: StaggeredAnimationItem(index: 2, animationType: AnimationType.slideUp, child: Container(
                      decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
                      child: Column(children: [
                        TabBar(
                            controller: _tabController,
                            labelColor: color,
                            unselectedLabelColor: Colors.grey,
                            indicatorColor: color,
                            isScrollable: true,
                            tabs: [
                              Tab(text: tr('about')),
                              Tab(text: tr('stats')),
                              Tab(text: tr('evolutions')),
                              Tab(text: tr('moves')),
                              Tab(text: tr('locations')), // NUEVO TAB
                              Tab(text: tr('megas')),
                              Tab(text: tr('forms')),
                            ]
                        ),
                        Expanded(child: TabBarView(controller: _tabController, children: [
                          _buildAbout(p, tr),
                          _buildStats(p.stats, p.types, tr),
                          _buildEvolutionTab(p.evolutionChain, context),
                          _buildMovesTab(movesLvl, movesTm, movesTutor, movesEgg, tr),
                          _buildLocationsTab(p.locations, color, context, tr), // NUEVA VISTA
                          _buildForms(formsMega, color, context),
                          _buildForms(formsAlt, color, context),
                        ])),
                      ]),
                    )),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _onSwipe(DragEndDetails d) {
    final v = d.primaryVelocity ?? 0;
    if (v == 0) return;
    int? nextId;
    int? nextIdx;
    if (_ids.isNotEmpty && _idx >= 0) {
      if (v < 0 && _idx + 1 < _ids.length) { nextIdx = _idx + 1; nextId = _ids[nextIdx]; }
      else if (v > 0 && _idx - 1 >= 0) { nextIdx = _idx - 1; nextId = _ids[nextIdx]; }
    } else {
      nextId = v < 0 ? widget.id + 1 : widget.id - 1;
      if (nextId < 1) nextId = null;
    }
    if (nextId != null) {
      Navigator.of(context).pushReplacement(ScaleFadePageRoute(
          child: PokemonDetailScreen(id: nextId, listIds: _ids, initialIndex: nextIdx, genContext: widget.genContext)
      ));
    }
  }

  Widget _buildAbout(PokemonDetail p, Function(String) tr) {
    return ListView(padding: const EdgeInsets.all(24), children: [
      _row('Description', p.flavorText),
      _row('Height', '${p.height/10} m'),
      _row('Weight', '${p.weight/10} kg'),
      _row('Gender', p.genderText),
      _row('Egg Groups', p.eggGroups.join(', ')),
      _row('Region', p.regionName.isNotEmpty ? p.regionName : 'Unknown'),
      const SizedBox(height: 16),
      Text(tr('abilities') == 'abilities' ? 'Abilities' : tr('abilities'), style: const TextStyle(fontWeight: FontWeight.bold)),
      ...p.abilities.map((a) => ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text(_pretty(a.name), style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(a.description),
        trailing: a.isHidden ? const Chip(label: Text('Hidden'), visualDensity: VisualDensity.compact) : null,
      ))
    ]);
  }

  Widget _row(String k, String v) => Padding(padding: const EdgeInsets.symmetric(vertical: 8), child: Row(children: [
    SizedBox(width: 100, child: Text(k, style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold))),
    Expanded(child: Text(v, style: const TextStyle(fontWeight: FontWeight.w500))),
  ]));

  Widget _buildStats(List<StatDto> stats, List<String> types, Function(String) tr) {
    final int total = stats.fold(0, (sum, item) => sum + item.value);
    return ListView(
      padding: const EdgeInsets.all(24),
      children: [
        ...stats.asMap().entries.map((e) => StaggeredAnimationItem(
            index: e.key, animationType: AnimationType.slideLeft,
            child: Padding(padding: const EdgeInsets.only(bottom: 16), child: StatBar(label: _pretty(e.value.name), value: e.value.value))
        )),
        const Divider(height: 24),
        Row(children: [
          const SizedBox(width: 40, child: Text('Total', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14))),
          const SizedBox(width: 35),
          Text('$total', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        ]),
        const SizedBox(height: 24),
        const Text('Type Matchups (Defensive)', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
        const SizedBox(height: 12),
        MatchupGrid(types: types),
      ],
    );
  }

  Widget _buildEvolutionTab(List<EvolutionEdgeDto> edges, BuildContext context) {
    if (edges.isEmpty) return const Center(child: Text('Does not evolve'));
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: edges.length,
      itemBuilder: (ctx, i) {
        final e = edges[i];
        return Card(
          elevation: 2,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          margin: const EdgeInsets.only(bottom: 12),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(onTap: e.fromPokemonId == null ? null : () => _navTo(context, e.fromPokemonId!), child: _evoTile(e.fromName, e.fromPokemonId)),
                Expanded(child: Column(children: [
                  const Icon(Icons.arrow_forward, color: Colors.grey),
                  Wrap(alignment: WrapAlignment.center, spacing: 4, runSpacing: 4, children: _buildDetailedConditions(e.method)),
                ])),
                InkWell(onTap: e.toPokemonId == null ? null : () => _navTo(context, e.toPokemonId!), child: _evoTile(e.toName, e.toPokemonId)),
              ],
            ),
          ),
        );
      },
    );
  }

  List<Widget> _buildDetailedConditions(Map<String, dynamic> m) {
    final chips = <Widget>[];
    if (m['min_level'] != null) chips.add(_condChip('Lvl ${m['min_level']}'));
    if ((m['item'] as String).isNotEmpty) chips.add(_condChip('Use ${_pretty(m['item'])}'));
    if ((m['trigger'] as String) == 'trade') {
      String text = 'Trade';
      if ((m['held_item'] as String).isNotEmpty) text += ' w/ ${_pretty(m['held_item'])}';
      chips.add(_condChip(text));
    }
    if (m['min_happiness'] != null) chips.add(_condChip('Happiness'));
    if (m['min_beauty'] != null) chips.add(_condChip('Beauty'));
    if (m['min_affection'] != null) chips.add(_condChip('Affection'));
    if ((m['time_of_day'] as String).isNotEmpty) chips.add(_condChip(m['time_of_day'] == 'night' ? 'Night ☾' : 'Day ☀'));
    if ((m['move'] as String).isNotEmpty) chips.add(_condChip('Knows ${_pretty(m['move'])}'));
    if ((m['location'] as String).isNotEmpty) chips.add(_condChip('At ${_pretty(m['location'])}'));
    if (m['needs_rain'] == true) chips.add(_condChip('Rain'));
    if (m['gender_id'] != null) chips.add(_condChip(m['gender_id'] == 1 ? 'Female ♀' : 'Male ♂'));
    if (m['upside_down'] == true) chips.add(_condChip('Upside Down'));
    return chips;
  }

  Widget _condChip(String label) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
    decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(4)),
    child: Text(label, style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.black87), textAlign: TextAlign.center),
  );

  Widget _evoTile(String name, int? id) => Column(children: [
    if (id != null) Image.network(_img(id), width: 60, height: 60),
    Text(_pretty(name), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
  ]);

  Widget _buildMovesTab(List<MoveDto> lvl, List<MoveDto> tm, List<MoveDto> tutor, List<MoveDto> egg, Function(String) tr) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        if (lvl.isNotEmpty) _moveHeader('Level Up'),
        ...lvl.map((m) => _moveTile(m, showLvl: true)),
        if (tm.isNotEmpty) _moveHeader('TM / HM'),
        ...tm.map((m) => _moveTile(m)),
        if (tutor.isNotEmpty) _moveHeader('Tutor'),
        ...tutor.map((m) => _moveTile(m)),
        if (egg.isNotEmpty) _moveHeader('Egg Moves'),
        ...egg.map((m) => _moveTile(m)),
      ],
    );
  }

  Widget _moveHeader(String title) => Padding(padding: const EdgeInsets.fromLTRB(8, 24, 8, 8), child: Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)));

  Widget _moveTile(MoveDto m, {bool showLvl = false}) {
    final typeColor = typeGradients[m.type]?.colors.first ?? Colors.grey;
    String assetPath = 'assets/images/Status.png';
    if (m.damageClass.toLowerCase() == 'physical') assetPath = 'assets/images/Physical.png';
    else if (m.damageClass.toLowerCase() == 'special') assetPath = 'assets/images/Special.png';
    else if (m.damageClass.toLowerCase() == 'status') assetPath = 'assets/images/Status.png';

    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(border: Border.all(color: typeColor.withOpacity(0.3)), borderRadius: BorderRadius.circular(12)),
      child: Theme(
        data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          collapsedBackgroundColor: typeColor.withOpacity(0.05),
          backgroundColor: Colors.white,
          childrenPadding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          title: Row(children: [
            TypeBadge(type: m.type, backgroundColor: typeColor, small: true),
            const SizedBox(width: 12),
            Expanded(child: Text(_pretty(m.name), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15))),
          ]),
          trailing: Row(mainAxisSize: MainAxisSize.min, children: [
            if (showLvl) Text('Lv ${m.level}', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[700])),
            const SizedBox(width: 8),
            Image.asset(assetPath, width: 24, height: 24, fit: BoxFit.contain, errorBuilder: (ctx, e, s) => const Icon(Icons.help_outline, size: 18, color: Colors.grey)),
            const SizedBox(width: 4),
            const Icon(Icons.expand_more, color: Colors.grey),
          ]),
          children: [
            const Divider(),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              _moveStat('Power', m.power?.toString() ?? '-'),
              _moveStat('Acc', m.accuracy != null ? '${m.accuracy}%' : '-'),
              _moveStat('PP', m.pp?.toString() ?? '-'),
            ]),
            const SizedBox(height: 12),
            Text(m.description.isNotEmpty ? m.description : 'No description available.', style: const TextStyle(color: Colors.black54, fontStyle: FontStyle.italic)),
          ],
        ),
      ),
    );
  }

  Widget _moveStat(String label, String val) => Column(children: [
    Text(label, style: const TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold)),
    Text(val, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
  ]);

  // --- WIDGET DEL TAB DE UBICACIONES ---
  Widget _buildLocationsTab(List<LocationGroupDto> locations, Color color, BuildContext context, Function(String) tr) {
    if (locations.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.map_outlined, size: 60, color: Colors.grey[300]),
            const SizedBox(height: 16),
            Text(tr('no_locations'), style: const TextStyle(color: Colors.grey, fontSize: 16)),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: locations.length,
      itemBuilder: (ctx, i) {
        final locGroup = locations[i];

        return Card(
          margin: const EdgeInsets.only(bottom: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          elevation: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Cabecera: Nombre Región + Botón Mapa
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.1),
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      locGroup.regionName,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(context, SlideRightPageRoute(
                            child: RegionMapScreen(
                              regionName: locGroup.regionName,
                              regionId: locGroup.regionId, // ej: kanto, johto
                            )
                        ));
                      },
                      icon: const Icon(Icons.map, size: 18),
                      label: Text(tr('view_map')),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: color,
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20), side: BorderSide(color: color)),
                      ),
                    )
                  ],
                ),
              ),
              const Divider(height: 1),
              // Lista de rutas
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: locGroup.locations.map((l) => Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.place, size: 16, color: color),
                        const SizedBox(width: 8),
                        Expanded(child: Text(l, style: const TextStyle(fontSize: 14))),
                      ],
                    ),
                  )).toList(),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  Widget _buildForms(List<FormDto> list, Color color, BuildContext context) {
    if (list.isEmpty) return const Center(child: Text('No Data'));
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
      itemCount: list.length,
      itemBuilder: (ctx, i) {
        final f = list[i];
        return InkWell(
          onTap: () => _navTo(context, f.pokemonId),
          borderRadius: BorderRadius.circular(12),
          child: Container(
            decoration: BoxDecoration(color: color.withOpacity(0.1), borderRadius: BorderRadius.circular(12)),
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Expanded(child: Image.network(f.imageUrl, fit: BoxFit.contain)),
              Padding(padding: const EdgeInsets.all(4), child: Text(_pretty(f.title), textAlign: TextAlign.center, style: const TextStyle(fontWeight: FontWeight.bold))),
            ]),
          ),
        );
      },
    );
  }

  void _navTo(BuildContext context, int id) {
    Navigator.push(context, ScaleFadePageRoute(child: PokemonDetailScreen(id: id, genContext: widget.genContext)));
  }

  String _pretty(String s) => s.isEmpty ? '' : s[0].toUpperCase() + s.substring(1);
}