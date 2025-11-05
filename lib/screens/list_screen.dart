import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:pokedex/graphql/PokemonList.graphql.dart';
import 'package:pokedex/graphql/PokemonDetail.graphql.dart';
import 'package:pokedex/widgets/type_gradients.dart';
import 'package:pokedex/widgets/page_transitions.dart';
import 'package:pokedex/screens/detail_screen.dart';
import 'package:pokedex/widgets/animated_pokemon_card.dart';

/// Imagen oficial por ID.
String _imageById(int id) =>
    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$id.png';

class PokemonListScreen extends StatefulWidget {
  const PokemonListScreen({super.key});

  @override
  State<PokemonListScreen> createState() => _PokemonListScreenState();
}

class _PokemonListScreenState extends State<PokemonListScreen> {
  // Controlador de scroll para detectar “fin de lista”.
  final _scroll = ScrollController();

  // Tamaño de página para cada fetch: menor para respuestas más rápidas
  static const _pageSize = 32;

  // Estado local para saber si ya pedimos el primer batch.
  bool _mountedListener = false;

  // Texto de búsqueda y debounce para evitar refetch excesivo.
  String _search = '';
  final TextEditingController _searchController = TextEditingController();

  // Filtros: tipo y generación
  String? _filterType;
  int? _filterGen; // 1..9

  static const List<String> _allTypes = [
    'normal', 'fire', 'water', 'grass', 'electric', 'ice', 'fighting',
    'poison', 'ground', 'flying', 'psychic', 'bug', 'rock', 'ghost', 'dragon',
    'dark', 'steel', 'fairy'
  ];

  static const Map<int, List<int>> _genRanges = {
    1: [1, 151],
    2: [152, 251],
    3: [252, 386],
    4: [387, 493],
    5: [494, 649],
    6: [650, 721],
    7: [722, 809],
    8: [810, 898],
    9: [899, 1010],
  };

  @override
  void initState() {
    super.initState();
    // El listener se agrega en build (cuando tenemos acceso al Query), una sola vez.
  }

  @override
  void dispose() {
    _scroll.dispose();
    _searchController.dispose();
    super.dispose();
  }

  String _sqlLike(String q) {
    final t = q.trim();
    if (t.isEmpty) return '%%';
    return '%${t.toLowerCase()}%';
  }

