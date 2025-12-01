import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex/presentation/widgets/type_badge.dart';

/// Tarjeta animada que muestra la información básica de un Pokémon.
/// Incluye animaciones de entrada (fade, scale, slide) y efectos visuales.
class AnimatedPokemonCard extends StatefulWidget {
  final String name;
  final List<String> types;
  final String imageUrl;
  final String? fallbackImageUrl;
  final LinearGradient background;
  final VoidCallback? onTap;
  final int index;
  final bool isLarge;

  const AnimatedPokemonCard({
    super.key,
    required this.name,
    required this.types,
    required this.imageUrl,
    this.fallbackImageUrl,
    required this.background,
    this.onTap,
    required this.index,
    this.isLarge = false,
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

    // Animación de opacidad
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.8, curve: Curves.easeOut),
      ),
    );

    // Animación de escala
    _scaleAnimation = Tween<double>(begin: 0.8, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.2, 1.0, curve: Curves.elasticOut),
      ),
    );

    // Animación de deslizamiento vertical
    _slideAnimation =
        Tween<Offset>(begin: const Offset(0.0, 0.3), end: Offset.zero).animate(
          CurvedAnimation(
            parent: _controller,
            curve: const Interval(0.0, 0.8, curve: Curves.easeOutCubic),
          ),
        );

    // Inicia la animación con un retraso escalonado basado en el índice
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
    return Stack(
      fit: StackFit.expand,
      children: [
        // Borde de marcador de posición (Placeholder)
        Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.white.withOpacity(0.2), width: 2),
          ),
        ),
        // Contenido animado
        AnimatedBuilder(
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
                    child: _PokemonCardContent(
                      // Contenido interno de la tarjeta
                      name: widget.name,
                      types: widget.types,
                      imageUrl: widget.imageUrl,
                      fallbackImageUrl: widget.fallbackImageUrl,
                      background: widget.background,
                      isLarge: widget.isLarge,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}

/// Widget interno que renderiza el diseño visual de la tarjeta.
class _PokemonCardContent extends StatelessWidget {
  final String name;
  final List<String> types;
  final String imageUrl;
  final String? fallbackImageUrl;
  final LinearGradient background;
  final bool isLarge;

  const _PokemonCardContent({
    required this.name,
    required this.types,
    required this.imageUrl,
    this.fallbackImageUrl,
    required this.background,
    required this.isLarge,
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
          // Decoración de fondo (Pokébola translúcida)
          Positioned(
            bottom: -10,
            right: -10,
            child: Icon(
              Icons.catching_pokemon,
              size: 100,
              color: Colors.white.withOpacity(0.15),
            ),
          ),

          if (isLarge)
            Positioned(
              right: 15,
              bottom: 0,
              child: Hero(
                tag: 'pokemon-img-$name',
                child: CachedNetworkImage(
                  imageUrl: imageUrl,
                  width: 120,
                  height: 120,
                  fit: BoxFit.contain,
                  memCacheWidth: 200,
                  placeholder: (context, url) => Center(
                    child: SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: Colors.white.withOpacity(0.5),
                      ),
                    ),
                  ),
                  errorWidget: (context, url, error) => Image.asset(
                    'assets/images/pokedex icono 2.webp',
                    width: 40,
                    height: 40,
                    color: Colors.white.withOpacity(0.5),
                    colorBlendMode: BlendMode.modulate,
                  ),
                ),
              ),
            ),

          // Contenido Principal
          Padding(
            padding: EdgeInsets.all(isLarge ? 20.0 : 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Nombre del Pokémon
                Text(
                  name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: isLarge ? 24 : 16,
                    fontWeight: FontWeight.bold,
                    shadows: const [
                      Shadow(
                        color: Colors.black12,
                        offset: Offset(0, 1),
                        blurRadius: 2,
                      ),
                    ],
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),

                SizedBox(height: isLarge ? 12 : 8),

                // Tipos e Imagen
                if (isLarge) ...[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: types
                        .map(
                          (type) => Padding(
                            padding: const EdgeInsets.only(bottom: 6),
                            child: TypeBadge(
                              type: type,
                              backgroundColor: Colors.white.withOpacity(0.25),
                              small: false,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ] else
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Columna de Tipos
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: types
                              .map(
                                (type) => Padding(
                                  padding: const EdgeInsets.only(bottom: 6),
                                  child: TypeBadge(
                                    type: type,
                                    backgroundColor: Colors.white.withOpacity(
                                      0.25,
                                    ),
                                    small: true,
                                  ),
                                ),
                              )
                              .toList(),
                        ),

                        // Espaciador flexible
                        const Spacer(),

                        // Imagen del Pokémon
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Hero(
                            tag: 'pokemon-img-$name',
                            child: CachedNetworkImage(
                              imageUrl: imageUrl,
                              width: 90,
                              height: 90,
                              fit: BoxFit.contain,
                              memCacheWidth: 200,
                              placeholder: (context, url) => Center(
                                child: SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                ),
                              ),
                              errorWidget: (context, url, error) => Image.asset(
                                'assets/images/pokedex icono 2.webp',
                                width: 40,
                                height: 40,
                                color: Colors.white.withOpacity(0.5),
                                colorBlendMode: BlendMode.modulate,
                              ),
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

class InteractivePokemonCard extends StatefulWidget {
  final Widget child;
  final VoidCallback? onTap;

  const InteractivePokemonCard({super.key, required this.child, this.onTap});

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

    _scaleAnimation =
        Tween<double>(
          begin: 1.0,
          end: 0.95, // Efecto de reducción al presionar
        ).animate(
          CurvedAnimation(parent: _hoverController, curve: Curves.easeInOut),
        );
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
      child: ScaleTransition(scale: _scaleAnimation, child: widget.child),
    );
  }
}
