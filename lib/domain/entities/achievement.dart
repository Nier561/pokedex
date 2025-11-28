/// Entidad de Dominio: Representa un logro desbloqueable en el juego.
/// Contiene tanto la información estática (título, descripción) como el estado dinámico (desbloqueado).
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
  Achievement copyWith({
    bool? isUnlocked,
    DateTime? unlockedAt,
  }) {
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
