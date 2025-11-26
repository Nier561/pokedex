import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:pokedex/graphql/PokemonList.graphql.dart';
import 'package:pokedex/graphql/PokemonDetail.graphql.dart';
import 'package:pokedex/data/models/pokemon_list_dto.dart';
import 'package:pokedex/data/models/pokemon_detail_dto.dart';

/// DataSource Remoto: Se encarga de hacer las llamadas GraphQL puras.
class PokemonRemoteDataSource {
  final GraphQLClient _client;

  PokemonRemoteDataSource(this._client);

  Future<List<PokemonListDto>> fetchPokemonList({required int limit, required int offset, required String search}) async {
    final res = await _client.query(QueryOptions(
      document: documentNodeQueryPokemonList,
      variables: {'limit': limit, 'offset': offset, 'search': search},
      fetchPolicy: FetchPolicy.networkOnly,
    ));

    if (res.hasException) throw res.exception!;

    final rawList = (res.data?['pokemon_v2_pokemon'] as List?) ?? [];
    return rawList.map((e) => PokemonListDto.fromMap(e)).toList();
  }

  Future<PokemonDetailDto> fetchPokemonDetail({required int id, int? targetGen, required int langId}) async {
    final res = await _client.query(QueryOptions(
      document: documentNodeQueryPokemonDetail,
      variables: {'id': id, 'langId': langId},
      fetchPolicy: FetchPolicy.cacheFirst,
    ));

    if (res.hasException) throw res.exception!;
    final raw = res.data?['pokemon_v2_pokemon_by_pk'] as Map<String, dynamic>?;

    if (raw == null) throw Exception('Pokemon not found');

    return PokemonDetailDto.fromMap(raw, targetGen: targetGen);
  }
}