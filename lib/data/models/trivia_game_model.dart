/// Archivo: trivia_game_model.dart
///
/// Descripción:
/// Modelo de persistencia para el resumen de una partida de Trivia finalizada.
/// Se utiliza para el historial de juegos y análisis estadístico.
///
/// Funcionalidades Principales:
/// - **Registro de Partida**: Almacena metadatos clave como fecha de inicio/fin, puntuación
///   total, respuestas correctas y nombre del jugador.
/// - **Persistencia**: Anotado con `@HiveType` para ser guardado directamente en Hive.
/// - **Conversión**: Factory `fromEntity` para crear el modelo desde la lógica del juego.
///
/// Dependencias:
/// - `hive`: Base de datos local.
/// - `TriviaGame`: Entidad de dominio.
import 'package:hive/hive.dart';
import 'package:pokedex/domain/entities/trivia_game.dart';

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

  /// Nombre del jugador.
  @HiveField(5, defaultValue: 'Trainer')
  final String userName;

  TriviaGameModel({
    required this.id,
    required this.startTime,
    this.endTime,
    required this.totalScore,
    required this.correctAnswers,
    required this.userName,
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
      userName: entity.userName,
    );
  }
}
