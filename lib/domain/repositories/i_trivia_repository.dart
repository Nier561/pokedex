import 'package:pokedex/domain/entities/trivia_game.dart';
import 'package:pokedex/domain/entities/trivia_score.dart';
import 'package:pokedex/domain/entities/achievement.dart';

/// Interfaz del Repositorio de Trivia
/// Define el contrato para acceder y manipular los datos persistentes del juego.
/// Permite desacoplar la lógica de negocio de la implementación de almacenamiento (Hive, SQL, API, etc.).
abstract class ITriviaRepository {
  /// Guarda el estado completo de una partida finalizada.
  Future<void> saveGame(TriviaGame game);

  /// Obtiene las mejores puntuaciones históricas ordenadas por puntaje.
  /// [limit] define el número máximo de registros a devolver (ej. Top 10).
  Future<List<TriviaScore>> getTopScores(int limit);

  /// Obtiene la mejor puntuación individual registrada por el usuario.
  /// Retorna null si no hay partidas jugadas.
  Future<TriviaScore?> getBestScore();

  /// Obtiene la lista completa de logros disponibles y su estado de desbloqueo.
  Future<List<Achievement>> getAchievements();

  /// Marca un logro específico como desbloqueado.
  /// [achievementId] debe coincidir con el ID definido en la configuración de logros.
  Future<void> unlockAchievement(String achievementId);

  /// Calcula y devuelve estadísticas agregadas del rendimiento del usuario.
  /// Retorna un mapa con claves como:
  /// - 'total_games': Total de partidas jugadas.
  /// - 'total_correct': Total de respuestas correctas históricas.
  /// - 'average_score': Puntuación promedio.
  Future<Map<String, dynamic>> getStatistics();
}
