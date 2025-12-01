import 'package:pokedex/data/datasources/trivia_local_data_source.dart';
import 'package:pokedex/data/models/achievement_model.dart';
import 'package:pokedex/data/models/trivia_game_model.dart';
import 'package:pokedex/data/models/trivia_score_model.dart';
import 'package:pokedex/domain/entities/achievement.dart';
import 'package:pokedex/domain/entities/trivia_game.dart';
import 'package:pokedex/domain/entities/trivia_score.dart';
import 'package:pokedex/domain/repositories/i_trivia_repository.dart';

class TriviaRepositoryImpl implements ITriviaRepository {
  final TriviaLocalDataSource _localDataSource;

  TriviaRepositoryImpl(this._localDataSource);

  // Definición estática de logros disponibles
  final List<Achievement> _allAchievements = [
    Achievement(
      id: 'novice',
      nameKey: 'achievement_novice_title',
      descriptionKey: 'achievement_novice_desc',
      icon: '🥉',
      criteria: 'play_1_game',
    ),
    Achievement(
      id: 'trainer',
      nameKey: 'achievement_trainer_title',
      descriptionKey: 'achievement_trainer_desc',
      icon: '🥈',
      criteria: 'score_500',
    ),
    Achievement(
      id: 'master',
      nameKey: 'achievement_master_title',
      descriptionKey: 'achievement_master_desc',
      icon: '🥇',
      criteria: 'score_1000',
    ),
    Achievement(
      id: 'champion',
      nameKey: 'achievement_champion_title',
      descriptionKey: 'achievement_champion_desc',
      icon: '🏆',
      criteria: 'score_1500',
    ),
    Achievement(
      id: 'speedster',
      nameKey: 'achievement_speedster_title',
      descriptionKey: 'achievement_speedster_desc',
      icon: '⚡',
      criteria: 'time_under_120',
    ),
    Achievement(
      id: 'perfect',
      nameKey: 'achievement_perfect_title',
      descriptionKey: 'achievement_perfect_desc',
      icon: '🎯',
      criteria: 'perfect_score',
    ),
    Achievement(
      id: 'streak',
      nameKey: 'achievement_streak_title',
      descriptionKey: 'achievement_streak_desc',
      icon: '🔥',
      criteria: 'streak_5',
    ),
  ];

  @override
  Future<void> saveGame(TriviaGame game) async {
    // Guardar resumen del juego
    await _localDataSource.saveGame(TriviaGameModel.fromEntity(game));

    // Crear y guardar puntuación para ranking
    final score = TriviaScore(
      id: game.id,
      totalScore: game.totalScore,
      correctAnswers: game.correctAnswers,
      totalQuestions: game.questions.length,
      accuracy: game.accuracy,
      completionTime: game.endTime!.difference(game.startTime).inSeconds,
      date: game.endTime!,
      userName: game.userName,
      achievementsUnlocked: [], // Se llenará al procesar logros
    );

    await _localDataSource.saveScore(TriviaScoreModel.fromEntity(score));
  }

  @override
  Future<List<TriviaScore>> getTopScores(int limit) async {
    final models = _localDataSource.getTopScores(limit);
    return models.map((m) => m.toEntity()).toList();
  }

  @override
  Future<TriviaScore?> getBestScore() async {
    final model = _localDataSource.getBestScore();
    return model?.toEntity();
  }

  @override
  Future<List<Achievement>> getAchievements() async {
    final unlockedModels = _localDataSource.getUnlockedAchievements();
    final unlockedIds = unlockedModels
        .where((m) => m.isUnlocked)
        .map((m) => m.id)
        .toSet();
    final unlockedDates = {for (var m in unlockedModels) m.id: m.unlockedAt};

    return _allAchievements.map((achievement) {
      if (unlockedIds.contains(achievement.id)) {
        return achievement.copyWith(
          isUnlocked: true,
          unlockedAt: unlockedDates[achievement.id],
        );
      }
      return achievement;
    }).toList();
  }

  @override
  Future<void> unlockAchievement(String achievementId) async {
    final achievement = _allAchievements.firstWhere(
      (a) => a.id == achievementId,
      orElse: () => throw Exception('Achievement not found'),
    );

    await _localDataSource.updateAchievement(
      AchievementModel(
        id: achievement.id,
        isUnlocked: true,
        unlockedAt: DateTime.now(),
      ),
    );
  }

  @override
  Future<Map<String, dynamic>> getStatistics() async {
    return _localDataSource.getStatistics();
  }
}
