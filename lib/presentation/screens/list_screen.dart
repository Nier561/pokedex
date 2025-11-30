import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/presentation/providers/pokemon_provider.dart';
import 'package:pokedex/presentation/providers/favorites_provider.dart';
import 'package:pokedex/presentation/providers/filter_provider.dart';
import 'package:pokedex/presentation/providers/language_provider.dart';
import 'package:pokedex/presentation/screens/detail_screen.dart';
import 'package:pokedex/presentation/widgets/type_gradients.dart';
import 'package:pokedex/presentation/widgets/page_transitions.dart';
import 'package:pokedex/presentation/widgets/animated_pokemon_card.dart';

class PokemonListScreen extends ConsumerStatefulWidget {
  final int? initialGeneration;
  const PokemonListScreen({super.key, this.initialGeneration});

  @override
  ConsumerState<PokemonListScreen> createState() => _PokemonListScreenState();
}

class _PokemonListScreenState extends ConsumerState<PokemonListScreen> {
  final _scroll = ScrollController();
  final TextEditingController _searchController = TextEditingController();

  // Estado local para el filtro rápido de favoritos
  bool _showOnlyFavorites = false;

  static const Map<int, List<int>> _genRanges = {
    1: [1, 151], 2: [152, 251], 3: [252, 386], 4: [387, 493],
    5: [494, 649], 6: [650, 721], 7: [722, 809], 8: [810, 898], 9: [899, 1025],
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
      // Carga inicial
      ref.read(pokemonListProvider.notifier).loadMore();
    });

    _scroll.addListener(() {
      if (_scroll.position.pixels > _scroll.position.maxScrollExtent - 800) {
        final filters = ref.read(filterProvider);
        // Evitamos paginar si estamos filtrando (ya sea por search, filtros o favoritos)
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
      // 1. Filtro Generación
      if (effectiveGen != null) {
        final range = _genRanges[effectiveGen];
        if (range != null && (p.id < range[0] || p.id > range[1])) return false;
      }

      // 2. Filtro Nombres / Variantes
      final name = p.name.toLowerCase();
      if (name.startsWith('zygarde-')) {
        // Excluir Power Construct explícitamente
        if (name.contains('power-construct')) return false;
        // Excluir todo lo que no sea la forma 50%
        if (!name.contains('-50')) return false;
      } else if (name.contains('-') && !_hyphenBaseWhitelist.contains(name)) {
        return false;
      }

      // 3. Filtro Texto
      if (q.isNotEmpty && !name.contains(q) && p.id.toString() != q) return false;

      // 4. Filtro Favoritos (Aquí usamos la variable local)
      if (_showOnlyFavorites && !favorites.contains(p.id)) return false;

      // 5. Filtro Tipos
      if (filters.selectedTypes.isNotEmpty) {
        if (!filters.selectedTypes.every((t) => p.types.contains(t))) return false;
      }

      return true;
    }).toList();

    // Ordenamiento
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
    // 1. Obtener idioma actual
    final locale = ref.watch(languageProvider);
    String tr(String key) => S(locale).get(key);

    String title = tr('app_title');
    if (widget.initialGeneration != null) title = '${tr('generation')} ${widget.initialGeneration}';

    final listState = ref.watch(pokemonListProvider);
    final allPokesAsync = ref.watch(allPokemonProvider);
    final filters = ref.watch(filterProvider);
    final favorites = ref.watch(favoritesProvider);

    // Decidir fuente de datos
    List<Pokemon> sourceList;
    final isFiltering = filters.searchQuery.isNotEmpty ||
        filters.selectedTypes.isNotEmpty ||
        filters.selectedGen != null ||
        widget.initialGeneration != null ||
        filters.sortMode != SortMode.id ||
        !filters.isAscending ||
        _showOnlyFavorites;

    if (isFiltering) {
      sourceList = allPokesAsync.valueOrNull ?? listState.pokemons;
    } else {
      sourceList = listState.pokemons;
    }

    final processedList = _processList(sourceList, filters, favorites);
    final processedIds = processedList.map((e) => e.id).toList();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Fondo decorativo
          Positioned(
            top: -60,
            right: -60,
            child: Icon(
              Icons.catching_pokemon,
              size: 300,
              color: Colors.grey.withOpacity(0.05),
            ),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header personalizado
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
                          style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            letterSpacing: 0.5,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      IconButton(
                        icon: Icon(_showOnlyFavorites ? Icons.favorite : Icons.favorite_border),
                        color: _showOnlyFavorites ? Colors.red : Colors.black87,
                        onPressed: () {
                          setState(() {
                            _showOnlyFavorites = !_showOnlyFavorites;
                          });
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.tune, color: Colors.black87),
                        onPressed: () => _openFilterSheet(context, tr),
                      ),
                    ],
                  ),
                ),
                _buildSearchBar(filters.searchQuery, tr),
                Expanded(
                  child: RefreshIndicator(
                    onRefresh: () async {
                      // Invalidamos providers para forzar recarga fresca
                      ref.invalidate(pokemonListProvider);
                      ref.invalidate(allPokemonProvider);

                      await ref.read(pokemonListProvider.notifier).loadMore();
                    },
                    child: processedList.isEmpty
                        ? (listState.isLoading && filters.searchQuery.isEmpty
                        ? const Center(child: CircularProgressIndicator())
                        : ListView(children: [const SizedBox(height: 80), Center(child: Text(tr('no_pokemon_found'), style: const TextStyle(color: Colors.grey, fontSize: 16)))]))
                        : GridView.builder(
                      controller: _scroll,
                      padding: const EdgeInsets.all(12),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1.30, mainAxisSpacing: 10, crossAxisSpacing: 12),
                      itemCount: processedList.length,
                      itemBuilder: (context, index) {
                        final p = processedList[index];
                        final primaryType = p.types.isNotEmpty ? p.types.first : 'normal';
                        final isFav = favorites.contains(p.id);

                        return Semantics(
                          label: 'Pokemon ${p.name}, type ${primaryType}',
                          button: true,
                          child: InteractivePokemonCard(
                            onTap: () {
                              Navigator.of(context).pushWithScaleFadeTransition(
                                PokemonDetailScreen(
                                  id: p.id,
                                  listIds: processedIds,
                                  initialIndex: index,
                                  genContext: widget.initialGeneration ?? filters.selectedGen,
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
      padding: const EdgeInsets.all(12),
      child: Semantics(
        label: 'Search field',
        textField: true,
        child: TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: tr('search_hint'),
            prefixIcon: const Icon(Icons.search, color: Colors.grey),
            suffixIcon: currentQuery.isNotEmpty
                ? IconButton(icon: const Icon(Icons.clear), onPressed: () => ref.read(filterProvider.notifier).setSearch(''))
                : null,
            filled: true, fillColor: Colors.white,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
            contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
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
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
          ),
          child: StatefulBuilder(builder: (ctx, setModal) {
            return Column(
              children: [
                Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 12),
                    width: 40,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      tr('filters'),
                      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 24),

                        // --- SORT SECTION ---
                        Text(
                          tr('sort_by'),
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey.shade400),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 12),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<SortMode>(
                                    value: tempSort,
                                    icon: const Icon(Icons.arrow_drop_down),
                                    isExpanded: true,
                                    items: [
                                      DropdownMenuItem(value: SortMode.id, child: Text(tr('sort_id'))),
                                      DropdownMenuItem(value: SortMode.name, child: Text(tr('sort_name'))),
                                      DropdownMenuItem(value: SortMode.power, child: Text(tr('sort_power'))),
                                    ],
                                    onChanged: (v) => setModal(() => tempSort = v!),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 12),
                            InkWell(
                              onTap: () => setModal(() => tempAsc = !tempAsc),
                              borderRadius: BorderRadius.circular(12),
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey.shade400),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Icon(
                                  tempAsc ? Icons.arrow_upward : Icons.arrow_downward,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),

                        // --- TYPES SECTION ---
                        Text(
                          tr('types'),
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(height: 12),
                        Wrap(
                          spacing: 8,
                          runSpacing: 8,
                          children: allTypes.map((t) {
                            final isSel = tempTypes.contains(t);
                            final typeColor = typeGradients[t]?.colors.first ?? Colors.grey;
                            return FilterChip(
                              label: Text(
                                t[0].toUpperCase() + t.substring(1),
                                style: TextStyle(
                                  color: isSel ? Colors.white : Colors.black87,
                                  fontWeight: isSel ? FontWeight.bold : FontWeight.normal,
                                ),
                              ),
                              selected: isSel,
                              onSelected: (selected) {
                                setModal(() {
                                  if (selected) {
                                    if (tempTypes.length < 2) tempTypes.add(t);
                                  } else {
                                    tempTypes.remove(t);
                                  }
                                });
                              },
                              backgroundColor: Colors.white,
                              selectedColor: typeColor,
                              checkmarkColor: Colors.white,
                              showCheckmark: false,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                                side: BorderSide(
                                  color: isSel ? Colors.transparent : Colors.grey.shade300,
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                        const SizedBox(height: 24),

                        // --- GENERATION SECTION ---
                        if (widget.initialGeneration == null) ...[
                          Text(
                            tr('generation'),
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(height: 12),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: List.generate(9, (i) {
                                final g = i + 1;
                                final isSel = tempGen == g;
                                return Padding(
                                  padding: const EdgeInsets.only(right: 8),
                                  child: FilterChip(
                                    label: Text(
                                      'Gen $g',
                                      style: TextStyle(
                                        color: isSel ? Colors.white : Colors.black87,
                                        fontWeight: isSel ? FontWeight.bold : FontWeight.normal,
                                      ),
                                    ),
                                    selected: isSel,
                                    onSelected: (s) => setModal(() => tempGen = s ? g : null),
                                    backgroundColor: Colors.white,
                                    selectedColor: const Color(0xFF6C5CE7),
                                    checkmarkColor: Colors.white,
                                    showCheckmark: false,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24),
                                      side: BorderSide(
                                        color: isSel ? Colors.transparent : Colors.grey.shade300,
                                      ),
                                    ),
                                  ),
                                );
                              }),
                            ),
                          ),
                        ],
                        const SizedBox(height: 40),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(24),
                  child: Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {
                            ref.read(filterProvider.notifier).resetFilters();
                            Navigator.pop(ctx);
                          },
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            side: BorderSide(color: Colors.grey.shade400),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(
                            tr('reset'),
                            style: const TextStyle(
                              color: Color(0xFF6C5CE7),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            ref.read(filterProvider.notifier).updateFilters(
                              sortMode: tempSort,
                              isAscending: tempAsc,
                              selectedTypes: tempTypes,
                              selectedGen: tempGen,
                              clearGen: tempGen == null,
                            );
                            Navigator.pop(ctx);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF6C5CE7),
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(
                            tr('apply'),
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
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