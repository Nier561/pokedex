import 'package:pokedex/domain/repositories/i_favorites_repository.dart';
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
    return _localDataSource.getFavorites();
  }

  @override
  bool isFavorite(int id) {
    return _localDataSource.getFavorites().contains(id);
  }

  @override
  Future<void> toggleFavorite(int id) async {
    final current = _localDataSource.getFavorites();
    if (current.contains(id)) {
      current.remove(id);
    } else {
      current.add(id);
    }
    await _localDataSource.saveFavorites(current);
  }
}