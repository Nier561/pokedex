import 'package:hive_flutter/hive_flutter.dart';
import 'package:pokedex/data/models/achievement_model.dart';
import 'package:pokedex/data/models/trivia_game_model.dart';
import 'package:pokedex/data/models/trivia_score_model.dart';

/// Fuente de datos local para la Trivia.
/// Se encarga de gestionar la persistencia de datos utilizando Hive.
/// Maneja puntuaciones, historial de juegos y logros desbloqueados.
class TriviaLocalDataSource {
  // Nombres de las cajas de Hive para almacenar datos específicos
  static const String scoresBoxName = 'trivia_scores';
  static const String gamesBoxName = 'trivia_games';
  static const String achievementsBoxName = 'trivia_achievements';

  /// Inicializa la base de datos local.
  /// Registra los adaptadores de Hive necesarios para los modelos personalizados
  /// y abre las cajas para su uso.
  Future<void> init() async {
    // Registrar adaptadores si no están registrados para evitar errores en hot reload
    if (!Hive.isAdapterRegistered(10)) Hive.registerAdapter(TriviaScoreModelAdapter());
    if (!Hive.isAdapterRegistered(11)) Hive.registerAdapter(AchievementModelAdapter());
    if (!Hive.isAdapterRegistered(12)) Hive.registerAdapter(TriviaGameModelAdapter());

    // Abrir las cajas de Hive. Esto carga los datos en memoria para un acceso rápido.
    await Hive.openBox<TriviaScoreModel>(scoresBoxName);
    await Hive.openBox<TriviaGameModel>(gamesBoxName);
    await Hive.openBox<AchievementModel>(achievementsBoxName);
  }

  // Getters para acceder a las cajas abiertas de forma tipada
  Box<TriviaScoreModel> get scoresBox => Hive.box<TriviaScoreModel>(scoresBoxName);
  Box<TriviaGameModel> get gamesBox => Hive.box<TriviaGameModel>(gamesBoxName);
  Box<AchievementModel> get achievementsBox => Hive.box<AchievementModel>(achievementsBoxName);

  /// Guarda una nueva puntuación en la base de datos.
  /// Utiliza el ID de la puntuación como clave.
  Future<void> saveScore(TriviaScoreModel score) async {
    await scoresBox.put(score.id, score);
  }

  /// Guarda el resumen de un juego finalizado.
  Future<void> saveGame(TriviaGameModel game) async {
    await gamesBox.put(game.id, game);
  }

  /// Actualiza el estado de un logro (ej. cuando se desbloquea).
  Future<void> updateAchievement(AchievementModel achievement) async {
    await achievementsBox.put(achievement.id, achievement);
  }

  /// Obtiene las mejores puntuaciones ordenadas de mayor a menor.
  /// [limit] especifica el número máximo de puntuaciones a devolver.
  List<TriviaScoreModel> getTopScores(int limit) {
    final scores = scoresBox.values.toList();
    // Ordenar descendente por puntaje total
    scores.sort((a, b) => b.totalScore.compareTo(a.totalScore));
    return scores.take(limit).toList();
  }

  /// Obtiene la mejor puntuación histórica registrada.
  /// Retorna null si no hay puntuaciones guardadas.
  TriviaScoreModel? getBestScore() {
    final scores = scoresBox.values.toList();
    if (scores.isEmpty) return null;
    // Ordenar y tomar el primero
    scores.sort((a, b) => b.totalScore.compareTo(a.totalScore));
    return scores.first;
  }

  /// Obtiene la lista de todos los logros que han sido desbloqueados.
  List<AchievementModel> getUnlockedAchievements() {
    return achievementsBox.values.toList();
  }

  /// Calcula estadísticas generales basadas en todo el historial de juegos.
  /// Retorna un mapa con: total de juegos, total de respuestas correctas y puntaje promedio.
  Map<String, dynamic> getStatistics() {
    final games = gamesBox.values.toList();
    if (games.isEmpty) {
      return {
        'total_games': 0,
        'total_correct': 0,
        'average_score': 0.0,
      };
    }

    // Calcular totales usando fold para iterar eficientemente
    final totalCorrect = games.fold(0, (sum, game) => sum + game.correctAnswers);
    final totalScore = games.fold(0, (sum, game) => sum + game.totalScore);

    return {
      'total_games': games.length,
      'total_correct': totalCorrect,
      'average_score': totalScore / games.length,
    };
  }
}
