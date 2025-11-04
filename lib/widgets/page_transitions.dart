import 'package:flutter/material.dart';

/// Transición de página con efecto de deslizamiento desde la derecha
class SlideRightPageRoute<T> extends PageRouteBuilder<T> {
  final Widget child;
  final Duration duration;

  SlideRightPageRoute({
    required this.child,
    this.duration = const Duration(milliseconds: 400),
    RouteSettings? settings,
  }) : super(
          pageBuilder: (context, animation, secondaryAnimation) => child,
          settings: settings,
          transitionDuration: duration,
          reverseTransitionDuration: duration,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            const curve = Curves.easeInOut;

            var tween = Tween(begin: begin, end: end).chain(
              CurveTween(curve: curve),
            );

            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
        );
}

/// Transición de página con efecto de fundido
class FadePageRoute<T> extends PageRouteBuilder<T> {
  final Widget child;
  final Duration duration;

  FadePageRoute({
    required this.child,
    this.duration = const Duration(milliseconds: 300),
    RouteSettings? settings,
  }) : super(
          pageBuilder: (context, animation, secondaryAnimation) => child,
          settings: settings,
          transitionDuration: duration,
          reverseTransitionDuration: duration,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation.drive(
                Tween(begin: 0.0, end: 1.0).chain(
                  CurveTween(curve: Curves.easeInOut),
                ),
              ),
              child: child,
            );
          },
        );
}

/// Transición de página con efecto de escala y fundido para detalles
class ScaleFadePageRoute<T> extends PageRouteBuilder<T> {
  final Widget child;
  final Duration duration;

  ScaleFadePageRoute({
    required this.child,
    this.duration = const Duration(milliseconds: 500),
    RouteSettings? settings,
  }) : super(
          pageBuilder: (context, animation, secondaryAnimation) => child,
          settings: settings,
          transitionDuration: duration,
          reverseTransitionDuration: duration,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const curve = Curves.easeInOut;
            
            var scaleAnimation = Tween(begin: 0.8, end: 1.0).animate(
              CurvedAnimation(parent: animation, curve: curve),
            );
            
            var fadeAnimation = Tween(begin: 0.0, end: 1.0).animate(
              CurvedAnimation(parent: animation, curve: curve),
            );

            return FadeTransition(
              opacity: fadeAnimation,
              child: ScaleTransition(
                scale: scaleAnimation,
                child: child,
              ),
            );
          },
        );
}

/// Transición de página con efecto de deslizamiento desde abajo
class SlideUpPageRoute<T> extends PageRouteBuilder<T> {
  final Widget child;
  final Duration duration;

  SlideUpPageRoute({
    required this.child,
    this.duration = const Duration(milliseconds: 400),
    RouteSettings? settings,
  }) : super(
          pageBuilder: (context, animation, secondaryAnimation) => child,
          settings: settings,
          transitionDuration: duration,
          reverseTransitionDuration: duration,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(0.0, 1.0);
            const end = Offset.zero;
            const curve = Curves.easeInOut;

            var tween = Tween(begin: begin, end: end).chain(
              CurveTween(curve: curve),
            );

            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
        );
}

/// Extensión para facilitar la navegación con transiciones personalizadas
extension NavigatorExtensions on NavigatorState {
  Future<T?> pushWithSlideTransition<T extends Object?>(
    Widget page, {
    Duration? duration,
    RouteSettings? settings,
  }) {
    return push<T>(
      SlideRightPageRoute<T>(
        child: page,
        duration: duration ?? const Duration(milliseconds: 400),
        settings: settings,
      ),
    );
  }

  Future<T?> pushWithFadeTransition<T extends Object?>(
    Widget page, {
    Duration? duration,
    RouteSettings? settings,
  }) {
    return push<T>(
      FadePageRoute<T>(
        child: page,
        duration: duration ?? const Duration(milliseconds: 300),
        settings: settings,
      ),
    );
  }

  Future<T?> pushWithScaleFadeTransition<T extends Object?>(
    Widget page, {
    Duration? duration,
    RouteSettings? settings,
  }) {
    return push<T>(
      ScaleFadePageRoute<T>(
        child: page,
        duration: duration ?? const Duration(milliseconds: 500),
        settings: settings,
      ),
    );
  }
}