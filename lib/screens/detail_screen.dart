import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:pokedex/graphql/PokemonDetail.graphql.dart';

String _imageById(int id) =>
    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$id.png';

class PokemonDetailScreen extends StatelessWidget {
  final int id;
  const PokemonDetailScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detalles')),
      body: Query(
        // Usa el documentNode generado para el detalle
        options: QueryOptions(
          document: documentNodeQueryPokemonDetailV2,
          variables: {'id': id},
          fetchPolicy: FetchPolicy.networkOnly,
        ),
        builder: (result, {fetchMore, refetch}) {
          if (result.isLoading && result.data == null) {
            return const Center(child: CircularProgressIndicator());
          }
          if (result.hasException) {
            return Center(child: Text('Error: ${result.exception}'));
          }

          final p = result.data?['pokemon_v2_pokemon_by_pk'] as Map<String, dynamic>?;
          if (p == null) return const Center(child: Text('No encontrado'));

          final name = p['name'] as String;
          final height = p['height'];
          final weight = p['weight'];
          final stats = (p['pokemon_v2_pokemonstats'] as List)
              .map((s) => {
            'name': (s['pokemon_v2_stat'] as Map)['name'] as String,
            'value': s['base_stat'] as int,
          })
              .toList();

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Image.network(_imageById(id), height: 200),
                const SizedBox(height: 12),
                Text(
                  name[0].toUpperCase() + name.substring(1),
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text('Altura: $height   •   Peso: $weight'),
                const SizedBox(height: 20),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Stats', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                ),
                const SizedBox(height: 8),
                ...stats.map((s) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text((s['name'] as String).toUpperCase()),
                      Text('${s['value']}'),
                    ],
                  ),
                )),
              ],
            ),
          );
        },
      ),
    );
  }
}
