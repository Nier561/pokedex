/// Archivo: trivia_translations.dart
///
/// Descripción:
/// Módulo de localización específico para el juego de Trivia.
/// Separa los textos del juego del resto de la aplicación para mantener el orden.
///
/// Funcionalidades Principales:
/// - **Diccionario Bilingüe**: Contiene textos en Inglés y Español para todos los elementos del juego.
/// - **Textos Dinámicos**: Provee claves para títulos de logros, descripciones y mensajes de estado.
///
/// Dependencias:
/// - `languageProvider`: Determina el idioma activo para seleccionar la traducción correcta.
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/presentation/providers/language_provider.dart';

/// Clase utilitaria para manejar las traducciones específicas del módulo de Trivia.
/// Permite obtener cadenas de texto localizadas según el idioma actual de la app.
class TriviaTranslations {
  final Locale locale;

  TriviaTranslations(this.locale);

  /// Obtiene el texto traducido para una clave dada.
  /// Si la clave no existe o el idioma no está soportado, retorna la clave misma.
  String get(String key) {
    final Map<String, Map<String, String>> _localizedValues = {
      'en': {
        'trivia_title': 'Trivia',
        'trivia_subtitle': 'Who\'s that Pokémon?',
        'play_game': 'Play Game',
        'ranking': 'Ranking',
        'achievements': 'Achievements',
        'statistics': 'Statistics',
        'question_n': 'Question',
        'score': 'Score',
        'time_left': 'Time',
        'game_over': 'Game Over',
        'final_score': 'Final Score',
        'new_record': 'New Record!',
        'play_again': 'Play Again',
        'back_to_menu': 'Back to Menu',
        'correct': 'Correct!',
        'incorrect': 'Incorrect!',
        'time_up': 'Time\'s Up!',
        'total_games': 'Total Games',
        'accuracy': 'Accuracy',
        'best_score': 'Best Score',
        'achievement_unlocked': 'Achievement Unlocked!',
        // Achievements
        'achievement_novice_title': 'Novice',
        'achievement_novice_desc': 'Complete your first game',
        'achievement_trainer_title': 'Trainer',
        'achievement_trainer_desc': 'Score 500 points in a game',
        'achievement_master_title': 'Master',
        'achievement_master_desc': 'Score 1000 points in a game',
        'achievement_champion_title': 'Champion',
        'achievement_champion_desc': 'Score 1500 points in a game',
        'achievement_speedster_title': 'Speedster',
        'achievement_speedster_desc': 'Complete a game in under 2 minutes',
        'achievement_perfect_title': 'Perfectionist',
        'achievement_perfect_desc': 'Answer all 10 questions correctly',
        'achievement_streak_title': 'On Fire',
        'achievement_streak_desc': 'Get a streak of 5 correct answers',
        'it_is': 'It\'s',
        'enter_name_title': 'Enter Your Name',
        'enter_name_subtitle': 'Who is challenging the Trivia?',
        'trainer_name_hint': 'Trainer Name',
        'start_game_button': 'Start Game',
      },
      'es': {
        'trivia_title': 'Trivia',
        'trivia_subtitle': '¿Quién es este Pokémon?',
        'play_game': 'Jugar',
        'ranking': 'Ranking',
        'achievements': 'Logros',
        'statistics': 'Estadísticas',
        'question_n': 'Pregunta',
        'score': 'Puntos',
        'time_left': 'Tiempo',
        'game_over': 'Fin del Juego',
        'final_score': 'Puntuación Final',
        'new_record': '¡Nuevo Récord!',
        'play_again': 'Jugar de Nuevo',
        'back_to_menu': 'Volver al Menú',
        'correct': '¡Correcto!',
        'incorrect': '¡Incorrecto!',
        'time_up': '¡Tiempo Agotado!',
        'total_games': 'Partidas Jugadas',
        'accuracy': 'Precisión',
        'best_score': 'Mejor Puntuación',
        'achievement_unlocked': '¡Logro Desbloqueado!',
        // Logros
        'achievement_novice_title': 'Novato',
        'achievement_novice_desc': 'Completa tu primera partida',
        'achievement_trainer_title': 'Entrenador',
        'achievement_trainer_desc': 'Consigue 500 puntos en una partida',
        'achievement_master_title': 'Maestro',
        'achievement_master_desc': 'Consigue 1000 puntos en una partida',
        'achievement_champion_title': 'Campeón',
        'achievement_champion_desc': 'Consigue 1500 puntos en una partida',
        'achievement_speedster_title': 'Velocista',
        'achievement_speedster_desc':
            'Completa una partida en menos de 2 minutos',
        'achievement_perfect_title': 'Perfeccionista',
        'achievement_perfect_desc': 'Responde correctamente las 10 preguntas',
        'achievement_streak_title': 'En Racha',
        'achievement_streak_desc':
            'Consigue una racha de 5 respuestas correctas',
        'it_is': 'Es',
        'enter_name_title': 'Ingresa tu Nombre',
        'enter_name_subtitle': '¿Quién desafía la Trivia?',
        'trainer_name_hint': 'Nombre de Entrenador',
        'start_game_button': 'Comenzar Juego',
      },
    };

    return _localizedValues[locale.languageCode]?[key] ?? key;
  }
}

final triviaTranslationsProvider = Provider<TriviaTranslations>((ref) {
  final locale = ref.watch(languageProvider);
  return TriviaTranslations(locale);
});
