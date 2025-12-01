import 'package:flutter/material.dart';

class AnimatedLikeButton extends StatefulWidget {
  final bool isLiked;
  final VoidCallback onPressed;
  final Color color;

  const AnimatedLikeButton({
    super.key,
    required this.isLiked,
    required this.onPressed,
    this.color = Colors.white,
  });

  @override
  State<AnimatedLikeButton> createState() => _AnimatedLikeButtonState();
}

class _AnimatedLikeButtonState extends State<AnimatedLikeButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant AnimatedLikeButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isLiked != oldWidget.isLiked) {
      if (widget.isLiked) {
        _scaleAnimation =
            TweenSequence<double>([
              TweenSequenceItem(tween: Tween(begin: 1.0, end: 1.5), weight: 50),
              TweenSequenceItem(tween: Tween(begin: 1.5, end: 1.0), weight: 50),
            ]).animate(
              CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
            );
      } else {
        _scaleAnimation =
            TweenSequence<double>([
              TweenSequenceItem(tween: Tween(begin: 1.0, end: 0.6), weight: 50),
              TweenSequenceItem(tween: Tween(begin: 0.6, end: 1.0), weight: 50),
            ]).animate(
              CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
            );
      }
      _controller.forward(from: 0.0);
    }
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: ScaleTransition(
        scale: _scaleAnimation,
        child: Icon(
          widget.isLiked ? Icons.favorite : Icons.favorite_border,
          color: widget.color,
        ),
      ),
      onPressed: widget.onPressed,
    );
  }
}
