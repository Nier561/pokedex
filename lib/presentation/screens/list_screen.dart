import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/presentation/providers/pokemon_provider.dart';
import 'package:pokedex/presentation/providers/filter_provider.dart';
import 'package:pokedex/presentation/providers/favorites_provider.dart';
import 'package:pokedex/presentation/providers/language_provider.dart';
import 'package:pokedex/presentation/screens/detail_screen.dart';
import 'package:pokedex/presentation/widgets/type_gradients.dart';
import 'package:pokedex/presentation/widgets/page_transitions.dart';
import 'package:pokedex/presentation/widgets/animated_pokemon_card.dart';
import 'package:pokedex/presentation/widgets/error_view.dart'; // Asegúrate de tener este widget creado

class PokemonListScreen extends ConsumerStatefulWidget {
  final int? initialGeneration;
  const PokemonListScreen({super.key, this.initialGeneration});

  @override
  ConsumerState<PokemonListScreen> createState() => _PokemonListScreenState();
}

class _PokemonListScreenState extends ConsumerState<PokemonListScreen> {
  final _scroll = ScrollController();
  final TextEditingController _searchController = TextEditingController();

  // Estado local para filtrado rápido de favoritos
  bool _showOnlyFavorites = false;

  // Rangos de IDs para filtrado acumulativo por generación (National Dex)
  static const Map<int, int> _genMaxIds = {
    1: 151,  2: 251,  3: 386,  4: 493,
    5: 649,  6: 721,  7: 809,  8: 905,  9: 1025,
  };

