import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:pokedex/services/favorites_store.dart'; // Store de favoritos
import 'package:pokedex/graphql/PokemonList.graphql.dart';
import 'package:pokedex/graphql/PokemonDetail.graphql.dart';
import 'package:pokedex/models/pokemon_list_dto.dart';
import 'package:pokedex/widgets/type_gradients.dart';
import 'package:pokedex/widgets/page_transitions.dart';
import 'package:pokedex/screens/detail_screen.dart';
import 'package:pokedex/widgets/animated_pokemon_card.dart';

enum SortMode { id, name }

class PokemonListScreen extends StatefulWidget {
  final int? initialGeneration;
  const PokemonListScreen({super.key, this.initialGeneration});

  @override
  State<PokemonListScreen> createState() => _PokemonListScreenState();
}

class _PokemonListScreenState extends State<PokemonListScreen> {
  final _scroll = ScrollController();
  static const _pageSize = 32;
  bool _mountedListener = false;

  String _search = '';
  final TextEditingController _searchController = TextEditingController();

  // Filtros
  List<String> _selectedTypes = [];
  int? _userSelectedGen;

  // Ordenamiento y Favoritos
  SortMode _sortMode = SortMode.id;
  bool _showOnlyFavorites = false;

  static const Map<int, int> _genMaxIds = {
    1: 151, 2: 251, 3: 386, 4: 493,
    5: 649, 6: 721, 7: 809, 8: 898, 9: 1010,
  };
  static const Map<int, List<int>> _genRanges = {
    1: [1, 151], 2: [152, 251], 3: [252, 386], 4: [387, 493],
    5: [494, 649], 6: [650, 721], 7: [722, 809], 8: [810, 898], 9: [899, 1010],
  };
  static const List<String> _allTypes = [
    'normal', 'fire', 'water', 'grass', 'electric', 'ice', 'fighting',
    'poison', 'ground', 'flying', 'psychic', 'bug', 'rock', 'ghost',
    'dragon', 'dark', 'steel', 'fairy',
  ];
  static const Set<String> _hyphenBaseWhitelist = {
    'ho-oh', 'porygon-z', 'type-null', 'jangmo-o', 'hakamo-o', 'kommo-o',
    'tapu-koko', 'tapu-lele', 'tapu-bulu', 'tapu-fini', 'mr-mime', 'mr-rime',
    'mime-jr', 'nidoran-f', 'nidoran-m',
  };

