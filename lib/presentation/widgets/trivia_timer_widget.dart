/// Archivo: trivia_timer_widget.dart
///
/// Descripción:
/// Temporizador visual circular para el juego de Trivia.
/// Indica cuánto tiempo le queda al jugador para responder.
///
/// Funcionalidades Principales:
/// - **Feedback de Color**: El anillo cambia de color progresivamente:
///   - Verde: > 50% del tiempo.
///   - Amarillo: > 20% del tiempo.
///   - Rojo: < 20% del tiempo (Peligro).
/// - **Animación de Latido**: Cuando quedan 5 segundos o menos, el número central pulsa
///   para generar tensión y alertar al usuario.
/// - **Interpolación**: Movimiento fluido del indicador de progreso entre segundos.
///
/// Uso:
/// Se coloca en la parte superior de `TriviaGameScreen`.
import 'package:flutter/material.dart';

/// Widget de temporizador circular animado.
/// Muestra el tiempo restante visualmente con un anillo de progreso y texto.
/// - Cambia de color (Verde -> Amarillo -> Rojo) según el tiempo restante.
/// - Incluye una animación de "latido" cuando queda poco tiempo.
class TriviaTimerWidget extends StatelessWidget {
  final int timeLeft;
  final int totalTime;
  final double size;

  const TriviaTimerWidget({
    super.key,
    required this.timeLeft,
    this.totalTime = 15,
    this.size = 80,
  });

  @override
  Widget build(BuildContext context) {
    final double targetProgress = timeLeft / totalTime;

    // Colores dinámicos basados en el tiempo restante
    Color getColor(double val) {
      if (val > 0.5) return const Color(0xFF4FC1A6); // Verde
      if (val > 0.2) return const Color(0xFFFFCE4B); // Amarillo
      return const Color(0xFFFA6555); // Rojo
    }

    return SizedBox(
      width: size,
      height: size,
      // TweenAnimationBuilder interpola el valor entre los segundos para un movimiento fluido
      child: TweenAnimationBuilder<double>(
        tween: Tween<double>(begin: 1.0, end: targetProgress),
        duration: const Duration(milliseconds: 1000),
        curve: Curves.linear,
        builder: (context, value, _) {
          final color = getColor(value);

          return Stack(
            alignment: Alignment.center,
            fit: StackFit.expand,
            children: [
              // Fondo del anillo (gris claro)
              CircularProgressIndicator(
                value: 1.0,
                strokeWidth: 8,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.grey[100]!),
              ),
              // Progreso animado fluido
              CircularProgressIndicator(
                value: value,
                strokeWidth: 8,
                strokeCap: StrokeCap.round,
                valueColor: AlwaysStoppedAnimation<Color>(color),
              ),
              // Texto central con animación de escala (latido) cuando queda poco tiempo
              Center(
                child: AnimatedScale(
                  scale: timeLeft <= 5 && timeLeft > 0 ? 1.2 : 1.0,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                  child: Text(
                    '$timeLeft',
                    style: TextStyle(
                      fontSize: size * 0.4,
                      fontWeight: FontWeight.bold,
                      color: color,
                      fontFamily: 'Roboto',
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
