import 'package:flutter/material.dart';
import 'package:pokedex/widgets/type_badge.dart'; // Asegúrate de importar TypeBadge

/// Widget animado que envuelve una tarjeta de Pokémon con efectos de entrada.
class AnimatedPokemonCard extends StatefulWidget {
  final String name;
  final List<String> types;
  final String imageUrl;
  final String? fallbackImageUrl;
  final LinearGradient background;
  final VoidCallback? onTap;
  final int index;

  const AnimatedPokemonCard({
    super.key,
    required this.name,
    required this.types,
    required this.imageUrl,
    this.fallbackImageUrl,
    required this.background,
    this.onTap,
    required this.index,
  });

  @override
  State<AnimatedPokemonCard> createState() => _AnimatedPokemonCardState();
}

class _AnimatedPokemonCardState extends State<AnimatedPokemonCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    // Animación de fundido
    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.0, 0.8, curve: Curves.easeOut),
    ));

    // Animación de escala
    _scaleAnimation = Tween<double>(
      begin: 0.8,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.2, 1.0, curve: Curves.elasticOut),
    ));

    // Animación de deslizamiento desde abajo
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0.0, 0.3),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.0, 0.8, curve: Curves.easeOutCubic),
    ));

    // Iniciar la animación con un retraso basado en el índice
    final delayMs = (widget.index.clamp(0, 6)) * 70;
    Future.delayed(Duration(milliseconds: delayMs), () {
      if (mounted) {
        _controller.forward();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return FadeTransition(
          opacity: _fadeAnimation,
          child: SlideTransition(
            position: _slideAnimation,
            child: ScaleTransition(
              scale: _scaleAnimation,
              child: GestureDetector(
                onTap: widget.onTap,
                child: _PokemonCardContent( // Usamos el contenido corregido aquí
                  name: widget.name,
                  types: widget.types,
                  imageUrl: widget.imageUrl,
                  fallbackImageUrl: widget.fallbackImageUrl,
                  background: widget.background,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

/// Contenido interno de la tarjeta con el diseño corregido.
/// Reemplaza al widget `PokemonCard` original para integrar la corrección de alineación.
class _PokemonCardContent extends StatelessWidget {
  final String name;
  final List<String> types;
  final String imageUrl;
  final String? fallbackImageUrl;
  final LinearGradient background;

  const _PokemonCardContent({
    required this.name,
    required this.types,
    required this.imageUrl,
    this.fallbackImageUrl,
    required this.background,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: background,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: background.colors.first.withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Stack(
        children: [
          // Decoración de fondo (Pokebola translúcida)
          Positioned(
            bottom: -10,
            right: -10,
            child: Icon(
              Icons.catching_pokemon,
              size: 100,
              color: Colors.white.withOpacity(0.15),
            ),
          ),

          // Contenido Principal
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 1. Nombre
                Text(
                  name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        color: Colors.black12,
                        offset: Offset(0, 1),
                        blurRadius: 2,
                      )
                    ],
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),

                const SizedBox(height: 8),

                // 2. Tipos e Imagen
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // CORRECCIÓN: Columna de Tipos (Izquierda)
                      // Usamos Column en lugar de Wrap/Row para alineación vertical perfecta
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: types.map((type) => Padding(
                          padding: const EdgeInsets.only(bottom: 6),
                          child: TypeBadge(
                            type: type,
                            backgroundColor: Colors.white.withOpacity(0.25),
                            small: true, // Badges compactos
                          ),
                        )).toList(),
                      ),

                      // Espaciador para empujar la imagen a la derecha
                      const Spacer(),

                      // Imagen (Derecha - Alineada abajo)
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Hero(
                          tag: 'pokemon-img-$name', // Tag único (usar ID sería mejor si estuviera disponible aquí)
                          child: Image.network(
                            imageUrl,
                            width: 90,
                            height: 90,
                            fit: BoxFit.contain,
                            errorBuilder: (context, error, stackTrace) {
                              if (fallbackImageUrl != null) {
                                return Image.network(
                                  fallbackImageUrl!,
                                  width: 75,
                                  height: 75,
                                  fit: BoxFit.contain,
                                );
                              }
                              return Icon(
                                Icons.image_not_supported,
                                color: Colors.white.withOpacity(0.5),
                                size: 40,
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Widget que añade efectos de hover/tap a las tarjetas (Wrapper externo)
class InteractivePokemonCard extends StatefulWidget {
  final Widget child;
  final VoidCallback? onTap;

  const InteractivePokemonCard({
    super.key,
    required this.child,
    this.onTap,
  });

  @override
  State<InteractivePokemonCard> createState() => _InteractivePokemonCardState();
}

class _InteractivePokemonCardState extends State<InteractivePokemonCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _hoverController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _hoverController = AnimationController(
      duration: const Duration(milliseconds: 100),
      vsync: this,
    );

    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 0.95, // Efecto de presión (shrink) al tocar
    ).animate(CurvedAnimation(
      parent: _hoverController,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _hoverController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => _hoverController.forward(),
      onTapUp: (_) => _hoverController.reverse(),
      onTapCancel: () => _hoverController.reverse(),
      onTap: widget.onTap,
      child: ScaleTransition(
        scale: _scaleAnimation,
        child: widget.child,
      ),
    );
  }
}