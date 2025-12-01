/// Archivo: trivia_score_model.dart
///
/// Descripción:
/// Modelo detallado para una entrada en la Tabla de Posiciones (Leaderboard).
/// Contiene métricas granulares sobre el desempeño en una partida específica.
///
/// Funcionalidades Principales:
/// - **Métricas Detalladas**: Almacena precisión (%), tiempo de completado, logros desbloqueados
///   en esa sesión, además del puntaje estándar.
/// - **Persistencia**: Objeto Hive optimizado para consultas de ranking.
/// - **Mapeo Bidireccional**: Métodos `fromEntity` y `toEntity` para interactuar con la capa de dominio.
///
/// Dependencias:
/// - `hive`: Base de datos local.
/// - `TriviaScore`: Entidad de dominio.
import 'package:hive/hive.dart';
import 'package:pokedex/domain/entities/trivia_score.dart';

part 'trivia_score_model.g.dart';

/// Modelo de datos para persistir una puntuación individual en el Ranking (Hive).
/// Contiene todos los detalles necesarios para mostrar en la tabla de clasificación.
@HiveType(typeId: 10)
class TriviaScoreModel extends HiveObject {
  /// Identificador único del registro de puntuación.
  @HiveField(0)
  final String id;

  /// Puntuación final acumulada.
  @HiveField(1)
  final int totalScore;

  /// Cantidad de preguntas respondidas correctamente.
  @HiveField(2)
  final int correctAnswers;

  /// Cantidad total de preguntas en la partida.
  @HiveField(3)
  final int totalQuestions;

  /// Porcentaje de precisión (0.0 a 100.0).
  @HiveField(4)
  final double accuracy;

  /// Tiempo total tomado para completar la partida (en segundos).
  @HiveField(5)
  final int completionTime;

  /// Fecha en que se registró la puntuación.
  @HiveField(6)
  final DateTime date;

  /// Lista de IDs de logros que se desbloquearon durante esta partida específica.
  @HiveField(7)
  final List<String> achievementsUnlocked;

  /// Nombre del jugador.
  @HiveField(8, defaultValue: 'Trainer')
  final String userName;

  TriviaScoreModel({
    required this.id,
    required this.totalScore,
    required this.correctAnswers,
    required this.totalQuestions,
    required this.accuracy,
    required this.completionTime,
    required this.date,
    required this.achievementsUnlocked,
    required this.userName,
  });

  /// Convierte una entidad de dominio [TriviaScore] a este modelo de base de datos.
  factory TriviaScoreModel.fromEntity(TriviaScore entity) {
    return TriviaScoreModel(
      id: entity.id,
      totalScore: entity.totalScore,
      correctAnswers: entity.correctAnswers,
      totalQuestions: entity.totalQuestions,
      accuracy: entity.accuracy,
      completionTime: entity.completionTime,
      date: entity.date,
      achievementsUnlocked: entity.achievementsUnlocked,
      userName: entity.userName,
    );
  }

  /// Convierte este modelo de base de datos a una entidad de dominio [TriviaScore].
  TriviaScore toEntity() {
    return TriviaScore(
      id: id,
      totalScore: totalScore,
      correctAnswers: correctAnswers,
      totalQuestions: totalQuestions,
      accuracy: accuracy,
      completionTime: completionTime,
      date: date,
      achievementsUnlocked: achievementsUnlocked,
      userName: userName,
    );
  }
}
