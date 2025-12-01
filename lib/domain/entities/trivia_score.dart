/// Entidad de Dominio: Representa una puntuación guardada en el ranking.
/// Es un resumen inmutable de una partida finalizada.
class TriviaScore {
  /// Identificador único del registro.
  final String id;

  /// Puntuación total final.
  final int totalScore;

  /// Número de respuestas correctas.
  final int correctAnswers;

  /// Total de preguntas presentadas.
  final int totalQuestions;

  /// Porcentaje de precisión (0-100).
  final double accuracy;

  /// Duración total de la partida en segundos.
  final int completionTime;

  /// Fecha y hora de la partida.
  final DateTime date;

  /// Lista de IDs de logros que se desbloquearon en esta partida.
  final List<String> achievementsUnlocked;

  /// Nombre del jugador.
  final String userName;

  TriviaScore({
    required this.id,
    required this.totalScore,
    required this.correctAnswers,
    required this.totalQuestions,
    required this.accuracy,
    required this.completionTime,
    required this.date,
    required this.userName,
    this.achievementsUnlocked = const [],
  });
}
