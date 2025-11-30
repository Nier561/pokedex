import 'dart:io';
import 'dart:typed_data';
import 'dart:math'; // Necesario para la selección aleatoria
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:screenshot/screenshot.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/domain/entities/pokemon_detail.dart';
import 'package:pokedex/data/models/pokemon_detail_dto.dart';
import 'package:pokedex/presentation/providers/favorites_provider.dart';
import 'package:pokedex/presentation/providers/pokemon_provider.dart';
import 'package:pokedex/presentation/providers/language_provider.dart';
import 'package:pokedex/presentation/screens/region_map_screen.dart';
import 'package:pokedex/presentation/screens/card_preview_screen.dart';
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
  final Pokemon? cachedPokemon;

  const PokemonDetailScreen({
    super.key,
    required this.id,
    this.listIds,
    this.initialIndex,
    this.genContext,
    this.cachedPokemon,
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
  bool _isShiny = false;
  bool _isGeneratingCard = false;

  @override
  void initState() {
    super.initState();
    // 7 pestañas: Info, Stats, Evo, Moves, Locations, Megas, Forms
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

  // --- LÓGICA DE GENERACIÓN DE CARTAS TCG ---

  /// Prepara los datos, renderiza la carta en memoria y navega a la previsualización.
  Future<void> _previewCard(PokemonDetail p, Function(String) tr) async {
    if (_isGeneratingCard) return;
    setState(() => _isGeneratingCard = true);

    try {
      // 1. Datos para la carta
      final moves = _getRandomMovesForCard(p);
      final hp = p.stats.firstWhere((s) => s.name.toLowerCase() == 'hp', orElse: () => StatDto('hp', 50)).value;

      // 2. Construcción del Widget visual (Invisible)
      // Ajustamos el pixelRatio para asegurar nitidez en textos pequeños
      final cardWidget = _buildCardForCapture(p, moves, hp, tr);

      // 3. Captura
      final Uint8List? image = await _screenshotController.captureFromWidget(
        cardWidget,
        delay: const Duration(milliseconds: 300), // Tiempo para cargar imágenes de red
        pixelRatio: 3.0,
      );

      if (image != null && mounted) {
        // 4. Navegación
        Navigator.push(context, MaterialPageRoute(builder: (_) =>
            CardPreviewScreen(imageBytes: image, pokemonName: p.name)
        ));
      }
    } catch (e) {
      debugPrint('Error generating card: $e');
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Could not generate card')));
      }
    } finally {
      if (mounted) setState(() => _isGeneratingCard = false);
    }
  }

  /// Selecciona 2 movimientos aleatorios para la carta.
  List<MoveDto> _getRandomMovesForCard(PokemonDetail p) {
    var typeMoves = p.moves.where((m) => p.types.contains(m.type) && (m.power != null)).toList();

    if (typeMoves.length < 2) {
      typeMoves = p.moves.where((m) => m.power != null).toList();
    }
    if (typeMoves.isEmpty) typeMoves = p.moves;

    typeMoves.shuffle();
    return typeMoves.take(2).toList();
  }

  /// Construye el diseño visual de la carta TCG.
  Widget _buildCardForCapture(PokemonDetail p, List<MoveDto> moves, int hp, Function(String) tr) {
    final type = p.types.isNotEmpty ? p.types.first : 'normal';
    final gradient = typeGradients[type] ?? typeGradients['normal']!;
    final borderColor = (typeGradients[type]?.colors.first ?? Colors.grey).withOpacity(0.5);

    return MediaQuery(
      data: const MediaQueryData(),
      child: Container(
        width: 350,
        height: 500,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: gradient,
          boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 10)],
          border: Border.all(color: Colors.white.withOpacity(0.9), width: 8),
        ),
        child: Column(
          children: [
            // --- HEADER: TIPO, NOMBRE, HP ---
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TypeBadge(type: type, small: true, showText: false), // Icono de energía
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      _displayName(p.name).toUpperCase(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                          shadows: [Shadow(color: Colors.black45, offset: Offset(1,1), blurRadius: 2)]
                      ),
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                Text(
                  'HP $hp',
                  style: const TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 22,
                      color: Colors.white,
                      shadows: [Shadow(color: Colors.black45, offset: Offset(1,1), blurRadius: 2)]
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),

            // --- IMAGEN PRINCIPAL ---
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.95),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: borderColor, width: 4),
                  boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(2,2))]
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Opacity(
                    opacity: 0.05,
                    child: Icon(Icons.catching_pokemon, size: 100, color: Colors.black),
                  ),
                  Image.network(
                    _img(p.id),
                    fit: BoxFit.contain,
                    scale: 0.8,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),

            // --- LISTA DE MOVIMIENTOS ---
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  // Fondo casi opaco para garantizar lectura
                  color: Colors.white.withOpacity(0.95),
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.white.withOpacity(0.5), width: 1),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: moves.map((m) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start, // Alinear arriba si la descripción es larga
                      children: [
                        // Costo de energía
                        Padding(
                          padding: const EdgeInsets.only(top: 2.0),
                          child: TypeBadge(type: m.type, small: true, showText: false),
                        ),
                        const SizedBox(width: 10),

                        // Nombre y Descripción
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  m.name,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 16,
                                      color: Colors.black // Negro puro para contraste
                                  )
                              ),
                              const SizedBox(height: 2),
                              Text(
                                m.description, // Descripción completa sin recortes
                                style: const TextStyle(
                                    fontSize: 11,
                                    color: Colors.black87, // Gris muy oscuro
                                    height: 1.1,
                                    fontStyle: FontStyle.italic
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 8),

                        // Daño
                        Text(
                          m.power != null ? '${m.power}' : '',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black
                          ),
                        ),
                      ],
                    );
                  }).toList(),
                ),
              ),
            ),
            // Footer eliminado como solicitaste
          ],
        ),
      ),
    );
  }

  // ------------------------------------------

  String _img(int id) {
    return _isShiny
        ? 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/shiny/$id.png'
        : 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$id.png';
  }

  String _displayName(String name) {
    if (name.startsWith('zygarde-') && name.contains('-50')) return 'Zygarde';
    return name.isEmpty ? '' : '${name[0].toUpperCase()}${name.substring(1)}';
  }

  @override
  Widget build(BuildContext context) {
    final locale = ref.watch(languageProvider);
    String tr(String key) => S(locale).get(key);

    final isFav = ref.watch(favoritesProvider.select((s) => s.contains(widget.id)));

    final detailAsync = ref.watch(pokemonDetailProvider(
        PokemonDetailParams(id: widget.id, gen: widget.genContext)
    ));

    return detailAsync.when(
      loading: () {
        if (widget.cachedPokemon != null) {
          return _buildContent(
            context, 
            id: widget.cachedPokemon!.id,
            name: widget.cachedPokemon!.name,
            types: widget.cachedPokemon!.types,
            detail: null,
            tr: tr,
            isFav: isFav
          );
        }
        return const Scaffold(body: Center(child: CircularProgressIndicator()));
      },
      error: (err, stack) => const Scaffold(body: Center(child: Text('Not found'))),
      data: (p) {
        if (!_playedOnOpen) { _playedOnOpen = true; _playCry(); }
        return _buildContent(
          context,
          id: p.id,
          name: p.name,
          types: p.types,
          detail: p,
          tr: tr,
          isFav: isFav
        );
      },
    );
  }

  Widget _buildContent(BuildContext context, {
    required int id,
    required String name,
    required List<String> types,
    required PokemonDetail? detail,
    required Function(String) tr,
    required bool isFav,
  }) {
    final type = types.isNotEmpty ? types.first : 'normal';
    final gradient = typeGradients[type] ?? typeGradients['normal']!;
    final color = gradient.colors.first;

        return AnimatedDetailScreen(
          child: GestureDetector(
            onHorizontalDragEnd: _onSwipe,
            child: Scaffold(
              backgroundColor: color,
              body: Stack(
                children: [
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(gradient: gradient),
                      child: Stack(
                        children: [
                          Positioned(
                            top: -20,
                            right: -60,
                            child: Icon(
                              Icons.catching_pokemon,
                              size: 280,
                              color: Colors.white.withOpacity(0.15),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      SafeArea(
                        bottom: false,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                                    onPressed: () => Navigator.pop(context),
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                        icon: const Icon(Icons.share, color: Colors.white),
                                        onPressed: () => _sharePokemon(p),
                                      ),
                                      IconButton(
                                          icon: const Icon(Icons.volume_up, color: Colors.white),
                                          onPressed: _playCry
                                      ),
                                      IconButton(
                                        icon: Icon(isFav ? Icons.favorite : Icons.favorite_border, color: Colors.white),
                                        onPressed: () => ref.read(favoritesProvider.notifier).toggle(widget.id),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 24),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          _displayName(p.name),
                                          style: const TextStyle(
                                            fontSize: 36,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            height: 1.2,
                                          ),
                                        ),
                                        const SizedBox(height: 8),
                                        Wrap(
                                          spacing: 8,
                                          children: p.types.map((t) => TypeBadge(
                                            type: t,
                                            backgroundColor: Colors.white.withOpacity(0.25),
                                          )).toList(),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 8.0),
                                        child: Text(
                                          '#${p.id.toString().padLeft(3,'0')}',
                                          style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white70,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Colors.white.withOpacity(0.2),
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(Icons.auto_awesome, 
                                              color: _isShiny ? Colors.yellowAccent : Colors.white70, 
                                              size: 16
                                            ),
                                            const SizedBox(width: 4),
                                            Switch(
                                              value: _isShiny,
                                              onChanged: (val) => setState(() => _isShiny = val),
                                              activeColor: Colors.yellowAccent,
                                              activeTrackColor: Colors.yellowAccent.withOpacity(0.5),
                                              inactiveThumbColor: Colors.white,
                                              inactiveTrackColor: Colors.white24,
                                              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 15),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 220,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Positioned(
                              bottom: 0,
                              child: Hero(
                                tag: 'pokemon-img-${_displayName(p.name)}',
                                child: AnimatedSwitcher(
                                  duration: const Duration(milliseconds: 500),
                                  child: CachedNetworkImage(
                                    key: ValueKey(_isShiny),
                                    imageUrl: _img(p.id),
                                    height: 200,
                                    fit: BoxFit.contain,
                                    placeholder: (context, url) => const SizedBox(
                                      height: 200,
                                      width: 200,
                                      child: Center(child: CircularProgressIndicator(strokeWidth: 2)),
                                    ),
                                    errorWidget: (context, url, error) => const Icon(Icons.error, color: Colors.red),
                                    fadeInDuration: const Duration(milliseconds: 300),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                          ),
                          child: Column(
                            children: [
                              const SizedBox(height: 16),
                              TabBar(
                                controller: _tabController,
                                labelColor: Colors.black87,
                                unselectedLabelColor: Colors.grey,
                                indicatorColor: color,
                                indicatorSize: TabBarIndicatorSize.label,
                                indicatorWeight: 3,
                                labelStyle: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                                isScrollable: true,
                                tabs: [
                                  Tab(text: tr('about')),
                                  Tab(text: tr('stats')),
                                  Tab(text: tr('evolutions')),
                                  Tab(text: tr('moves')),
                                  Tab(text: tr('locations')),
                                  Tab(text: tr('megas')),
                                  Tab(text: tr('forms')),
                                ],
                              ),
                              const Divider(height: 1),
                              Expanded(
                                child: TabBarView(
                                  controller: _tabController,
                                  children: [
                                    _buildAbout(p, tr, color),
                                    _buildStats(p.stats, p.types, tr, color),
                                    _buildEvolutionTab(p.evolutionChain, context),
                                    _buildMovesTab(movesLvl, movesTm, movesTutor, movesEgg, tr),
                                    _buildLocationsTab(p.locations, color, context, tr),
                                    _buildForms(formsMega, color, context),
                                    _buildForms(formsAlt, color, context),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
      // Try to find cached pokemon for next ID
      Pokemon? nextCached;
      final listState = ref.read(pokemonListProvider);
      // Check in main list
      try {
        nextCached = listState.pokemons.firstWhere((p) => p.id == nextId);
      } catch (_) {
        // Check in allPokemonProvider if available
        final allPokes = ref.read(allPokemonProvider).valueOrNull;
        if (allPokes != null) {
          try {
            nextCached = allPokes.firstWhere((p) => p.id == nextId);
          } catch (_) {}
        }
      }

      Navigator.of(context).pushReplacement(ScaleFadePageRoute(
          child: PokemonDetailScreen(
            id: nextId, 
            listIds: _ids, 
            initialIndex: nextIdx, 
            genContext: widget.genContext,
            cachedPokemon: nextCached,
          )
      ));
    }
  }

  Widget _buildAbout(PokemonDetail p, Function(String) tr, Color color) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: color.withOpacity(0.05),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Text(
              p.flavorText.replaceAll('\n', ' '),
              style: const TextStyle(fontSize: 16, height: 1.4, color: Colors.black87),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 24),
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _attributeCard(tr('height'), Icons.height, color, value: '${p.height / 10} m'),
                const SizedBox(width: 12),
                _attributeCard(tr('weight'), Icons.scale, color, value: '${p.weight / 10} kg'),
                const SizedBox(width: 12),
                _attributeCard(tr('gender'), Icons.transgender, color, content: _genderLayout(p.genderText)),
              ],
            ),
          ),
          const SizedBox(height: 24),
          _infoRow(tr('egg_groups'), p.eggGroups.join(', '), Icons.egg_outlined),
          _infoRow(tr('region'), p.regionName.isNotEmpty ? p.regionName : tr('unknown'), Icons.map_outlined),
          const SizedBox(height: 24),
          Text(tr('abilities') == 'abilities' ? 'Abilities' : tr('abilities'), style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 12),
          ...p.abilities.map((a) => Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade200),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(_pretty(a.name), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    if (a.isHidden) ...[
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                        decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(4)),
                        child: Text(tr('hidden'), style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
                      )
                    ]
                  ],
                ),
                const SizedBox(height: 4),
                Text(a.description, style: TextStyle(color: Colors.grey[700], fontSize: 13)),
              ],
            ),
          )),
        ],
      ),
    );
  }

  Widget _attributeCard(String label, IconData icon, Color color, {String? value, Widget? content}) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10, offset: const Offset(0, 4))
          ],
          border: Border.all(color: Colors.grey.shade100),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: color, size: 24),
            const SizedBox(height: 8),
            Text(label, style: const TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.bold)),
            const SizedBox(height: 4),
            content ?? Text(value ?? '', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14), textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }

  Widget _genderLayout(String text) {
    if (text.toLowerCase().contains('genderless')) {
      return const Text('Genderless', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14));
    }
    final matches = RegExp(r'(\d+\.?\d*)%').allMatches(text).toList();
    if (matches.length >= 2) {
      final male = matches[0].group(1);
      final female = matches[1].group(1);
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.male, size: 16, color: Colors.blue),
              const SizedBox(width: 4),
              Text('$male%', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.female, size: 16, color: Colors.pink),
              const SizedBox(width: 4),
              Text('$female%', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
            ],
          ),
        ],
      );
    }
    return Text(text, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12), textAlign: TextAlign.center);
  }

  Widget _infoRow(String label, String value, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, size: 20, color: Colors.grey),
          const SizedBox(width: 12),
          Text(label, style: const TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
          const Spacer(),
          Text(value, style: const TextStyle(fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }

  Widget _buildStats(List<StatDto> stats, List<String> types, Function(String) tr, Color color) {
    final int total = stats.fold(0, (sum, item) => sum + item.value);
    return ListView(
      padding: const EdgeInsets.all(24),
      children: [
        Text(tr('stats'), style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 16),
        ...stats.asMap().entries.map((e) => Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Row(
            children: [
              SizedBox(width: 60, child: Text(_statName(e.value.name, tr), style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.grey))),
              SizedBox(width: 40, child: Text('${e.value.value}', style: const TextStyle(fontWeight: FontWeight.bold))),
              Expanded(
                child: Stack(
                  children: [
                    Container(height: 8, decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(4))),
                    FractionallySizedBox(
                      widthFactor: (e.value.value / 255).clamp(0.0, 1.0),
                      child: Container(
                          height: 8,
                          decoration: BoxDecoration(
                              color: _getStatColor(e.value.value),
                              borderRadius: BorderRadius.circular(4)
                          )
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )),
        const Divider(height: 32),
        Row(children: [
          Text(tr('total') == 'total' ? 'Total' : tr('total'), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          const Spacer(),
          Text('$total', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        ]),
        const SizedBox(height: 32),
        const Text('Type Matchups', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        const SizedBox(height: 16),
        MatchupGrid(types: types),
      ],
    );
  }

  String _statName(String name, Function(String) tr) {
    switch (name) {
      case 'hp': return 'HP';
      case 'attack': return 'ATK';
      case 'defense': return 'DEF';
      case 'special-attack': return 'SATK';
      case 'special-defense': return 'SDEF';
      case 'speed': return 'SPD';
      default: return name.toUpperCase();
    }
  }

  Color _getStatColor(int value) {
    if (value < 50) return Colors.red;
    if (value < 100) return Colors.yellow;
    if (value <= 150) return Colors.green;
    return Colors.cyan;
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
        if (lvl.isNotEmpty) _moveHeader(tr('level_up') == 'level_up' ? 'Level Up' : tr('level_up')),
        ...lvl.map((m) => _moveTile(m, tr, showLvl: true)),
        if (tm.isNotEmpty) _moveHeader('TM / HM'),
        ...tm.map((m) => _moveTile(m, tr)),
        if (tutor.isNotEmpty) _moveHeader('Tutor'),
        ...tutor.map((m) => _moveTile(m, tr)),
        if (egg.isNotEmpty) _moveHeader('Egg Moves'),
        ...egg.map((m) => _moveTile(m, tr)),
      ],
    );
  }

  Widget _moveHeader(String title) => Padding(padding: const EdgeInsets.fromLTRB(8, 24, 8, 8), child: Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)));

  Widget _moveTile(MoveDto m, Function(String) tr, {bool showLvl = false}) {
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
              _moveStat(tr('power') == 'power' ? 'Power' : tr('power'), m.power?.toString() ?? '-'),
              _moveStat(tr('acc') == 'acc' ? 'Acc' : tr('acc'), m.accuracy != null ? '${m.accuracy}%' : '-'),
              _moveStat(tr('pp') == 'pp' ? 'PP' : tr('pp'), m.pp?.toString() ?? '-'),
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

  Widget _buildLocationsTab(List<LocationGroupDto> locations, Color color, BuildContext context, Function(String) tr) {
    if (locations.isEmpty) {
      bool isNewGen = widget.id > 809;
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(isNewGen ? Icons.construction : Icons.map_outlined, size: 60, color: Colors.grey[300]),
              const SizedBox(height: 16),
              Text(
                isNewGen ? 'Location data not yet available.' : tr('no_locations'),
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ],
          ),
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
                              regionId: locGroup.regionId,
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