  static const Set<String> _hyphenBaseWhitelist = {
    'ho-oh', 'porygon-z', 'type-null', 'jangmo-o', 'hakamo-o', 'kommo-o',
    'tapu-koko', 'tapu-lele', 'tapu-bulu', 'tapu-fini', 'mr-mime', 'mr-rime',
    'mime-jr', 'nidoran-f', 'nidoran-m',
  };

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(pokemonListProvider.notifier).loadMore();
    });

    _scroll.addListener(() {
      if (_scroll.position.pixels > _scroll.position.maxScrollExtent - 800) {
        final filters = ref.read(filterProvider);
        // Evitamos paginar si hay filtros activos o favoritos, ya que usamos la lista en memoria
        final isFiltering = filters.searchQuery.isNotEmpty ||
            filters.selectedTypes.isNotEmpty ||
            filters.selectedGen != null ||
            widget.initialGeneration != null ||
            filters.sortMode != SortMode.id ||
            _showOnlyFavorites;

        if (!isFiltering) {
          ref.read(pokemonListProvider.notifier).loadMore();
        }
      }
    });
  }

  @override
  void dispose() {
    _scroll.dispose();
    _searchController.dispose();
    super.dispose();
  }

  List<Pokemon> _processList(List<Pokemon> pokes, FilterState filters, Set<int> favorites) {
    final q = filters.searchQuery.trim().toLowerCase();
    final int? effectiveGen = widget.initialGeneration ?? filters.selectedGen;

    final filtered = pokes.where((p) {
      // 1. Filtro Generación (Acumulativo)
      if (effectiveGen != null) {
        final maxId = _genMaxIds[effectiveGen];
        if (maxId != null && p.id > maxId) return false;
      }

      // 2. Filtro Nombres / Variantes
      final name = p.name.toLowerCase();
      if (name.startsWith('zygarde-')) {
        if (name.contains('power-construct')) return false;
        if (!name.contains('-50')) return false;
      } else if (name.contains('-') && !_hyphenBaseWhitelist.contains(name)) {
        return false;
      }

      // 3. Filtro Texto
      if (q.isNotEmpty && !name.contains(q) && p.id.toString() != q) return false;

      // 4. Filtro Favoritos
      if (_showOnlyFavorites && !favorites.contains(p.id)) return false;

      // 5. Filtro Tipos
      if (filters.selectedTypes.isNotEmpty) {
        if (!filters.selectedTypes.every((t) => p.types.contains(t))) return false;
      }

      return true;
    }).toList();

    filtered.sort((a, b) {
      int cmp = 0;
      switch (filters.sortMode) {
        case SortMode.name: cmp = a.name.compareTo(b.name); break;
        case SortMode.power: cmp = a.baseStatTotal.compareTo(b.baseStatTotal); break;
        case SortMode.id: default: cmp = a.id.compareTo(b.id); break;
      }
      return filters.isAscending ? cmp : -cmp;
    });

    return filtered;
  }

  @override
  Widget build(BuildContext context) {
    final locale = ref.watch(languageProvider);
    String tr(String key) => S(locale).get(key);

    String title = tr('app_title');
    if (widget.initialGeneration != null) title = '${tr('generation')} ${widget.initialGeneration}';

    final listState = ref.watch(pokemonListProvider);
    final allPokesAsync = ref.watch(allPokemonProvider);
    final filters = ref.watch(filterProvider);
    final favorites = ref.watch(favoritesProvider);

    List<Pokemon> sourceList;
    final isFiltering = filters.searchQuery.isNotEmpty ||
        filters.selectedTypes.isNotEmpty ||
        filters.selectedGen != null ||
        widget.initialGeneration != null ||
        filters.sortMode != SortMode.id ||
        !filters.isAscending ||
        _showOnlyFavorites;

    if (isFiltering) {
      sourceList = allPokesAsync.value ?? listState.pokemons;
    } else {
      sourceList = listState.pokemons;
    }

    final processedList = _processList(sourceList, filters, favorites);
    final processedIds = processedList.map((e) => e.id).toList();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: -60, right: -60,
            child: Icon(Icons.catching_pokemon, size: 300, color: Colors.grey.withOpacity(0.05)),
          ),
          SafeArea(
            child: Column(
              children: [
                // Header
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.black87),
                        onPressed: () => Navigator.pop(context),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          title,
                          style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black87, letterSpacing: 0.5),
                          maxLines: 1, overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Semantics(
                        label: 'Show only favorites',
                        button: true,
                        toggled: _showOnlyFavorites,
                        child: IconButton(
                          icon: Icon(_showOnlyFavorites ? Icons.favorite : Icons.favorite_border),
                          color: _showOnlyFavorites ? Colors.red : Colors.black87,
                          onPressed: () => setState(() => _showOnlyFavorites = !_showOnlyFavorites),
                        ),
                      ),
                      Semantics(
                        label: 'Filter Pokemon',
                        button: true,
                        child: IconButton(
                          icon: const Icon(Icons.tune, color: Colors.black87),
                          onPressed: () => _openFilterSheet(context, tr),
                        ),
                      ),
                    ],
                  ),
                ),
                _buildSearchBar(filters.searchQuery, tr),

                // Cuerpo Principal
                Expanded(
                  child: Builder(
                    builder: (context) {
                      // 1. Manejo de Error: Si hay error y la lista está vacía
                      if (listState.errorMessage != null && processedList.isEmpty) {
                        return ErrorView(
                          message: listState.errorMessage!,
                          onRetry: () {
                            // Invalidamos para reiniciar estados
                            ref.invalidate(pokemonListProvider);
                            ref.invalidate(allPokemonProvider);
                            ref.read(pokemonListProvider.notifier).loadMore();
                          },
                        );
                      }

                      // 2. Loading Inicial
                      if (listState.isLoading && processedList.isEmpty) {
                        return const Center(child: CircularProgressIndicator());
                      }

                      // 3. Estado Vacio (Sin resultados)
                      if (processedList.isEmpty) {
                        return ListView(children: [
                          const SizedBox(height: 80),
                          Center(child: Text(tr('no_pokemon_found') == 'no_pokemon_found' ? 'No Pokémon found' : tr('no_pokemon_found'), style: const TextStyle(color: Colors.grey, fontSize: 16))),
                        ]);
                      }

                      // 4. Lista de Resultados
                      return RefreshIndicator(
                        onRefresh: () async {
                          ref.invalidate(pokemonListProvider);
                          ref.invalidate(allPokemonProvider);
                          await ref.read(pokemonListProvider.notifier).loadMore();
                        },
                        child: GridView.builder(
                          controller: _scroll,
                          padding: const EdgeInsets.all(12),
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, childAspectRatio: 1.30,
                              mainAxisSpacing: 10, crossAxisSpacing: 12
                          ),
                          itemCount: processedList.length,
                          itemBuilder: (context, index) {
                            final p = processedList[index];
                            final primaryType = p.types.isNotEmpty ? p.types.first : 'normal';
                            final isFav = favorites.contains(p.id);

                            return Semantics(
                              label: 'Pokemon ${p.name}, type $primaryType',
                              button: true,
                              child: InteractivePokemonCard(
                                onTap: () {
                                  Navigator.of(context).pushWithScaleFadeTransition(
                                    PokemonDetailScreen(
                                      id: p.id,
                                      listIds: processedIds,
                                      initialIndex: index,
                                      genContext: widget.initialGeneration ?? filters.selectedGen,
                                      cachedPokemon: p,
                                    ),
                                  );
                                },
                                child: Stack(
                                  children: [
                                    AnimatedPokemonCard(
                                      index: index, name: p.displayName, types: p.types,
                                      imageUrl: p.imageUrl, background: typeGradients[primaryType] ?? typeGradients['normal']!,
                                    ),
                                    if (isFav)
                                      const Positioned(
                                        top: 8, right: 8,
                                        child: Icon(Icons.favorite, color: Colors.white, size: 18),
                                      ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar(String currentQuery, Function(String) tr) {
    if (_searchController.text != currentQuery) {
      _searchController.text = currentQuery;
      _searchController.selection = TextSelection.fromPosition(TextPosition(offset: _searchController.text.length));
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Container(
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(24), boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10, offset: const Offset(0, 4))]),
        child: TextField(
          controller: _searchController,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          decoration: InputDecoration(
            hintText: tr('search_hint'),
            hintStyle: TextStyle(color: Colors.grey.shade400),
            prefixIcon: Icon(Icons.search, color: Colors.grey.shade400),
            suffixIcon: currentQuery.isNotEmpty ? IconButton(icon: const Icon(Icons.clear, size: 20), color: Colors.grey.shade400, onPressed: () => ref.read(filterProvider.notifier).setSearch('')) : null,
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
          ),
          onChanged: (v) => ref.read(filterProvider.notifier).setSearch(v),
        ),
      ),
    );
  }

  void _openFilterSheet(BuildContext context, Function(String) tr) {
    final currentFilters = ref.read(filterProvider);
    SortMode tempSort = currentFilters.sortMode;
    bool tempAsc = currentFilters.isAscending;
    List<String> tempTypes = List.from(currentFilters.selectedTypes);
    int? tempGen = currentFilters.selectedGen;
    const List<String> allTypes = ['normal', 'fire', 'water', 'grass', 'electric', 'ice', 'fighting', 'poison', 'ground', 'flying', 'psychic', 'bug', 'rock', 'ghost', 'dragon', 'dark', 'steel', 'fairy'];

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (ctx) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.85,
          decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
          child: StatefulBuilder(builder: (ctx, setModal) {
            return Column(
              children: [
                Center(child: Container(margin: const EdgeInsets.symmetric(vertical: 12), width: 40, height: 4, decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(2)))),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    Text(tr('filters'), style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                    TextButton(
                      onPressed: () { ref.read(filterProvider.notifier).resetFilters(); Navigator.pop(ctx); },
                      child: Text(tr('reset'), style: TextStyle(color: Colors.red.shade400, fontSize: 16)),
                    ),
                  ]),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      const SizedBox(height: 24),
                      Text(tr('sort_by'), style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey)),
                      const SizedBox(height: 16),
                      Row(children: [
                        Expanded(child: Container(
                          height: 48,
                          decoration: BoxDecoration(color: Colors.grey.shade100, borderRadius: BorderRadius.circular(12)),
                          child: Row(children: [
                            for (var mode in [SortMode.id, SortMode.name, SortMode.power])
                              Expanded(child: GestureDetector(
                                onTap: () => setModal(() => tempSort = mode),
                                child: Container(
                                  decoration: BoxDecoration(color: tempSort == mode ? Colors.white : Colors.transparent, borderRadius: BorderRadius.circular(10), boxShadow: tempSort == mode ? [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 4, offset: const Offset(0, 2))] : null),
                                  margin: const EdgeInsets.all(4),
                                  alignment: Alignment.center,
                                  child: Text(mode == SortMode.id ? tr('sort_id') : (mode == SortMode.name ? tr('sort_name') : tr('sort_power')), style: TextStyle(fontWeight: tempSort == mode ? FontWeight.bold : FontWeight.normal, color: tempSort == mode ? Colors.black87 : Colors.grey.shade600, fontSize: 13)),
                                ),
                              )),
                          ]),
                        )),
                        const SizedBox(width: 12),
                        InkWell(
                          onTap: () => setModal(() => tempAsc = !tempAsc),
                          borderRadius: BorderRadius.circular(12),
                          child: Container(width: 48, height: 48, decoration: BoxDecoration(color: Colors.grey.shade100, borderRadius: BorderRadius.circular(12)), child: Icon(tempAsc ? Icons.arrow_upward : Icons.arrow_downward, color: Colors.black87)),
                        ),
                      ]),
                      const SizedBox(height: 32),
                      Text(tr('types'), style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey)),
                      const SizedBox(height: 16),
                      Wrap(spacing: 10, runSpacing: 10, children: allTypes.map((t) {
                        final isSel = tempTypes.contains(t);
                        final typeColor = typeGradients[t]?.colors.first ?? Colors.grey;
                        return GestureDetector(
                          onTap: () { setModal(() { if (isSel) tempTypes.remove(t); else if (tempTypes.length < 2) tempTypes.add(t); }); },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 200),
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            decoration: BoxDecoration(color: isSel ? typeColor : Colors.white, borderRadius: BorderRadius.circular(20), border: Border.all(color: isSel ? typeColor : Colors.grey.shade300, width: 1.5), boxShadow: isSel ? [BoxShadow(color: typeColor.withOpacity(0.4), blurRadius: 8, offset: const Offset(0, 4))] : null),
                            child: Text(t[0].toUpperCase() + t.substring(1), style: TextStyle(color: isSel ? Colors.white : Colors.grey.shade600, fontWeight: FontWeight.w600)),
                          ),
                        );
                      }).toList()),
                      const SizedBox(height: 32),
                      if (widget.initialGeneration == null) ...[
                        Text(tr('generation'), style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey)),
                        const SizedBox(height: 16),
                        SizedBox(height: 50, child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          separatorBuilder: (_, __) => const SizedBox(width: 12),
                          itemBuilder: (context, index) {
                            final gen = index == 0 ? null : index;
                            final isSel = tempGen == gen;
                            return GestureDetector(
                              onTap: () => setModal(() => tempGen = gen),
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 200),
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(color: isSel ? Colors.deepPurpleAccent : Colors.grey.shade100, borderRadius: BorderRadius.circular(25)),
                                child: Text(gen == null ? 'All' : '${tr('generation')} $gen', style: TextStyle(color: isSel ? Colors.white : Colors.grey.shade600, fontWeight: FontWeight.w600)),
                              ),
                            );
                          },
                        )),
                      ],
                      const SizedBox(height: 40),
                      SizedBox(
                        width: double.infinity, height: 56,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.deepPurpleAccent, elevation: 0, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
                          onPressed: () { ref.read(filterProvider.notifier).updateFilters(sortMode: tempSort, isAscending: tempAsc, selectedTypes: tempTypes, selectedGen: tempGen); Navigator.pop(ctx); },
                          child: Text(tr('apply'), style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
                        ),
                      ),
                      const SizedBox(height: 24),
                    ]),
                  ),
                ),
              ],
            );
          }),
        );
      },
    );
  }
}