  List _applyClientFilter(List pokes) {
    // Filtrar solo por nombre (case-insensitive, parcial)
    final q = _search.trim().toLowerCase();
    return pokes.where((e) {
      final p = e as Map<String, dynamic>;
      final name = (p['name'] as String).toLowerCase();
      // Filtro por nombre
      if (q.isNotEmpty && !name.contains(q)) return false;
      // Filtro por tipo
      if (_filterType != null) {
        final types = (p['pokemon_v2_pokemontypes'] as List)
            .map((e) => e['pokemon_v2_type']['name'] as String)
            .toList();
        if (!types.contains(_filterType)) return false;
      }
      // Filtro por generación (por rango de IDs)
      if (_filterGen != null) {
        final id = p['id'] as int;
        final r = _genRanges[_filterGen]!;
        if (id < r[0] || id > r[1]) return false;
      }
      return true;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pokédex')),
      body: Query(
        // Usa el documentNode generado por graphql_codegen para tu query de lista
        options: QueryOptions(
          document: documentNodeQueryPokemonListV2,
          // Primer batch con búsqueda actual (name ilike)
          variables: {'limit': _pageSize, 'offset': 0, 'search': '%%'},
          // Usa cache y refresca en segundo plano para evitar errores intermitentes
          fetchPolicy: FetchPolicy.cacheAndNetwork,
          errorPolicy: ErrorPolicy.ignore,
        ),
        builder: (result, {fetchMore, refetch}) {
          // Conectar el listener una única vez cuando ya hay fetchMore disponible.
          if (!_mountedListener && fetchMore != null) {
            _mountedListener = true;
            _scroll.addListener(() {
              // Adelanta el prefetch: 800px antes del final
              if (_scroll.position.pixels >
                  _scroll.position.maxScrollExtent - 800) {
                final onlyTextSearching = _search.trim().isNotEmpty;
                // Permitimos fetchMore cuando NO hay texto en búsqueda.
                if (!onlyTextSearching) {
                  _maybeFetchMore(result, fetchMore);
                }
              }
            });
          }

          // Estado de carga inicial
          if (result.isLoading && result.data == null) {
            return const Center(child: CircularProgressIndicator());
          }

          // Errores
          if (result.hasException) {
            return RefreshIndicator(
              onRefresh: () async {
                await refetch?.call();
              },
              child: ListView(
                physics: const AlwaysScrollableScrollPhysics(),
                children: const [
                  SizedBox(height: 80),
                  Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.wifi_off, size: 64, color: Colors.black26),
                        SizedBox(height: 12),
                        Text(
                          'No se pudo conectar con la PokéAPI',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 6),
                          child: Text(
                            'Desliza para reintentar',
                            style: TextStyle(fontSize: 13, color: Colors.black38),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }

          // Lista acumulada en el result actual
          final List pokes =
              (result.data?['pokemon_v2_pokemon'] as List?) ?? const [];
          final List filtered = _applyClientFilter(pokes);
          final List<int> filteredIds = filtered
              .map<int>((e) => (e as Map<String, dynamic>)['id'] as int)
              .toList();
          final bool shouldShowLoader =
              _search.trim().isEmpty && pokes.length % _pageSize == 0;

          // UI: barra de búsqueda por nombre + grilla
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 12, 12, 6),
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Buscar por nombre',
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: _search.isNotEmpty
                        ? IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: () {
                              setState(() {
                                _search = '';
                                _searchController.clear();
                              });
                            },
                          )
                        : null,
                    filled: true,
                    fillColor: Colors.white,
                    hintStyle: const TextStyle(color: Colors.black54),
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(color: Colors.transparent),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide:
                          const BorderSide(color: Color(0xFF8B7ED8), width: 1),
                    ),
                  ),
                  style: const TextStyle(color: Colors.black87),
                  cursorColor: const Color(0xFF8B7ED8),
                  textInputAction: TextInputAction.search,
                  keyboardType: TextInputType.text,
                  onChanged: (value) {
                    // Actualiza la lista al instante y permite escribir letra por letra
                    setState(() => _search = value);
                  },
                ),
              ),
              Expanded(
                child: RefreshIndicator(
                  onRefresh: () async {
                    await refetch?.call();
                  },
                  child: filtered.isEmpty
                      ? ListView(
                          physics: const AlwaysScrollableScrollPhysics(),
                          children: [
                            const SizedBox(height: 80),
                            Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(Icons.search_off,
                                      size: 64, color: Colors.black26),
                                  const SizedBox(height: 12),
                                  Text(
                                    _search.trim().isEmpty
                                        ? 'No hay Pokémon disponibles'
                                        : 'El Pokémon no existe',
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  if (_search.trim().isNotEmpty)
                                    const Padding(
                                      padding: EdgeInsets.only(top: 6),
                                      child: Text(
                                        'Prueba con otro nombre',
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black38,
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ],
                        )
                      : GridView.builder(
                          controller: _scroll,
                          padding: const EdgeInsets.all(12),
                          cacheExtent: 800,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1.30,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 12,
                          ),
                          itemCount: filtered.length + (shouldShowLoader ? 1 : 0),
                          itemBuilder: (context, index) {
                            if (index >= filtered.length) {
                              if (shouldShowLoader) {
                                _maybeFetchMore(result, fetchMore);
                                return const Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(16),
                                    child: CircularProgressIndicator(),
                                  ),
                                );
                              } else {
                                return const SizedBox.shrink();
                              }
                            }

                            final p = filtered[index] as Map<String, dynamic>;
                            final id = p['id'] as int;
                            final name = p['name'] as String;
                            final types = (p['pokemon_v2_pokemontypes'] as List)
                                .map((e) =>
                                    e['pokemon_v2_type']['name'] as String)
                                .toList();

                            final primaryType =
                                types.isNotEmpty ? types.first : 'normal';

                            return InteractivePokemonCard(
                              onTap: () {
                                final client =
                                    GraphQLProvider.of(context).value;
                                client.query(
                                  QueryOptions(
                                    document: documentNodeQueryPokemonDetailV3,
                                    variables: {'id': id},
                                    fetchPolicy: FetchPolicy.cacheFirst,
                                  ),
                                );
                                Navigator.of(context)
                                    .pushWithScaleFadeTransition(
                                  PokemonDetailScreen(
                                    id: id,
                                    listIds: filteredIds,
                                    initialIndex: index,
                                  ),
                                );
                              },
                              child: AnimatedPokemonCard(
                                index: index,
                                name:
                                    name[0].toUpperCase() + name.substring(1),
                                types: types,
                                imageUrl: _imageById(id),
                                background: typeGradients[primaryType] ??
                                    typeGradients['normal']!,
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
      floatingActionButton: FloatingActionButton(
        onPressed: _openFilterSheet,
        backgroundColor: const Color(0xFF8B7ED8), // Color morado claro
        elevation: 8,
        shape: const CircleBorder(),
        child: const Icon(
          Icons.tune,
          color: Colors.white,
          size: 24,
        ),
      ),
    );
  }

  void _openFilterSheet() {
    String? tempType = _filterType;
    int? tempGen = _filterGen;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (ctx) {
        return SafeArea(
          child: FractionallySizedBox(
            heightFactor: 0.85,
            child: StatefulBuilder(
              builder: (ctx, setModal) {
                return SingleChildScrollView(
                  padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Filtros',
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 12),
                      const Text('Tipo'),
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: _allTypes.map((t) {
                          final selected = tempType == t;
                          return ChoiceChip(
                            label: Text(t[0].toUpperCase() + t.substring(1)),
                            selected: selected,
                            onSelected: (s) {
                              setModal(() {
                                tempType = s ? t : null;
                              });
                            },
                          );
                        }).toList(),
                      ),
                      const SizedBox(height: 16),
                      const Text('Generación'),
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 8,
                        runSpacing: 8,
                        children: List.generate(9, (i) {
                          final g = i + 1;
                          return ChoiceChip(
                            label: Text('Gen $g'),
                            selected: tempGen == g,
                            onSelected: (s) {
                              setModal(() {
                                tempGen = s ? g : null;
                              });
                            },
                          );
                        }),
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                _filterType = null;
                                _filterGen = null;
                              });
                              Navigator.pop(ctx);
                            },
                            child: const Text('Limpiar'),
                          ),
                          const SizedBox(width: 8),
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _filterType = tempType;
                                _filterGen = tempGen;
                              });
                              Navigator.pop(ctx);
                            },
                            child: const Text('Aplicar'),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }

  /// Dispara `fetchMore` si no está cargando y si aún hay registros en el backend.
  void _maybeFetchMore(QueryResult result, FetchMore? fetchMore) {
    if (fetchMore == null) return;

    // Si ya está en isLoading de un fetchMore previo, no dispares otro.
    if (result.isLoading) return;

    final current = (result.data?['pokemon_v2_pokemon'] as List?) ?? const [];
    final nextOffset = current.length; // usamos la cantidad actual como offset

    fetchMore(
      FetchMoreOptions(
        // las variables nuevas para la siguiente página
        variables: {
          'offset': nextOffset,
          'limit': _pageSize,
          'search': '%%',
        },
        // cómo “apendar” los nuevos resultados al result viejo
        updateQuery: (prev, fetched) {
          final prevList = (prev?['pokemon_v2_pokemon'] as List?) ?? const [];
          final newList = (fetched?['pokemon_v2_pokemon'] as List?) ?? const [];

          // Si el backend no trajo nada, no toques el estado (evita loop)
          if (newList.isEmpty) return prev;

          // Clona prev y concatena
          final merged = {
            ...prev!,
            'pokemon_v2_pokemon': [...prevList, ...newList],
          };
          return merged;
        },
      ),
    );
  }
}
