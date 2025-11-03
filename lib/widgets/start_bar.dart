import 'package:flutter/material.dart';

/// Barra horizontal para una estadística base (HP, ATK, etc.)
class StatBar extends StatelessWidget {
  final String label;
  final int value; // 0..255 típico en Pokémon

  const StatBar({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    final pct = (value.clamp(0, 255)) / 255.0;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(child: Text(label.toUpperCase())),
            Text('$value'),
          ],
        ),
        const SizedBox(height: 4),
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: LinearProgressIndicator(
            value: pct,
            minHeight: 10,
          ),
        ),
      ],
    );
  }
}
