import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/presentation/providers/game_state_provider.dart';
import 'package:pokedex/presentation/providers/trivia_translations.dart';
import 'package:pokedex/presentation/screens/trivia_game_screen.dart';

/// Pantalla de Resultados que se muestra al finalizar una partida.
/// Presenta un resumen del desempeño del usuario:
/// - Puntuación final.
/// - Respuestas correctas.
/// - Precisión.
/// Permite iniciar una nueva partida o volver al menú.
class TriviaResultsScreen extends ConsumerWidget {
  const TriviaResultsScreen({super.key});

  @override
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final gameState = ref.watch(gameStateProvider);
    final translations = ref.watch(triviaTranslationsProvider);
    final game = gameState.currentGame!;
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: Stack(
        children: [
          Positioned(
            top: -60,
            right: -60,
            child: Icon(
              Icons.emoji_events,
              size: 300,
              color: isDark
                  ? Colors.white.withOpacity(0.05)
                  : Colors.grey.withOpacity(0.05),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  const Text('🏆', style: TextStyle(fontSize: 80)),
                  const SizedBox(height: 16),
                  Text(
                    '${translations.get('game_over')}, ${game.userName}!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: theme.textTheme.bodyLarge?.color,
                    ),
                  ),
                  const SizedBox(height: 48),
                  Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: theme.cardColor,
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 20,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Text(
                          translations.get('final_score'),
                          style: TextStyle(
                            fontSize: 16,
                            color: theme.textTheme.bodyMedium?.color
                                ?.withOpacity(0.6),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '${game.totalScore}',
                          style: const TextStyle(
                            fontSize: 64,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF8B7ED8),
                          ),
                        ),
                        const SizedBox(height: 24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _StatItem(
                              label: translations.get('correct'),
                              value: '${game.correctAnswers}/10',
                              color: const Color(0xFF4FC1A6),
                            ),
                            Container(
                              width: 1,
                              height: 40,
                              color: isDark
                                  ? Colors.grey[700]
                                  : Colors.grey[200],
                            ),
                            _StatItem(
                              label: translations.get('accuracy'),
                              value: '${game.accuracy.toStringAsFixed(0)}%',
                              color: const Color(0xFFFFCE4B),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {
                      ref
                          .read(gameStateProvider.notifier)
                          .startGame(game.userName);
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TriviaGameScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF4FC1A6),
                      foregroundColor: Colors.white,
                      minimumSize: const Size(double.infinity, 56),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 4,
                      shadowColor: const Color(0xFF4FC1A6).withOpacity(0.4),
                    ),
                    child: Text(
                      translations.get('play_again'),
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context); // Volver al menú
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: theme.textTheme.bodyMedium?.color
                          ?.withOpacity(0.6),
                      minimumSize: const Size(double.infinity, 56),
                    ),
                    child: Text(translations.get('back_to_menu')),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _StatItem extends ConsumerWidget {
  final String label;
  final String value;
  final Color color;

  const _StatItem({
    required this.label,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            color: theme.textTheme.bodyMedium?.color?.withOpacity(0.6),
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
