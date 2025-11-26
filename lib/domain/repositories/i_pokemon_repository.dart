import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/domain/entities/pokemon_detail.dart';

/// Contrato del Repositorio de Pokémon.
/// Define qué operaciones de datos están disponibles para el dominio.
abstract class IPokemonRepository {
  /// Obtiene una lista paginada de Pokémon.
  Future<List<Pokemon>> getPokemonList({required int limit, required int offset, String search = '%%'});

  /// Obtiene el detalle de un Pokémon por ID.
  Future<PokemonDetail> getPokemonDetail({required int id, int? targetGen});
}