/// Archivo: error_view.dart
///
/// Descripción:
/// Widget reutilizable para mostrar estados de error de manera amigable.
///
/// Funcionalidades Principales:
/// - **Feedback Visual**: Muestra un icono de error y un mensaje descriptivo.
/// - **Acción de Reintento**: Incluye un botón para ejecutar una función de callback (`onRetry`)
///   y permitir al usuario intentar la operación nuevamente.
/// - **Modo Compacto**: Puede renderizarse en una versión reducida para ocupar menos espacio
///   (útil dentro de listas o tarjetas).
///
/// Uso:
/// Se emplea en pantallas de carga de datos (Listas, Detalles, Trivia) cuando falla la red
/// o ocurre una excepción.
import 'package:flutter/material.dart';

class ErrorView extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;
  final bool isCompact; // Para usarlo dentro de listas o espacios pequeños

  const ErrorView({
    super.key,
    required this.message,
    required this.onRetry,
    this.isCompact = false,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: isCompact ? MainAxisSize.min : MainAxisSize.max,
          children: [
            Icon(
              Icons.cloud_off_rounded,
              size: isCompact ? 40 : 80,
              color: Colors.red.shade300,
            ),
            const SizedBox(height: 16),
            Text(
              'Oops!',
              style: TextStyle(
                fontSize: isCompact ? 18 : 24,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
            ),
            const SizedBox(height: 24),
            ElevatedButton.icon(
              onPressed: onRetry,
              icon: const Icon(Icons.refresh),
              label: const Text('Try Again'),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(
                  0xFF8B7ED8,
                ), // Color principal de tu app
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
