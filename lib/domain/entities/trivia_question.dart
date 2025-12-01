/// Archivo: trivia_question.dart
///
/// Descripción:
/// Entidad que representa una única pregunta dentro de una partida de Trivia.
/// Encapsula la lógica de validación de respuestas y cálculo de puntos por pregunta.
///
/// Propiedades:
/// - **Desafío**: Pokémon a adivinar (ID, Nombre, Imagen) y opciones distractores.
/// - **Respuesta**: Selección del usuario, tiempo empleado, puntos ganados.
///
/// Lógica de Negocio:
/// - `answer(...)`: Método crucial que procesa la respuesta del usuario, verifica si es correcta,
///   y calcula los puntos basándose en el tiempo restante (bonificación por velocidad).
class TriviaQuestion {
  /// ID del Pokémon correcto (útil para referencias futuras).
  final int pokemonId;

  /// Nombre del Pokémon correcto (la respuesta esperada).
  final String pokemonName;

  /// URL de la imagen del Pokémon (se muestra como silueta o revelada).
  final String imageUrl;

  /// Lista de 4 opciones de respuesta (incluye la correcta).
  final List<String> options;

  // --- Estado mutable de la respuesta ---

  /// Respuesta seleccionada por el usuario (null si no ha respondido).
  String? userAnswer;

  /// Indica si la respuesta seleccionada fue correcta.
  bool isCorrect;

  /// Tiempo en segundos que el usuario tardó en responder.
  int timeSpent;

  /// Puntos ganados en esta pregunta (base + bonos).
  int pointsEarned;

  TriviaQuestion({
    required this.pokemonId,
    required this.pokemonName,
    required this.imageUrl,
    required this.options,
    this.userAnswer,
    this.isCorrect = false,
    this.timeSpent = 0,
    this.pointsEarned = 0,
  });

  /// Marca la pregunta como respondida
  void answer(String answer, int timeLeft, int maxTime) {
    userAnswer = answer;
    isCorrect = answer.toLowerCase() == pokemonName.toLowerCase();
    timeSpent = maxTime - timeLeft;

    if (isCorrect) {
      // Cálculo de puntos: Base (100) + Bonus de tiempo (10 x segundos restantes)
      pointsEarned = 100 + (timeLeft * 10);
    } else {
      pointsEarned = 0; // Sin penalización negativa por ahora, solo 0
    }
  }
}
