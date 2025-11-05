import 'package:flutter/material.dart';
import 'package:pokedex/widgets/type_gradients.dart';

/// Chip estilizado que muestra el tipo principal de un Pokémon.
/// Usa el color calculado en `solidBadgeColorForType` para reforzar la identidad.
class TypeBadge extends StatelessWidget {
  final String type;
  final Color? backgroundColor;
  const TypeBadge({super.key, required this.type, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    final color = backgroundColor ?? solidBadgeColorForType(type);
    final textColor = (color.computeLuminance() > 0.5)
        ? Colors.white
        : Colors.white;

    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      child: Text(
        type[0].toUpperCase() + type.substring(1),
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 11,
          height: 1.3,
          color: textColor,
        ),
      ),
    );
  }
}
