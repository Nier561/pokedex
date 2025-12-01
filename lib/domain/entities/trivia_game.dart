/// Archivo: trivia_game.dart
///
/// Descripción:
/// Entidad raíz (Aggregate Root) del módulo de Trivia.
/// Modela una sesión de juego completa, gestionando su estado y ciclo de vida.
///
/// Funcionalidades:
/// - **Estado del Juego**: Mantiene la lista de preguntas, tiempo de inicio/fin y usuario.
/// - **Lógica de Puntuación**: Calcula dinámicamente el puntaje total (`totalScore`) y
///   la precisión (`accuracy`) basándose en las respuestas de las preguntas.
/// - **Ciclo de Vida**: Métodos para verificar si el juego terminó (`isCompleted`) y finalizarlo (`finish`).
///
/// Relaciones:
/// - Contiene una lista de `TriviaQuestion`.
import 'package:pokedex/domain/entities/trivia_question.dart';

/// Entidad de Dominio: Representa una partida completa de trivia.
/// Mantiene el estado de las preguntas, el tiempo y el progreso general.
class TriviaGame {
  /// Identificador único de la partida (usualmente timestamp).
  final String id;

  /// Lista de preguntas generadas para esta partida.
  final List<TriviaQuestion> questions;

  /// Momento en que inició la partida.
  final DateTime startTime;

  /// Momento en que finalizó la partida (null si está en progreso).
  DateTime? endTime;

  /// Nombre del jugador.
  final String userName;

  TriviaGame({
    required this.id,
    required this.questions,
    required this.startTime,
    required this.userName,
    this.endTime,
  });

  /// Calcula la puntuación total actual de la partida
  int get totalScore {
    return questions.fold(0, (sum, question) => sum + question.pointsEarned);
  }

  /// Calcula el número de respuestas correctas
  int get correctAnswers {
    return questions.where((q) => q.isCorrect).length;
  }

  /// Calcula la precisión (porcentaje de aciertos)
  double get accuracy {
    if (questions.isEmpty) return 0.0;
    // Solo contamos las preguntas que ya han sido respondidas
    final answeredQuestions = questions
        .where((q) => q.userAnswer != null)
        .length;
    if (answeredQuestions == 0) return 0.0;
    return (correctAnswers / answeredQuestions) * 100;
  }

  /// Verifica si la partida ha terminado (todas las preguntas respondidas)
  bool get isCompleted {
    return questions.every((q) => q.userAnswer != null);
  }

  /// Finaliza la partida
  void finish() {
    endTime = DateTime.now();
  }
}
