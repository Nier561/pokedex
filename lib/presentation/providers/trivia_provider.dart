/// Archivo: trivia_provider.dart
///
/// Descripción:
/// Archivo de definición de providers de lectura para el módulo de Trivia.
/// Facilita el acceso a datos estadísticos y de ranking desde la capa de presentación.
///
/// Funcionalidades Principales:
/// - **Ranking**: `topScoresProvider` expone las mejores puntuaciones.
/// - **Mejor Puntaje**: `bestScoreProvider` expone el récord personal.
/// - **Logros**: `achievementsProvider` lista los logros y su estado de desbloqueo.
/// - **Estadísticas**: `statisticsProvider` provee métricas agregadas del jugador.
///
/// Dependencias:
/// - `triviaRepositoryProvider`: Fuente de verdad para los datos.
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/domain/entities/achievement.dart';
import 'package:pokedex/domain/entities/trivia_score.dart';
import 'package:pokedex/domain/repositories/i_trivia_repository.dart';

// Definimos el provider del repositorio aquí para que sea accesible
// Nota: En main.dart se sobreescribirá con la implementación real
final triviaRepositoryProvider = Provider<ITriviaRepository>((ref) {
  throw UnimplementedError('Provider was not initialized');
});

// Provider para obtener los mejores puntajes (Ranking).
// Se actualiza automáticamente cuando cambia el repositorio o se invalida.
final topScoresProvider = FutureProvider.autoDispose<List<TriviaScore>>((
  ref,
) async {
  final repository = ref.watch(triviaRepositoryProvider);
  return repository.getTopScores(10);
});

// Provider para obtener el mejor puntaje histórico del usuario.
final bestScoreProvider = FutureProvider.autoDispose<TriviaScore?>((ref) async {
  final repository = ref.watch(triviaRepositoryProvider);
  return repository.getBestScore();
});

// Provider para obtener la lista de logros y su estado.
final achievementsProvider = FutureProvider.autoDispose<List<Achievement>>((
  ref,
) async {
  final repository = ref.watch(triviaRepositoryProvider);
  return repository.getAchievements();
});

// Provider para obtener estadísticas generales del juego.
final statisticsProvider = FutureProvider.autoDispose<Map<String, dynamic>>((
  ref,
) async {
  final repository = ref.watch(triviaRepositoryProvider);
  return repository.getStatistics();
});
