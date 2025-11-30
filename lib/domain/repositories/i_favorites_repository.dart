import 'package:pokedex/domain/entities/pokemon.dart';

/// Repositorio: Define el contrato para persistencia de favoritos.
abstract class IFavoritesRepository {
  Future<void> loadFavorites();
  Set<int> getFavorites();
  List<Pokemon> getFavoritePokemon();
  Future<void> toggleFavorite(int id, Pokemon? pokemon);
  bool isFavorite(int id);
}