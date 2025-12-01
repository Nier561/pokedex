import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/presentation/providers/game_state_provider.dart';
import 'package:pokedex/presentation/providers/trivia_translations.dart';
import 'package:pokedex/presentation/screens/trivia_results_screen.dart';
import 'package:pokedex/presentation/widgets/error_view.dart';
import 'package:pokedex/presentation/widgets/pokemon_silhouette_widget.dart';
import 'package:pokedex/presentation/widgets/trivia_timer_widget.dart';

/// Pantalla principal del juego de Trivia.
/// Gestiona la interacción del usuario durante la partida:
/// - Muestra la pregunta actual y el temporizador.
/// - Maneja la selección de respuestas.
/// - Muestra feedback visual (correcto/incorrecto).
/// - Navega a la pantalla de resultados al finalizar.
class TriviaGameScreen extends ConsumerStatefulWidget {
  const TriviaGameScreen({super.key});

  @override
  ConsumerState<TriviaGameScreen> createState() => _TriviaGameScreenState();
}

class _TriviaGameScreenState extends ConsumerState<TriviaGameScreen> {
  bool _isOffline = false;
  bool _isLoadingConnectivity = true;

  @override
  void initState() {
    super.initState();
    _checkConnectivity();
  }

  Future<void> _checkConnectivity() async {
    setState(() {
      _isLoadingConnectivity = true;
    });

    try {
      final result = await Connectivity().checkConnectivity();
      setState(() {
        _isOffline = result.contains(ConnectivityResult.none);
        _isLoadingConnectivity = false;
      });
    } catch (e) {
      // Fallback to assuming online or show error if check fails?
      // Let's assume offline if check fails to be safe, or just show error.
      setState(() {
        _isOffline = true;
        _isLoadingConnectivity = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    if (_isLoadingConnectivity) {
      return Scaffold(
        backgroundColor: theme.scaffoldBackgroundColor,
        body: const Center(child: CircularProgressIndicator()),
      );
    }

    if (_isOffline) {
      return Scaffold(
        backgroundColor: theme.scaffoldBackgroundColor,
        body: ErrorView(
          message:
              'No internet connection.\nPlease check your settings and try again.',
          onRetry: _checkConnectivity,
        ),
      );
    }

    final gameState = ref.watch(gameStateProvider);
    final translations = ref.watch(triviaTranslationsProvider);

    // Navegar a resultados si el juego terminó
    ref.listen(gameStateProvider, (previous, next) {
      if (next.status == GameStatus.results) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (context.mounted) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const TriviaResultsScreen(),
              ),
            );
          }
        });
      }
    });

    if (gameState.isLoading) {
      return Scaffold(
        backgroundColor: theme.scaffoldBackgroundColor,
        body: const Center(child: CircularProgressIndicator()),
      );
    }

    if (gameState.currentGame == null) {
      return Scaffold(
        backgroundColor: theme.scaffoldBackgroundColor,
        body: const Center(child: Text('Error loading game')),
      );
    }

    final currentQuestion =
        gameState.currentGame!.questions[gameState.currentQuestionIndex];

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: Stack(
        children: [
          // Fondo decorativo
          Positioned(
            top: -60,
            right: -60,
            child: Icon(
              Icons.catching_pokemon,
              size: 300,
              color: isDark
                  ? Colors.white.withOpacity(0.05)
                  : Colors.grey.withOpacity(0.05),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  const SizedBox(height: 16),
                  // Header con nombre, progreso y puntaje
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        gameState.currentGame!.userName,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: theme.textTheme.bodyLarge?.color,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: isDark ? Colors.grey[800] : Colors.grey[100],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          '${translations.get('question_n')} ${gameState.currentQuestionIndex + 1}/10',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: theme.textTheme.bodyMedium?.color
                                ?.withOpacity(0.7),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFF8B7ED8).withOpacity(0.1),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          '${translations.get('score')}: ${gameState.currentGame!.totalScore}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF8B7ED8),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 32),

                  // Temporizador
                  TriviaTimerWidget(
                    key: ValueKey(
                      gameState.currentQuestionIndex,
                    ), // Reinicia el widget en cada pregunta
                    timeLeft: gameState.timeLeft,
                    size: 60,
                  ),

                  const SizedBox(height: 24),

                  // Silueta
                  Expanded(
                    flex: 4,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: PokemonSilhouetteWidget(
                        imageUrl: currentQuestion.imageUrl,
                        isRevealed: gameState.isAnswered,
                        size: 250,
                      ),
                    ),
                  ),

                  // Mensaje de feedback
                  SizedBox(
                    height: 60,
                    child: Center(
                      child: gameState.isAnswered
                          ? Text(
                              currentQuestion.isCorrect
                                  ? translations.get('correct')
                                  : '${translations.get('incorrect')} ${translations.get('it_is')} ${currentQuestion.pokemonName}!',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: currentQuestion.isCorrect
                                    ? Colors.green
                                    : Colors.red,
                              ),
                              textAlign: TextAlign.center,
                            )
                          : const SizedBox(),
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Opciones
                  Expanded(
                    flex: 5,
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: 2.5,
                      physics: const NeverScrollableScrollPhysics(),
                      children: currentQuestion.options.map((option) {
                        return _OptionButton(
                          text: option,
                          isSelected:
                              gameState.isAnswered &&
                              currentQuestion.userAnswer == option,
                          isCorrect:
                              gameState.isAnswered &&
                              option == currentQuestion.pokemonName,
                          isWrong:
                              gameState.isAnswered &&
                              option == currentQuestion.userAnswer &&
                              option != currentQuestion.pokemonName,
                          onTap: gameState.isAnswered
                              ? null
                              : () => ref
                                    .read(gameStateProvider.notifier)
                                    .submitAnswer(option),
                        );
                      }).toList(),
                    ),
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

class _OptionButton extends StatelessWidget {
  final String text;
  final bool isSelected;
  final bool isCorrect;
  final bool isWrong;
  final VoidCallback? onTap;

  const _OptionButton({
    required this.text,
    this.isSelected = false,
    this.isCorrect = false,
    this.isWrong = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    Color backgroundColor = theme.cardColor;
    Color textColor = theme.textTheme.bodyLarge?.color ?? Colors.black87;
    BorderSide borderSide = BorderSide(
      color: isDark ? Colors.grey[700]! : Colors.grey.shade200,
      width: 2,
    );
    List<BoxShadow> shadows = [
      BoxShadow(
        color: Colors.black.withOpacity(0.05),
        blurRadius: 5,
        offset: const Offset(0, 4),
      ),
    ];

    if (isCorrect) {
      backgroundColor = const Color(0xFF4FC1A6); // Greenish
      textColor = Colors.white;
      borderSide = BorderSide.none;
      shadows = [
        BoxShadow(
          color: const Color(0xFF4FC1A6).withOpacity(0.4),
          blurRadius: 8,
          offset: const Offset(0, 4),
        ),
      ];
    } else if (isWrong) {
      backgroundColor = const Color(0xFFFA6555); // Reddish
      textColor = Colors.white;
      borderSide = BorderSide.none;
      shadows = [
        BoxShadow(
          color: const Color(0xFFFA6555).withOpacity(0.4),
          blurRadius: 8,
          offset: const Offset(0, 4),
        ),
      ];
    }

    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.fromBorderSide(borderSide),
        boxShadow: shadows,
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(20),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
