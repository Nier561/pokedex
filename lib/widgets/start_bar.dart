import 'package:flutter/material.dart';

/// Barra horizontal para una estadística base (HP, ATK, etc.)
class StatBar extends StatelessWidget {
  final String label;
  final int value; // 0..255 típico en Pokémon
  final Color? color;

  const StatBar({
    super.key,
    required this.label,
    required this.value,
    this.color,
  });

  String _getStatDisplayName(String statName) {
    switch (statName.toLowerCase()) {
      case 'hp':
        return 'HP';
      case 'attack':
        return 'Attack';
      case 'defense':
        return 'Defense';
      case 'special-attack':
        return 'Sp. Atk';
      case 'special-defense':
        return 'Sp. Def';
      case 'speed':
        return 'Speed';
      default:
        return statName[0].toUpperCase() + statName.substring(1);
    }
  }

  Color _getStatColor(String statName) {
    // Color basado en el valor de la estadística
    if (value < 50) {
      return const Color(0xFFFF5959); // Rojo para valores bajos
    } else {
      return const Color(0xFF4CAF50); // Verde para valores altos
    }
  }

  @override
  Widget build(BuildContext context) {
    final pct = (value.clamp(0, 255)) / 255.0;
    final displayName = _getStatDisplayName(label);
    final statColor = color ?? _getStatColor(label);

    return Row(
      children: [
        SizedBox(
          width: 80,
          child: Text(
            displayName,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
        ),
        const SizedBox(width: 16),
        SizedBox(
          width: 40,
          child: Text(
            '$value',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Container(
            height: 8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.grey.shade200,
            ),
            child: FractionallySizedBox(
              alignment: Alignment.centerLeft,
              widthFactor: pct,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: statColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
