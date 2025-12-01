/// Archivo: i_favorites_repository.dart
///
/// Descripción:
/// Contrato (interfaz) para el repositorio de favoritos.
/// Define las operaciones abstractas que la capa de dominio necesita para gestionar favoritos,
/// desacoplándola de la implementación concreta (Hive, SQL, etc.).
///
/// Métodos:
/// - `loadFavorites`: Inicializa el almacenamiento.
/// - `getFavorites`: Obtiene IDs o lista de objetos.
/// - `toggleFavorite`: Agrega o quita un Pokémon, manejando opcionalmente sus detalles.
/// - `isFavorite`: Verificación rápida de estado.
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
