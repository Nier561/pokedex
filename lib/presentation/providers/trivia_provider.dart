import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/domain/entities/achievement.dart';
import 'package:pokedex/domain/entities/trivia_score.dart';
import 'package:pokedex/domain/repositories/i_trivia_repository.dart';
import 'package:pokedex/main.dart'; // Para acceder a triviaRepositoryProvider global si es necesario, o mejor definirlo aquí.

// Definimos el provider del repositorio aquí para que sea accesible
// Nota: En main.dart se sobreescribirá con la implementación real
final triviaRepositoryProvider = Provider<ITriviaRepository>((ref) {
  throw UnimplementedError('Provider was not initialized');
});

// Provider para obtener los mejores puntajes (Ranking).
// Se actualiza automáticamente cuando cambia el repositorio o se invalida.
final topScoresProvider = FutureProvider.autoDispose<List<TriviaScore>>((ref) async {
  final repository = ref.watch(triviaRepositoryProvider);
  return repository.getTopScores(10);
});

// Provider para obtener el mejor puntaje histórico del usuario.
final bestScoreProvider = FutureProvider.autoDispose<TriviaScore?>((ref) async {
  final repository = ref.watch(triviaRepositoryProvider);
  return repository.getBestScore();
});

// Provider para obtener la lista de logros y su estado.
final achievementsProvider = FutureProvider.autoDispose<List<Achievement>>((ref) async {
  final repository = ref.watch(triviaRepositoryProvider);
  return repository.getAchievements();
});

// Provider para obtener estadísticas generales del juego.
final statisticsProvider = FutureProvider.autoDispose<Map<String, dynamic>>((ref) async {
  final repository = ref.watch(triviaRepositoryProvider);
  return repository.getStatistics();
});
