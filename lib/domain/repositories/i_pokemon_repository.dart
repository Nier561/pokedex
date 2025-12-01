/// Archivo: i_pokemon_repository.dart
///
/// Descripción:
/// Contrato (interfaz) para el repositorio principal de datos de Pokémon.
///
/// Métodos:
/// - `getPokemonList`: Obtención paginada de la lista principal.
/// - `getPokemonDetail`: Obtención de la información completa de un Pokémon.
///
/// Propósito:
/// Permite que los casos de uso (o providers en este caso) soliciten datos sin conocer
/// si vienen de la API, de caché o de una base de datos local.
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/domain/entities/pokemon_detail.dart';

/// Contrato del Repositorio de Pokémon.
/// Define qué operaciones de datos están disponibles para el dominio.
abstract class IPokemonRepository {
  /// Obtiene una lista paginada de Pokémon.
  Future<List<Pokemon>> getPokemonList({
    required int limit,
    required int offset,
    String search = '%%',
  });

  /// Obtiene el detalle de un Pokémon por ID.
  Future<PokemonDetail> getPokemonDetail({
    required int id,
    int? targetGen,
    required int langId,
  });
}
