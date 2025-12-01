/// Archivo: achievement.dart
///
/// Descripción:
/// Entidad de dominio que representa un logro desbloqueable en el juego.
/// Encapsula tanto la definición estática (metadatos) como el estado dinámico (progreso del usuario).
///
/// Propiedades:
/// - **Metadatos**: ID, claves de traducción para título/descripción, icono.
/// - **Estado**: `isUnlocked` (booleano) y `unlockedAt` (fecha).
/// - **Lógica**: `criteria` define la regla interna para validar el logro (ej: "score_500").
///
/// Uso:
/// Se utiliza en la UI para mostrar la lista de logros y en el repositorio para verificar desbloqueos.

// Actually, I should not import itself. I will just remove the import line if it exists or just start with class.
// Looking at the file content, it starts with comments then class.
// I will just replace the header.
class Achievement {
  /// Identificador único del logro.
  final String id;

  /// Clave de traducción para el título del logro.
  final String nameKey;

  /// Clave de traducción para la descripción del logro.
  final String descriptionKey;

  /// Emoji o ruta al icono que representa el logro.
  final String icon;

  /// Indica si el usuario ha desbloqueado este logro.
  final bool isUnlocked;

  /// Fecha en que se desbloqueó el logro (si aplica).
  final DateTime? unlockedAt;

  /// Identificador del criterio interno para verificar si se cumple el logro.
  final String criteria;

  Achievement({
    required this.id,
    required this.nameKey,
    required this.descriptionKey,
    required this.icon,
    this.isUnlocked = false,
    this.unlockedAt,
    required this.criteria,
  });

  /// Crea una copia del logro con estado actualizado
  Achievement copyWith({bool? isUnlocked, DateTime? unlockedAt}) {
    return Achievement(
      id: id,
      nameKey: nameKey,
      descriptionKey: descriptionKey,
      icon: icon,
      isUnlocked: isUnlocked ?? this.isUnlocked,
      unlockedAt: unlockedAt ?? this.unlockedAt,
      criteria: criteria,
    );
  }
}
