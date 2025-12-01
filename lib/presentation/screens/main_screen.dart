// Importaciones necesarias para la pantalla principal
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/presentation/providers/language_provider.dart';
import 'package:pokedex/presentation/screens/region_selection_screen.dart';
import 'package:pokedex/presentation/screens/list_screen.dart';
import 'package:pokedex/presentation/screens/settings_screen.dart';
import 'package:pokedex/presentation/widgets/page_transitions.dart';
import 'package:pokedex/presentation/screens/trivia_menu_screen.dart';

/// Pantalla principal del menú de la Pokédex
/// Utiliza ConsumerStatefulWidget para manejar estado y animaciones
class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({super.key});

  @override
  ConsumerState<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen>
    with SingleTickerProviderStateMixin {
  // Controlador para las animaciones de entrada
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    // Inicializa el controlador de animación con duración de 1 segundo
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..forward(); // Inicia la animación automáticamente
  }

  @override
  void dispose() {
    // Libera recursos del controlador de animación
    _controller.dispose();
    super.dispose();
  }

  /// Construye una tarjeta con animación de entrada
  /// [index] determina el retraso de la animación para efecto escalonado
  /// [child] es el widget que se animará
  Widget _buildAnimatedCard(int index, Widget child) {
    return SlideTransition(
      // Animación de deslizamiento desde abajo
      position:
          Tween<Offset>(
            begin: const Offset(0, 0.5), // Comienza 50% abajo
            end: Offset.zero, // Termina en posición original
          ).animate(
            CurvedAnimation(
              parent: _controller,
              curve: Interval(
                index * 0.1, // Retraso basado en el índice
                0.6 + index * 0.1, // Duración escalonada
                curve: Curves.easeOutBack, // Curva con rebote suave
              ),
            ),
          ),
      child: FadeTransition(
        // Animación de opacidad (fade in)
        opacity: Tween<double>(begin: 0, end: 1).animate(
          CurvedAnimation(
            parent: _controller,
            curve: Interval(
              index * 0.1,
              0.6 + index * 0.1,
              curve: Curves.easeOut,
            ),
          ),
        ),
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Obtiene el idioma actual desde el provider
    final locale = ref.watch(languageProvider);
    // Función helper para traducciones
    String tr(String key) => S(locale).get(key);
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
                  const SizedBox(height: 40),
                  // Encabezado animado con deslizamiento desde arriba
                  SlideTransition(
                    position:
                        Tween<Offset>(
                          begin: const Offset(0, -0.5), // Comienza arriba
                          end: Offset.zero,
                        ).animate(
                          CurvedAnimation(
                            parent: _controller,
                            curve: const Interval(
                              0.0,
                              0.6,
                              curve: Curves.easeOut,
                            ),
                          ),
                        ),
                    child: FadeTransition(
                      opacity: Tween<double>(begin: 0, end: 1).animate(
                        CurvedAnimation(
                          parent: _controller,
                          curve: const Interval(
                            0.0,
                            0.6,
                            curve: Curves.easeOut,
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Título principal
                          Text(
                            tr('app_title'), // "Pokédex"
                            style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: theme.textTheme.bodyLarge?.color,
                              letterSpacing: 1.2,
                            ),
                          ),
                          const SizedBox(height: 8),
                          // Subtítulo traducible
                          Text(
                            tr('main_subtitle'),
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: theme.textTheme.bodyMedium?.color
                                  ?.withOpacity(0.6),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  // Grid de opciones del menú en una sola columna
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 1, // Una columna
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio:
                          3.5, // Relación ancho/alto para tarjetas horizontales
                      children: [
                        // Opción 1: Pokédex (verde/azulado)
                        _buildAnimatedCard(
                          0,
                          _MenuCard(
                            label: tr('app_title'),
                            colorStart: const Color(0xFF4FC1A6),
                            colorEnd: const Color(0xFF65D4BD),
                            icon: Icons.catching_pokemon,
                            onTap: () {
                              Navigator.push(
                                context,
                                SlideRightPageRoute(
                                  child: const PokemonListScreen(),
                                ),
                              );
                            },
                          ),
                        ),
                        // Opción 2: Favoritos (Rojo/Corazón)
                        _buildAnimatedCard(
                          1,
                          _MenuCard(
                            label: tr('favorites'),
                            colorStart: const Color(0xFFEC8C6F),
                            colorEnd: const Color(0xFFED6C53),
                            icon: Icons.favorite,
                            onTap: () {
                              Navigator.push(
                                context,
                                SlideRightPageRoute(
                                  child: const PokemonListScreen(
                                    showFavorites: true,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        // Opción 3: Generaciones (rojo/rosado)
                        _buildAnimatedCard(
                          2,
                          _MenuCard(
                            label: tr('generation'),
                            colorStart: const Color(0xFFFA6555),
                            colorEnd: const Color(0xFFFA8B7F),
                            icon: Icons.map,
                            onTap: () {
                              Navigator.push(
                                context,
                                SlideRightPageRoute(
                                  child: const GenerationSelectionScreen(),
                                ),
                              );
                            },
                          ),
                        ),
                        // Opción 4: Trivia (amarillo/naranja)
                        _buildAnimatedCard(
                          3,
                          _MenuCard(
                            label: 'Trivia',
                            colorStart: const Color(0xFFFFCE4B),
                            colorEnd: const Color(0xFFFFD86F),
                            icon: Icons.lightbulb,
                            onTap: () {
                              Navigator.push(
                                context,
                                SlideRightPageRoute(
                                  child: const TriviaMenuScreen(),
                                ),
                              );
                            },
                          ),
                        ),
                        // Opción 5: Configuración (púrpura/lila)
                        _buildAnimatedCard(
                          4,
                          _MenuCard(
                            label: tr('settings'),
                            colorStart: const Color(0xFF7C538C),
                            colorEnd: const Color(0xFF9F6EBD),
                            icon: Icons.settings,
                            onTap: () {
                              Navigator.push(
                                context,
                                SlideRightPageRoute(
                                  child: const SettingsScreen(),
                                ),
                              );
                            },
                          ),
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

/// Widget de tarjeta del menú con animación interactiva
/// Muestra un degradado de color, ícono decorativo y texto
class _MenuCard extends StatefulWidget {
  final String label; // Texto de la tarjeta
  final Color colorStart; // Color inicial del degradado
  final Color colorEnd; // Color final del degradado
  final IconData icon; // Ícono decorativo
  final VoidCallback onTap; // Acción al presionar

  const _MenuCard({
    required this.label,
    required this.colorStart,
    required this.colorEnd,
    required this.icon,
    required this.onTap,
  });

  @override
  State<_MenuCard> createState() => _MenuCardState();
}

class _MenuCardState extends State<_MenuCard> {
  // Estado para controlar si la tarjeta está siendo presionada
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedScale(
      // Escala la tarjeta al 95% cuando está presionada
      scale: _isPressed ? 0.95 : 1.0,
      duration: const Duration(milliseconds: 100),
      curve: Curves.easeInOut,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), // Bordes muy redondeados
          // Sombra suave con color del degradado
          boxShadow: [
            BoxShadow(
              color: widget.colorStart.withOpacity(0.4),
              blurRadius: 12,
              offset: const Offset(0, 6),
            ),
          ],
          // Degradado de color
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [widget.colorStart, widget.colorEnd],
          ),
        ),
        child: Material(
          color: Colors.transparent,
          clipBehavior:
              Clip.antiAlias, // Recorta el contenido en los bordes redondeados
          borderRadius: BorderRadius.circular(20),
          child: InkWell(
            onTap: widget.onTap,
            // Detecta cuando el usuario presiona/suelta para animar
            onHighlightChanged: (value) {
              setState(() {
                _isPressed = value;
              });
            },
            child: Stack(
              children: [
                // Ícono decorativo grande en la esquina inferior derecha
                Positioned(
                  right: -15,
                  bottom: -15,
                  child: Icon(
                    widget.icon,
                    size: 100,
                    color: Colors.white.withOpacity(
                      0.25,
                    ), // Opacidad baja para efecto watermark
                  ),
                ),
                // Círculo decorativo en la esquina superior izquierda (efecto neumórfico)
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
                // Contenido principal: texto de la etiqueta
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
                          // Sombra sutil para mejorar legibilidad
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
