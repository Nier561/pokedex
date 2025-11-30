import 'package:pokedex/domain/repositories/i_favorites_repository.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/data/datasources/favorites_local_data_source.dart';

class FavoritesRepositoryImpl implements IFavoritesRepository {
  final FavoritesLocalDataSource _localDataSource;

  FavoritesRepositoryImpl(this._localDataSource);

  @override
  Future<void> loadFavorites() async {
    await _localDataSource.init();
  }

  @override
  Set<int> getFavorites() {
    return _localDataSource.getFavoriteIds();
  }

  @override
  List<Pokemon> getFavoritePokemon() {
    return _localDataSource.getFavorites();
  }

  @override
  bool isFavorite(int id) {
    return _localDataSource.isFavorite(id);
  }

  @override
  Future<void> toggleFavorite(int id, Pokemon? pokemon) async {
    if (_localDataSource.isFavorite(id)) {
      await _localDataSource.removeFavorite(id);
    } else {
      if (pokemon != null) {
        await _localDataSource.addFavorite(pokemon);
      }
    }
  }
}