import 'package:flutter/material.dart';

/// Chip simple para mostrar el tipo del Pokémon.
/// (Si quieres colores por tipo, mapea aquí por nombre.)
class TypeBadge extends StatelessWidget {
  final String type;
  const TypeBadge({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(type),
      visualDensity: VisualDensity.compact,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    );
  }
}
