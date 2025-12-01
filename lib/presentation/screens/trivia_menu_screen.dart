import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/presentation/providers/game_state_provider.dart';
import 'package:pokedex/presentation/providers/trivia_translations.dart';
import 'package:pokedex/presentation/screens/trivia_achievements_screen.dart';
import 'package:pokedex/presentation/screens/trivia_game_screen.dart';
import 'package:pokedex/presentation/screens/trivia_ranking_screen.dart';
import 'package:pokedex/presentation/widgets/page_transitions.dart';

/// Pantalla de menú principal para el módulo de Trivia.
/// Ofrece acceso a las diferentes secciones:
/// - Jugar una nueva partida.
/// - Ver el ranking de mejores puntuaciones.
/// - Ver los logros obtenidos.
class TriviaMenuScreen extends ConsumerWidget {
  const TriviaMenuScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final translations = ref.watch(triviaTranslationsProvider);
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: Stack(
        children: [
          // Decoración de fondo: Pokeball gigante con opacidad baja
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  // Botón de regreso
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: theme.textTheme.bodyLarge?.color,
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                  const SizedBox(height: 20),
                  // Título principal
                  Text(
                    translations.get('trivia_title'),
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: theme.textTheme.bodyLarge?.color,
                      letterSpacing: 1.2,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    translations.get('trivia_subtitle'),
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: theme.textTheme.bodyMedium?.color?.withOpacity(
                        0.6,
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  // Grid de opciones
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 1,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: 3.5,
                      children: [
                        _TriviaMenuCard(
                          label: translations.get('play_game'),
                          icon: Icons.play_arrow_rounded,
                          colorStart: const Color(0xFF4FC1A6),
                          colorEnd: const Color(0xFF65D4BD),
                          onTap: () {
                            ref.read(gameStateProvider.notifier).startGame();
                            Future.microtask(() {
                              if (context.mounted) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const TriviaGameScreen(),
                                  ),
                                );
                              }
                            });
                          },
                        ),
                        _TriviaMenuCard(
                          label: translations.get('ranking'),
                          icon: Icons.leaderboard,
                          colorStart: const Color(0xFF58ABF6),
                          colorEnd: const Color(0xFF80C2F9),
                          onTap: () {
                            WidgetsBinding.instance.addPostFrameCallback((_) {
                              if (context.mounted) {
                                Navigator.push(
                                  context,
                                  SlideRightPageRoute(
                                    child: const TriviaRankingScreen(),
                                  ),
                                );
                              }
                            });
                          },
                        ),
                        _TriviaMenuCard(
                          label: translations.get('achievements'),
                          icon: Icons.emoji_events,
                          colorStart: const Color(0xFFFFCE4B),
                          colorEnd: const Color(0xFFFFD86F),
                          onTap: () {
                            WidgetsBinding.instance.addPostFrameCallback((_) {
                              if (context.mounted) {
                                Navigator.push(
                                  context,
                                  SlideRightPageRoute(
                                    child: const TriviaAchievementsScreen(),
                                  ),
                                );
                              }
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _TriviaMenuCard extends StatefulWidget {
  final String label;
  final IconData icon;
  final Color colorStart;
  final Color colorEnd;
  final VoidCallback onTap;

  const _TriviaMenuCard({
    required this.label,
    required this.icon,
    required this.colorStart,
    required this.colorEnd,
    required this.onTap,
  });

  @override
  State<_TriviaMenuCard> createState() => _TriviaMenuCardState();
}

class _TriviaMenuCardState extends State<_TriviaMenuCard> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedScale(
      scale: _isPressed ? 0.95 : 1.0,
      duration: const Duration(milliseconds: 100),
      curve: Curves.easeInOut,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: widget.colorStart.withOpacity(0.4),
              blurRadius: 12,
              offset: const Offset(0, 6),
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [widget.colorStart, widget.colorEnd],
          ),
        ),
        child: Material(
          color: Colors.transparent,
          clipBehavior: Clip.antiAlias,
          borderRadius: BorderRadius.circular(20),
          child: InkWell(
            onTap: widget.onTap,
            onHighlightChanged: (value) => setState(() => _isPressed = value),
            child: Stack(
              children: [
                Positioned(
                  right: -15,
                  bottom: -15,
                  child: Icon(
                    widget.icon,
                    size: 100,
                    color: Colors.white.withOpacity(0.25),
                  ),
                ),
                Positioned(
                  top: -20,
                  left: -20,
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.1),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.label,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          shadows: [
                            Shadow(
                              color: Colors.black12,
                              offset: Offset(0, 2),
                              blurRadius: 2,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
