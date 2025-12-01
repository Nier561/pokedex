/// Archivo: pokemon_remote_data_source.dart
///
/// Descripción:
/// Capa de acceso a datos remotos que interactúa directamente con la PokeAPI a través de GraphQL.
/// Es responsable de realizar las peticiones de red y transformar las respuestas crudas en DTOs.
///
/// Funcionalidades Principales:
/// - **Consultas GraphQL**: Ejecuta queries definidas en archivos `.graphql` (compilados a Dart).
/// - **Manejo de Listas**: Obtiene listas paginadas de Pokémon con soporte para búsqueda (`fetchPokemonList`).
/// - **Manejo de Detalles**: Descarga información completa de un Pokémon específico (`fetchPokemonDetail`),
///   incluyendo estadísticas, tipos y habilidades.
/// - **Manejo de Errores**: Captura y propaga excepciones de red o de GraphQL.
///
/// Dependencias:
/// - `graphql_flutter`: Cliente para ejecutar las queries.
/// - `PokemonListDto` / `PokemonDetailDto`: Modelos para mapear la respuesta JSON.
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:pokedex/graphql/PokemonList.graphql.dart';
import 'package:pokedex/graphql/PokemonDetail.graphql.dart';
import 'package:pokedex/data/models/pokemon_list_dto.dart';
import 'package:pokedex/data/models/pokemon_detail_dto.dart';

/// DataSource Remoto: Se encarga de hacer las llamadas GraphQL puras.
class PokemonRemoteDataSource {
  final GraphQLClient _client;

  PokemonRemoteDataSource(this._client);

  Future<List<PokemonListDto>> fetchPokemonList({
    required int limit,
    required int offset,
    required String search,
  }) async {
    final res = await _client.query(
      QueryOptions(
        document: documentNodeQueryPokemonList,
        variables: {'limit': limit, 'offset': offset, 'search': search},
        fetchPolicy: FetchPolicy.networkOnly,
      ),
    );

    if (res.hasException) throw res.exception!;

    final rawList = (res.data?['pokemon_v2_pokemon'] as List?) ?? [];
    return rawList.map((e) => PokemonListDto.fromMap(e)).toList();
  }

  Future<PokemonDetailDto> fetchPokemonDetail({
    required int id,
    int? targetGen,
    required int langId,
  }) async {
    final res = await _client.query(
      QueryOptions(
        document: documentNodeQueryPokemonDetail,
        variables: {'id': id, 'langId': langId},
        fetchPolicy: FetchPolicy.cacheFirst,
      ),
    );

    if (res.hasException) throw res.exception!;
    final raw = res.data?['pokemon_v2_pokemon_by_pk'] as Map<String, dynamic>?;

    if (raw == null) throw Exception('Pokemon not found');

    return PokemonDetailDto.fromMap(raw, targetGen: targetGen);
  }
}
