/// Archivo: pokemon_list_dto.dart
///
/// Descripción:
/// DTO ligero optimizado para listas y rejillas de Pokémon.
/// Contiene solo la información esencial para renderizar una tarjeta de resumen.
///
/// Funcionalidades Principales:
/// - **Extracción de Datos**: Obtiene ID, nombre, tipos y generación de la respuesta GraphQL.
/// - **Cálculo de Stats**: Suma las estadísticas base para obtener el `baseStatTotal` (útil para ordenar).
/// - **Generación de URL**: Construye la URL de la imagen oficial (artwork) basada en el ID.
/// - **Conversión**: Métodos para transformar hacia/desde Map (JSON) y hacia la entidad `Pokemon`.
///
/// Dependencias:
/// - `Pokemon`: Entidad de dominio.
import 'package:pokedex/domain/entities/pokemon.dart';

/// DTO para el listado de Pokémon.
class PokemonListDto {
  final int id;
  final String name;
  final List<String> types;
  final String imageUrl;
  final int generationId;
  final int baseStatTotal;

  PokemonListDto({
    required this.id,
    required this.name,
    required this.types,
    required this.imageUrl,
    required this.generationId,
    required this.baseStatTotal,
  });

  factory PokemonListDto.fromMap(Map<String, dynamic> map) {
    final types = ((map['pokemon_v2_pokemontypes'] as List?) ?? [])
        .map((t) => t['pokemon_v2_type']['name'] as String)
        .toList();

    final genId = map['pokemon_v2_pokemonspecy']?['generation_id'] as int? ?? 1;

    // Calculamos el poder total sumando las stats base (si vienen en el query)
    final stats = (map['pokemon_v2_pokemonstats'] as List?) ?? [];
    int total = 0;
    for (var s in stats) {
      total += (s['base_stat'] as int? ?? 0);
    }

    return PokemonListDto(
      id: map['id'] as int,
      name: map['name'] as String,
      types: types,
      imageUrl:
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${map['id']}.png',
      generationId: genId,
      baseStatTotal: total,
    );
  }

  Pokemon toEntity() {
    return Pokemon(
      id: id,
      name: name,
      types: types,
      imageUrl: imageUrl,
      generationId: generationId,
      baseStatTotal: baseStatTotal,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'types': types,
      'imageUrl': imageUrl,
      'generationId': generationId,
      'baseStatTotal': baseStatTotal,
    };
  }
}
