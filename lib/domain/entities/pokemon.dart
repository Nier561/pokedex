/// Archivo: pokemon.dart
///
/// Descripción:
/// Entidad de dominio fundamental que representa a un Pokémon en su forma resumida.
/// Contiene la información esencial para listados y tarjetas de vista previa.
///
/// Propiedades:
/// - **Identidad**: ID y Nombre.
/// - **Visual**: URL de la imagen y Tipos elementales.
/// - **Metadatos**: ID de Generación y Total de Estadísticas Base (para ordenamiento).
///
/// Lógica de Dominio:
/// - `displayName`: Getter que formatea nombres especiales (ej: Zygarde-50 -> Zygarde).
///
/// Uso:
/// Utilizado en `PokemonListScreen`, `FavoritesScreen` y búsquedas.
class Pokemon {
  final int id;
  final String name;
  final List<String> types;
  final String imageUrl;
  final int generationId;
  final int baseStatTotal; // Nuevo campo para ordenación por Poder

  Pokemon({
    required this.id,
    required this.name,
    required this.types,
    required this.imageUrl,
    required this.generationId,
    required this.baseStatTotal,
  });

  String get displayName {
    String n = name;
    if (n.startsWith('zygarde-') && n.contains('-50')) return 'Zygarde';
    return n.isEmpty ? '' : '${n[0].toUpperCase()}${n.substring(1)}';
  }
}
