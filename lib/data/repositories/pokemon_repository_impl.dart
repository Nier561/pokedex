import 'package:pokedex/domain/repositories/i_pokemon_repository.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/domain/entities/pokemon_detail.dart';
import 'package:pokedex/data/datasources/pokemon_remote_data_source.dart';

class PokemonRepositoryImpl implements IPokemonRepository {
  final PokemonRemoteDataSource _remoteDataSource;

  PokemonRepositoryImpl(this._remoteDataSource);

  @override
  Future<List<Pokemon>> getPokemonList({required int limit, required int offset, String search = '%%'}) async {
    final dtos = await _remoteDataSource.fetchPokemonList(limit: limit, offset: offset, search: search);
    return dtos.map((e) => e.toEntity()).toList();
  }

  @override
  Future<PokemonDetail> getPokemonDetail({required int id, int? targetGen, required int langId}) async {
    final dto = await _remoteDataSource.fetchPokemonDetail(id: id, targetGen: targetGen, langId: langId);
    return dto.toEntity();
  }
}