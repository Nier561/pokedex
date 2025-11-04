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

  @override
  void initState() {
    super.initState();
    // El listener se agrega en build (cuando tenemos acceso al Query), una sola vez.
  }

  @override
  void dispose() {
    _scroll.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pokédex')),
      body: Query(
        // Usa el documentNode generado por graphql_codegen para tu query de lista
        options: QueryOptions(
          document: documentNodeQueryPokemonListV2,
          // Primer batch: limit=pageSize, offset=0, search="%%" (ilike “cualquier cosa”)
          variables: const {'limit': _pageSize, 'offset': 0, 'search': '%%'},
          // Cache de red (si recargas, vuelve a pedir a la API)
          fetchPolicy: FetchPolicy.networkOnly,
        ),
        builder: (result, {fetchMore, refetch}) {
          // Conectar el listener una única vez cuando ya hay fetchMore disponible.
          if (!_mountedListener && fetchMore != null) {
            _mountedListener = true;
            _scroll.addListener(() {
              // Adelanta el prefetch: 800px antes del final
              if (_scroll.position.pixels >
                  _scroll.position.maxScrollExtent - 800) {
                _maybeFetchMore(result, fetchMore);
              }
            });
          }

          // Estado de carga inicial
          if (result.isLoading && result.data == null) {
            return const Center(child: CircularProgressIndicator());
          }

          // Errores
          if (result.hasException) {
            return Center(child: Text('Error: ${result.exception}'));
          }

          // Lista acumulada en el result actual
          final List pokes =
              (result.data?['pokemon_v2_pokemon'] as List?) ?? const [];

          // Pull-to-refresh para volver a pedir desde offset=0
          return RefreshIndicator(
            onRefresh: () async {
              await refetch?.call();
            },
            child: GridView.builder(
              controller: _scroll,
              padding: const EdgeInsets.all(12),
              // Construye hijos por delante para iniciar carga de imágenes antes
              cacheExtent: 800,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // 1 columna para mayor ancho
                childAspectRatio:
                    1.30, // más largo horizontalmente, altura moderada
                mainAxisSpacing: 10,
                crossAxisSpacing: 12,
              ),
              itemCount: pokes.length + 1, // +1 para el “loader” al final
              itemBuilder: (context, index) {
                // Si llegamos al “loader”, pide más y muestra un indicador.
                if (index >= pokes.length) {
                  // Dispara un fetchMore “perezoso”; no bloquea scroll.
                  _maybeFetchMore(result, fetchMore);
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: CircularProgressIndicator(),
                    ),
                  );
                }

                final p = pokes[index] as Map<String, dynamic>;
                final id = p['id'] as int;
                final name = p['name'] as String;
                final types = (p['pokemon_v2_pokemontypes'] as List)
                    .map((e) => e['pokemon_v2_type']['name'] as String)
                    .toList();

                final primaryType = types.isNotEmpty ? types.first : 'normal';

                return InteractivePokemonCard(
                  onTap: () {
                    // Prefetch del detalle para minimizar pantalla de carga al navegar
                    final client = GraphQLProvider.of(context).value;
                    client.query(
                      QueryOptions(
                        document: documentNodeQueryPokemonDetailV3,
                        variables: {'id': id},
                        fetchPolicy: FetchPolicy.cacheFirst,
                      ),
                    );
                    Navigator.of(context).pushWithScaleFadeTransition(
                      PokemonDetailScreen(id: id),
                    );
                  },
                  child: AnimatedPokemonCard(
                    index: index,
                    name: name[0].toUpperCase() + name.substring(1),
                    types: types,
                    imageUrl: _imageById(id),
                    background:
                        typeGradients[primaryType] ?? typeGradients['normal']!,
                  ),
                );
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Implementar funcionalidad de filtro
        },
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
        variables: {'offset': nextOffset, 'limit': _pageSize, 'search': '%%'},
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
