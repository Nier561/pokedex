/// Archivo: achievement_model.dart
///
/// Descripción:
/// Modelo de datos para la persistencia de logros en la base de datos local (Hive).
/// Representa el estado de un logro específico para el usuario actual.
///
/// Funcionalidades Principales:
/// - **Persistencia de Estado**: Almacena si un logro está desbloqueado (`isUnlocked`) y
///   la fecha en que se consiguió (`unlockedAt`).
/// - **Eficiencia**: Solo guarda los datos dinámicos necesarios. La información estática
///   (título, descripción, icono) se mantiene en la capa de dominio/configuración para ahorrar espacio.
///
/// Dependencias:
/// - `hive`: Para las anotaciones `@HiveType` y `@HiveField`.
import 'package:hive/hive.dart';

part 'achievement_model.g.dart';

/// Modelo de datos para persistir el estado de un logro en la base de datos local (Hive).
/// Solo almacena la información dinámica (si está desbloqueado y cuándo).
/// La información estática (título, descripción, icono) se maneja en la capa de dominio.
@HiveType(typeId: 11)
class AchievementModel extends HiveObject {
  /// Identificador único del logro (debe coincidir con el ID definido en el dominio).
  @HiveField(0)
  final String id;

  /// Indica si el logro ha sido desbloqueado por el usuario.
  @HiveField(1)
  final bool isUnlocked;

  /// Fecha y hora en que se desbloqueó el logro. Null si aún está bloqueado.
  @HiveField(2)
  final DateTime? unlockedAt;

  AchievementModel({
    required this.id,
    required this.isUnlocked,
    this.unlockedAt,
  });

  // Nota: Solo persistimos el estado (id, unlocked, date).
  // La metadata estática (nombre, icono, etc.) viene del dominio/configuración.
}
