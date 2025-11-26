import 'package:pokedex/data/models/pokemon_detail_dto.dart'; // Importamos DTOs auxiliares (Stat, Ability, etc) si se reutilizan, o mejor definir entidades puras. Por simplicidad, reusaremos los sub-objetos si no tienen lógica compleja, pero lo correcto es definirlos aquí.

/// Entidad de Dominio: Representa el detalle completo de un Pokémon.
class PokemonDetail {
  final int id;
  final String name;
  final int height;
  final int weight;
  final List<String> types;
  final List<StatDto> stats;      // Usamos los mismos objetos de valor por ahora
  final List<AbilityDto> abilities;
  final String flavorText;
  final String genderText;
  final List<String> eggGroups;
  final String regionName;
  final List<MoveDto> moves;
  final List<EvolutionEdgeDto> evolutionChain;
  final List<FormDto> forms;

  PokemonDetail({
    required this.id,
    required this.name,
    required this.height,
    required this.weight,
    required this.types,
    required this.stats,
    required this.abilities,
    required this.flavorText,
    required this.genderText,
    required this.eggGroups,
    required this.regionName,
    required this.moves,
    required this.evolutionChain,
    required this.forms,
  });
}