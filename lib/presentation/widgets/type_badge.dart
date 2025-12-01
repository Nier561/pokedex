/// Archivo: type_badge.dart
///
/// Descripción:
/// Chip o etiqueta visual que representa un tipo elemental de Pokémon (Fuego, Agua, etc.).
///
/// Funcionalidades Principales:
/// - **Estilo Consistente**: Aplica el color oficial del tipo (o un gradiente) y texto blanco.
/// - **Variantes**:
///   - **Normal**: Rectángulo redondeado con nombre completo.
///   - **Pequeño**: Versión compacta para listas densas.
///   - **Sin Texto**: Círculo de color puro (usado en contextos decorativos o muy pequeños).
/// - **Sombra**: Sutil elevación para separarlo del fondo.
///
/// Uso:
/// Omnipresente en la app: tarjetas, detalles, filtros, tabla de tipos.
import 'package:flutter/material.dart';
import 'package:pokedex/presentation/widgets/type_gradients.dart';

class TypeBadge extends StatelessWidget {
  final String type;
  final Color? backgroundColor;
  final bool small;
  final bool showText;

  const TypeBadge({
    super.key,
    required this.type,
    this.backgroundColor,
    this.small = false,
    this.showText = true, // Por defecto muestra el texto
  });

  @override
  Widget build(BuildContext context) {
    final color = backgroundColor ?? solidBadgeColorForType(type);

    // Si no mostramos texto, hacemos un círculo pequeño (para la carta TCG)
    if (!showText) {
      return Container(
        width: small ? 16 : 24,
        height: small ? 16 : 24,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.2),
              offset: const Offset(0, 1),
              blurRadius: 2,
            ),
          ],
          border: Border.all(color: Colors.white, width: 1),
        ),
      );
    }

    // Comportamiento normal (Badge con texto)
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: small
          ? const EdgeInsets.symmetric(horizontal: 6, vertical: 2)
          : const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: Text(
        type.isNotEmpty ? type[0].toUpperCase() + type.substring(1) : '',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: small ? 10 : 12,
          height: 1.3,
          color: Colors.white,
          shadows: [
            Shadow(
              color: Colors.black.withValues(alpha: 0.2),
              offset: const Offset(0, 1),
              blurRadius: 2,
            ),
          ],
        ),
      ),
    );
  }
}
