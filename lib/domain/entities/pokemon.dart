/// Entidad de Dominio: Representa un Pokémon en la lista (Datos ligeros).
class Pokemon {
  final int id;
  final String name;
  final List<String> types;
  final String imageUrl;
  final int generationId;

  Pokemon({
    required this.id,
    required this.name,
    required this.types,
    required this.imageUrl,
    required this.generationId,
  });

  // Lógica de presentación simple que es intrínseca a la entidad
  String get displayName {
    String n = name;
    if (n.startsWith('zygarde-') && n.contains('-50')) {
      return 'Zygarde';
    }
    return n.isEmpty ? '' : '${n[0].toUpperCase()}${n.substring(1)}';
  }
}