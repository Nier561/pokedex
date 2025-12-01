import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/domain/entities/pokemon_detail.dart';

/// Repositorio: Define el contrato para persistencia de favoritos.
abstract class IFavoritesRepository {
  Future<void> loadFavorites();
  Set<int> getFavorites();
  List<Pokemon> getFavoritePokemon();
  Future<void> toggleFavorite(
    int id,
    Pokemon? pokemon, {
    PokemonDetail? detail,
  });
  bool isFavorite(int id);
}
