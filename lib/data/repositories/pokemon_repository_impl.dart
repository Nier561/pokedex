import 'package:pokedex/domain/repositories/i_pokemon_repository.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/domain/entities/pokemon_detail.dart';
import 'package:pokedex/data/datasources/pokemon_remote_data_source.dart';

import 'package:pokedex/data/datasources/pokemon_local_data_source.dart';

class PokemonRepositoryImpl implements IPokemonRepository {
  final PokemonRemoteDataSource _remoteDataSource;
  final PokemonLocalDataSource _localDataSource;

  PokemonRepositoryImpl(this._remoteDataSource, this._localDataSource);

  @override
  Future<List<Pokemon>> getPokemonList({required int limit, required int offset, String search = '%%'}) async {
    try {
      final dtos = await _remoteDataSource.fetchPokemonList(limit: limit, offset: offset, search: search);
      // Solo cacheamos la primera página y si no es búsqueda (opcional, pero seguro)
      if (offset == 0 && search == '%%') {
        await _localDataSource.cachePokemonList(dtos);
      }
      return dtos.map((e) => e.toEntity()).toList();
    } catch (e) {
      // Si falla y es la primera página, intentamos local
      if (offset == 0 && search == '%%') {
        final localDtos = await _localDataSource.getLastPokemonList();
        if (localDtos.isNotEmpty) {
          return localDtos.map((e) => e.toEntity()).toList();
        }
      }
      rethrow;
    }
  }

  @override
  Future<PokemonDetail> getPokemonDetail({required int id, int? targetGen, required int langId}) async {
    try {
      final dto = await _remoteDataSource.fetchPokemonDetail(id: id, targetGen: targetGen, langId: langId);
      await _localDataSource.cachePokemonDetail(dto);
      return dto.toEntity();
    } catch (e) {
      final localDto = await _localDataSource.getPokemonDetail(id);
      if (localDto != null) {
        return localDto.toEntity();
      }
      rethrow;
    }
  }
}