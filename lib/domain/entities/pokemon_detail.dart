/// Archivo: pokemon_detail.dart
///
/// Descripción:
/// Entidad de dominio que representa la información completa y detallada de un Pokémon.
/// Es el objeto central de la pantalla de detalles (`DetailScreen`).
///
/// Contenido:
/// - **Físico**: Altura, Peso, Género.
/// - **Combate**: Estadísticas base, Habilidades, Tipos, Movimientos.
/// - **Lore**: Descripción (flavor text), Región, Grupos de Huevo.
/// - **Evolución**: Cadena evolutiva completa.
/// - **Variantes**: Formas alternativas (Mega, G-Max, Regionales).
/// - **Ubicación**: Dónde encontrarlo en los juegos.
///
/// Dependencias:
/// - Utiliza DTOs auxiliares (`StatDto`, `AbilityDto`, etc.) para estructurar la información compleja.
import 'package:pokedex/data/models/pokemon_detail_dto.dart'; // Importamos para los sub-DTOs (Stat, Ability, etc)

/// Entidad de Dominio: Representa el detalle completo de un Pokémon.
class PokemonDetail {
  final int id;
  final String name;
  final int height;
  final int weight;
  final List<String> types;
  final List<StatDto> stats;
  final List<AbilityDto> abilities;
  final String flavorText;
  final String genderText;
  final List<String> eggGroups;
  final String regionName;
  final List<MoveDto> moves;
  final List<EvolutionEdgeDto> evolutionChain;
  final List<FormDto> forms;
  final List<LocationGroupDto> locations; // <--- NUEVO CAMPO

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
    required this.locations,
  });
}
