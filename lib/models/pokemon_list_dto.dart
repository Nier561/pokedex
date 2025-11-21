/// DTO para el listado de Pokémon.
class PokemonListDto {
  final int id;
  final String name;
  final List<String> types;
  final String imageUrl;
  final int generationId;

  PokemonListDto({
    required this.id,
    required this.name,
    required this.types,
    required this.imageUrl,
    required this.generationId,
  });

  factory PokemonListDto.fromMap(Map<String, dynamic> map) {
    final types = ((map['pokemon_v2_pokemontypes'] as List?) ?? [])
        .map((t) => t['pokemon_v2_type']['name'] as String)
        .toList();

    final genId = map['pokemon_v2_pokemonspecy']?['generation_id'] as int? ?? 1;

    return PokemonListDto(
      id: map['id'] as int,
      name: map['name'] as String,
      types: types,
      imageUrl: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/${map['id']}.png',
      generationId: genId,
    );
  }

  String get displayName {
    String n = name;
    if (n.startsWith('zygarde-') && n.contains('-50')) {
      return 'Zygarde';
    }
    return n.isEmpty ? '' : '${n[0].toUpperCase()}${n.substring(1)}';
  }
}