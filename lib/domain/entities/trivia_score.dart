/// Archivo: trivia_score.dart
///
/// Descripción:
/// Entidad inmutable que representa un registro histórico de puntuación.
/// Es el resultado final de una partida (`TriviaGame`) una vez concluida.
///
/// Propósito:
/// - Servir como modelo de lectura para la pantalla de Ranking (`TriviaRankingScreen`).
/// - Desacoplar la lógica de juego activo (`TriviaGame`) de los datos históricos estáticos.
///
/// Contenido:
/// - Resumen de métricas: Puntos, aciertos, tiempo, precisión, fecha.
/// - Logros obtenidos en esa sesión específica.
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
