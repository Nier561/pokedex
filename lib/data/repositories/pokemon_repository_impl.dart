import 'package:pokedex/domain/repositories/i_pokemon_repository.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/domain/entities/pokemon_detail.dart';
import 'package:pokedex/data/datasources/pokemon_remote_data_source.dart';

import 'package:pokedex/data/datasources/pokemon_local_data_source.dart';
import 'package:pokedex/data/datasources/favorites_local_data_source.dart';

class PokemonRepositoryImpl implements IPokemonRepository {
  final PokemonRemoteDataSource _remoteDataSource;
  final PokemonLocalDataSource _localDataSource;
  // Inyectamos el datasource de favoritos para acceder a los detalles guardados offline
  final FavoritesLocalDataSource _favoritesLocalDataSource;

  PokemonRepositoryImpl(
    this._remoteDataSource,
    this._localDataSource, [
    FavoritesLocalDataSource? favoritesLocalDataSource,
  ]) : _favoritesLocalDataSource =
           favoritesLocalDataSource ?? FavoritesLocalDataSource();
  // Nota: Idealmente se inyectaría por constructor, pero para no romper main.dart drásticamente
  // lo hacemos opcional o lo instanciamos si es null, aunque main.dart debería proveerlo.
  // Vamos a asumir que main.dart lo pasará.

  @override
  Future<List<Pokemon>> getPokemonList({
    required int limit,
    required int offset,
    String search = '%%',
  }) async {
    try {
      final dtos = await _remoteDataSource.fetchPokemonList(
        limit: limit,
        offset: offset,
        search: search,
      );
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
  Future<PokemonDetail> getPokemonDetail({
    required int id,
    int? targetGen,
    required int langId,
  }) async {
    try {
      final dto = await _remoteDataSource.fetchPokemonDetail(
        id: id,
        targetGen: targetGen,
        langId: langId,
      );
      await _localDataSource.cachePokemonDetail(dto);

      // Si es favorito, actualizamos también su copia en favoritos para mantenerla fresca
      if (_favoritesLocalDataSource.isFavorite(id)) {
        await _favoritesLocalDataSource.saveFavoriteDetail(dto);
      }

      return dto.toEntity();
    } catch (e) {
      // 1. Intentar caché normal
      final localDto = await _localDataSource.getPokemonDetail(id);
      if (localDto != null) {
        return localDto.toEntity();
      }

      // 2. Intentar almacenamiento de favoritos
      final favDto = _favoritesLocalDataSource.getFavoriteDetail(id);
      if (favDto != null) {
        return favDto.toEntity();
      }

      rethrow;
    }
  }
}
