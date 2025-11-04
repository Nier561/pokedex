import 'package:flutter/material.dart';
import 'package:pokedex/widgets/pokemon_card.dart';

/// Widget animado que envuelve una tarjeta de Pokémon con efectos de entrada
class AnimatedPokemonCard extends StatefulWidget {
  final String name;
  final List<String> types;
  final String imageUrl;
  final LinearGradient background;
  final VoidCallback? onTap;
  final int index;

  const AnimatedPokemonCard({
    super.key,
    required this.name,
    required this.types,
    required this.imageUrl,
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
    // Limita retraso por índice para que los últimos ítems no tarden en aparecer
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
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                  child: PokemonCard(
                    name: widget.name,
                    types: widget.types,
                    imageUrl: widget.imageUrl,
                    background: widget.background,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

/// Widget que añade efectos de hover/tap a las tarjetas
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
  late Animation<double> _elevationAnimation;

  @override
  void initState() {
    super.initState();
    
    _hoverController = AnimationController(
      duration: const Duration(milliseconds: 150),
      vsync: this,
    );

    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 1.05,
    ).animate(CurvedAnimation(
      parent: _hoverController,
      curve: Curves.easeInOut,
    ));

    _elevationAnimation = Tween<double>(
      begin: 2.0,
      end: 8.0,
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
    return AnimatedBuilder(
      animation: _hoverController,
      builder: (context, child) {
        return Transform.scale(
          scale: _scaleAnimation.value,
          child: Card(
            elevation: _elevationAnimation.value,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: InkWell(
              onTap: widget.onTap,
              onTapDown: (_) => _hoverController.forward(),
              onTapUp: (_) => _hoverController.reverse(),
              onTapCancel: () => _hoverController.reverse(),
              child: widget.child,
            ),
          ),
        );
      },
    );
  }
}