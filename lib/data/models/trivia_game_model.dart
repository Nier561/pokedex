import 'package:hive/hive.dart';
import 'package:pokedex/domain/entities/trivia_game.dart';
import 'package:pokedex/domain/entities/trivia_question.dart';

part 'trivia_game_model.g.dart';

/// Modelo de datos para persistir el resumen de un juego de trivia en Hive.
/// Se utiliza para generar estadísticas históricas y análisis de rendimiento.
@HiveType(typeId: 12)
class TriviaGameModel extends HiveObject {
  /// Identificador único de la partida.
  @HiveField(0)
  final String id;

  /// Fecha y hora de inicio de la partida.
  @HiveField(1)
  final DateTime startTime;

  /// Fecha y hora de finalización de la partida.
  @HiveField(2)
  final DateTime? endTime;

  /// Puntuación total obtenida en la partida.
  @HiveField(3)
  final int totalScore;

  /// Número de respuestas correctas en la partida.
  @HiveField(4)
  final int correctAnswers;

  TriviaGameModel({
    required this.id,
    required this.startTime,
    this.endTime,
    required this.totalScore,
    required this.correctAnswers,
  });

  /// Crea una instancia del modelo a partir de la entidad de dominio [TriviaGame].
  /// Útil para guardar el estado del juego al finalizar.
  factory TriviaGameModel.fromEntity(TriviaGame entity) {
    return TriviaGameModel(
      id: entity.id,
      startTime: entity.startTime,
      endTime: entity.endTime,
      totalScore: entity.totalScore,
      correctAnswers: entity.correctAnswers,
    );
  }
  
  // No necesitamos toEntity completo porque el historial solo muestra resumen
}