  List<PokemonListDto>? _allPokes;
  bool _prefetchingAll = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _prefetchAll());
  }

  @override
  void dispose() {
    _scroll.dispose();
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _prefetchAll() async {
    if (_prefetchingAll || !mounted) return;
    setState(() => _prefetchingAll = true);
    try {
      final client = GraphQLProvider.of(context).value;
      final res = await client.query(QueryOptions(
        document: documentNodeQueryPokemonListV2,
        variables: {'limit': 2000, 'offset': 0, 'search': '%%'},
        fetchPolicy: FetchPolicy.networkOnly,
      ));
      final rawList = (res.data?['pokemon_v2_pokemon'] as List?) ?? [];
      final dtos = rawList.map((e) => PokemonListDto.fromMap(e)).toList();
      if (mounted) setState(() => _allPokes = dtos);
    } catch (_) {} finally {
      if (mounted) setState(() => _prefetchingAll = false);
    }
  }

  List<PokemonListDto> _applyClientFilter(List<PokemonListDto> pokes) {
    final q = _search.trim().toLowerCase();
    final int? regionLimitId = widget.initialGeneration != null ? _genMaxIds[widget.initialGeneration] : null;
    final favorites = FavoritesStore().favorites;

    // 1. Filtrado
    final filtered = pokes.where((p) {
      // Región Global
      if (regionLimitId != null && p.id > regionLimitId) return false;

      // Variantes
      final name = p.name.toLowerCase();
      if (name.startsWith('zygarde-')) {
        if (!name.contains('-50')) return false;
      } else if (name.contains('-') && !_hyphenBaseWhitelist.contains(name)) {
        return false;
      }

      // Texto
      if (q.isNotEmpty && !name.contains(q)) return false;

      // Favoritos
      if (_showOnlyFavorites && !favorites.contains(p.id)) return false;

      // Tipos
      if (_selectedTypes.isNotEmpty) {
        if (!_selectedTypes.every((t) => p.types.contains(t))) return false;
      }

      // Generación Específica
      if (_userSelectedGen != null) {
        final range = _genRanges[_userSelectedGen]!;
        if (p.id < range[0] || p.id > range[1]) return false;
      }

      return true;
    }).toList();

    // 2. Ordenamiento
    filtered.sort((a, b) {
      if (_sortMode == SortMode.name) {
        return a.name.compareTo(b.name);
      }
      return a.id.compareTo(b.id); // Default ID
    });

    return filtered;
  }

  @override
  Widget build(BuildContext context) {
    String title = 'Pokédex';
    if (widget.initialGeneration != null) title = 'Gen ${widget.initialGeneration} Dex';

    // Escuchamos a FavoritesStore para repintar si cambian los favoritos
    return AnimatedBuilder(
        animation: FavoritesStore(),
        builder: (context, _) {
          return Scaffold(
            body: NestedScrollView(
              floatHeaderSlivers: true,
              headerSliverBuilder: (context, _) => [
                SliverAppBar(
                  title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
                  floating: true, snap: true, centerTitle: true,
                  leading: widget.initialGeneration != null
                      ? IconButton(icon: const Icon(Icons.arrow_back), onPressed: () => Navigator.pop(context))
                      : null,
                  actions: [
                    // Toggle Favoritos
                    IconButton(
                      icon: Icon(_showOnlyFavorites ? Icons.favorite : Icons.favorite_border),
                      color: _showOnlyFavorites ? Colors.red : null,
                      onPressed: () => setState(() => _showOnlyFavorites = !_showOnlyFavorites),
                    ),
                    // Sort Menu
                    PopupMenuButton<SortMode>(
                      icon: const Icon(Icons.sort),
                      onSelected: (s) => setState(() => _sortMode = s),
                      itemBuilder: (context) => const [
                        PopupMenuItem(value: SortMode.id, child: Text('Sort by ID (#)')),
                        PopupMenuItem(value: SortMode.name, child: Text('Sort by Name (A-Z)')),
                      ],
                    ),
                  ],
                ),
              ],
              body: Query(
                options: QueryOptions(
                  document: documentNodeQueryPokemonListV2,
                  variables: {'limit': _pageSize, 'offset': 0, 'search': '%%'},
                  fetchPolicy: FetchPolicy.cacheAndNetwork,
                ),
                builder: (result, {fetchMore, refetch}) {
                  if (!_mountedListener && fetchMore != null) {
                    _mountedListener = true;
                    _scroll.addListener(() {
                      if (_scroll.position.pixels > _scroll.position.maxScrollExtent - 800) {
                        final isFiltering = _search.isNotEmpty || _selectedTypes.isNotEmpty || _userSelectedGen != null || _showOnlyFavorites;
                        if (!isFiltering && _allPokes == null && !_prefetchingAll) {
                          _maybeFetchMore(result, fetchMore);
                        }
                      }
                    });
                  }

                  if (result.isLoading && result.data == null) return const Center(child: CircularProgressIndicator());

                  List<PokemonListDto> sourceList;
                  if (_allPokes != null) {
                    sourceList = _allPokes!;
                  } else {
                    final raw = (result.data?['pokemon_v2_pokemon'] as List?) ?? [];
                    sourceList = raw.map((e) => PokemonListDto.fromMap(e)).toList();
                  }

                  final filtered = _applyClientFilter(sourceList);
                  final filteredIds = filtered.map((e) => e.id).toList();

                  return Column(
                    children: [
                      _buildSearchBar(),
                      Expanded(
                        child: RefreshIndicator(
                          onRefresh: () async { await refetch?.call(); await _prefetchAll(); },
                          child: filtered.isEmpty
                              ? ListView(children: const [SizedBox(height: 80), Center(child: Text('No Pokémon found', style: TextStyle(color: Colors.grey, fontSize: 16)))])
                              : GridView.builder(
                            controller: _scroll,
                            padding: const EdgeInsets.all(12),
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1.30, mainAxisSpacing: 10, crossAxisSpacing: 12),
                            itemCount: filtered.length,
                            itemBuilder: (context, index) {
                              final p = filtered[index];
                              final primaryType = p.types.isNotEmpty ? p.types.first : 'normal';
                              final isFav = FavoritesStore().isFavorite(p.id);

                              return InteractivePokemonCard(
                                onTap: () {
                                  GraphQLProvider.of(context).value.query(QueryOptions(
                                    document: documentNodeQueryPokemonDetailV3,
                                    variables: {'id': p.id},
                                    fetchPolicy: FetchPolicy.cacheFirst,
                                  ));
                                  Navigator.of(context).pushWithScaleFadeTransition(
                                    PokemonDetailScreen(
                                      id: p.id,
                                      listIds: filteredIds,
                                      initialIndex: index,
                                      genContext: widget.initialGeneration,
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
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: _openFilterSheet,
              backgroundColor: const Color(0xFF8B7ED8),
              child: const Icon(Icons.tune, color: Colors.white),
            ),
          );
        }
    );
  }

  Widget _buildSearchBar() {
    // ... (Sin cambios respecto al anterior) ...
    return Padding(
      padding: const EdgeInsets.all(12),
      child: TextField(
        controller: _searchController,
        decoration: InputDecoration(
          hintText: 'Search Pokémon',
          prefixIcon: const Icon(Icons.search, color: Colors.grey),
          suffixIcon: _search.isNotEmpty ? IconButton(icon: const Icon(Icons.clear), onPressed: () => setState(() { _search = ''; _searchController.clear(); })) : null,
          filled: true, fillColor: Colors.white,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
          contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
        ),
        onChanged: (v) => setState(() => _search = v),
      ),
    );
  }

  void _openFilterSheet() {
    List<String> tempTypes = List.from(_selectedTypes);
    int? tempGen = _userSelectedGen;
    final int maxGenAvailable = widget.initialGeneration ?? 9;

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
          child: Column(
            children: [
              Center(child: Container(margin: const EdgeInsets.symmetric(vertical: 12), width: 40, height: 4, decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(2)))),
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: StatefulBuilder(builder: (ctx, setModal) {
                    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      const Text('Filters', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 24),

                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                        const Text('Types', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey)),
                        Text('${tempTypes.length}/2', style: TextStyle(color: tempTypes.length == 2 ? Colors.red : Colors.grey, fontWeight: FontWeight.bold)),
                      ]),
                      const SizedBox(height: 12),
                      Wrap(spacing: 8, runSpacing: 8, children: _allTypes.map((t) {
                        final isSel = tempTypes.contains(t);
                        final typeColor = typeGradients[t]?.colors.first ?? Colors.grey;

                        return FilterChip(
                          label: Text(t[0].toUpperCase() + t.substring(1)),
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
                          labelStyle: TextStyle(
                              color: isSel ? Colors.white : Colors.black87,
                              fontWeight: isSel ? FontWeight.bold : FontWeight.normal
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: isSel ? Colors.transparent : Colors.grey[300]!),
                          ),
                          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 0),
                        );
                      }).toList()),

                      const SizedBox(height: 24),
                      const Text('Generation', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey)),
                      const SizedBox(height: 12),
                      Wrap(spacing: 8, runSpacing: 8, children: List.generate(maxGenAvailable, (i) {
                        final g = i + 1;
                        final isSel = tempGen == g;
                        return FilterChip(
                          label: Text('Gen $g'),
                          selected: isSel,
                          onSelected: (s) => setModal(() => tempGen = s ? g : null),
                          backgroundColor: Colors.grey[100],
                          selectedColor: const Color(0xFF8B7ED8),
                          checkmarkColor: Colors.white,
                          labelStyle: TextStyle(color: isSel ? Colors.white : Colors.black87),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8), side: BorderSide.none),
                        );
                      })),
                      const SizedBox(height: 40),
                    ]);
                  }),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(24),
                child: Row(children: [
                  Expanded(child: OutlinedButton(
                    onPressed: () {
                      setState(() { _selectedTypes.clear(); _userSelectedGen = null; });
                      Navigator.pop(ctx);
                    },
                    style: OutlinedButton.styleFrom(padding: const EdgeInsets.symmetric(vertical: 16), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                    child: const Text('Reset'),
                  )),
                  const SizedBox(width: 16),
                  Expanded(child: ElevatedButton(
                    onPressed: () {
                      setState(() { _selectedTypes = tempTypes; _userSelectedGen = tempGen; });
                      Navigator.pop(ctx);
                    },
                    style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF8B7ED8), foregroundColor: Colors.white, padding: const EdgeInsets.symmetric(vertical: 16), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                    child: const Text('Apply Filters'),
                  )),
                ]),
              )
            ],
          ),
        );
      },
    );
  }

  void _maybeFetchMore(QueryResult result, FetchMore? fetchMore) {
    if (fetchMore == null || result.isLoading) return;
    final currentLen = (result.data?['pokemon_v2_pokemon'] as List?)?.length ?? 0;
    fetchMore(FetchMoreOptions(
      variables: {'offset': currentLen, 'limit': _pageSize, 'search': '%%'},
      updateQuery: (prev, fetched) {
        final p = (prev?['pokemon_v2_pokemon'] as List?) ?? [];
        final n = (fetched?['pokemon_v2_pokemon'] as List?) ?? [];
        if (n.isEmpty) return prev;
        return { ...prev!, 'pokemon_v2_pokemon': [...p, ...n] };
      },
    ));
  }
}