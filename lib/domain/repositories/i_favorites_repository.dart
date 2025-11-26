/// Contrato del Repositorio de Favoritos.
abstract class IFavoritesRepository {
  Future<void> loadFavorites();
  Set<int> getFavorites();
  Future<void> toggleFavorite(int id);
  bool isFavorite(int id);
}