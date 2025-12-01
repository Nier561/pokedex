import 'dart:math';
import 'package:flutter/material.dart';

class FloatingHeartsOverlay extends StatefulWidget {
  final Widget child;
  const FloatingHeartsOverlay({super.key, required this.child});

  @override
  State<FloatingHeartsOverlay> createState() => FloatingHeartsOverlayState();
}

class FloatingHeartsOverlayState extends State<FloatingHeartsOverlay>
    with TickerProviderStateMixin {
  final List<_FloatingHeart> _hearts = [];
  final Random _random = Random();

  void showHearts({required bool isBroken}) {
    for (int i = 0; i < 15; i++) {
      _addHeart(isBroken: isBroken);
    }
  }

  void _addHeart({required bool isBroken}) {
    final controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1500 + _random.nextInt(1000)),
    );

    final heart = _FloatingHeart(
      controller: controller,
      isBroken: isBroken,
      startPosition: Offset(
        _random.nextDouble() * MediaQuery.of(context).size.width,
        MediaQuery.of(context).size.height,
      ),
      size: 20.0 + _random.nextDouble() * 20.0,
      color: isBroken ? Colors.grey : Colors.redAccent,
      onComplete: () {
        setState(() {
          _hearts.removeWhere((h) => h.controller == controller);
        });
        controller.dispose();
      },
    );

    setState(() {
      _hearts.add(heart);
    });

    controller.forward();
  }

  @override
  void dispose() {
    for (var heart in _hearts) {
      heart.controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget.child,
        ..._hearts.map((heart) => _buildHeartWidget(heart)),
      ],
    );
  }

  Widget _buildHeartWidget(_FloatingHeart heart) {
    return AnimatedBuilder(
      animation: heart.controller,
      builder: (context, child) {
        final progress = heart.controller.value;
        final yOffset = -progress * MediaQuery.of(context).size.height * 0.6;
        final xOffset = sin(progress * pi * 4) * 20.0;
        final opacity = 1.0 - progress;

        return Positioned(
          left: heart.startPosition.dx + xOffset,
          top: heart.startPosition.dy + yOffset - 100, // Start a bit higher
          child: Opacity(
            opacity: opacity,
            child: Icon(
              heart.isBroken ? Icons.heart_broken : Icons.favorite,
              color: heart.color,
              size: heart.size,
            ),
          ),
        );
      },
    );
  }
}

class _FloatingHeart {
  final AnimationController controller;
  final bool isBroken;
  final Offset startPosition;
  final double size;
  final Color color;
  final VoidCallback onComplete;

  _FloatingHeart({
    required this.controller,
    required this.isBroken,
    required this.startPosition,
    required this.size,
    required this.color,
    required this.onComplete,
  }) {
    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        onComplete();
      }
    });
  }
}
