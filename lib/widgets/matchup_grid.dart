import 'package:flutter/material.dart';
import 'package:pokedex/utils/type_chart.dart';
import 'package:pokedex/widgets/type_badge.dart';

class MatchupGrid extends StatelessWidget {
  final List<String> types;

  const MatchupGrid({super.key, required this.types});

  @override
  Widget build(BuildContext context) {
    final weaknesses = TypeChart.calculateWeaknesses(types);

    // Agrupamos por multiplicador
    final Map<double, List<String>> groups = {};
    weaknesses.forEach((type, factor) {
      groups.putIfAbsent(factor, () => []).add(type);
    });

    // Ordenamos las claves para mostrar primero las debilidades extremas (x4)
    final sortedKeys = groups.keys.toList()..sort((a, b) => b.compareTo(a));

    if (sortedKeys.isEmpty) {
      return const Center(child: Text('No particular weaknesses or resistances.'));
    }

    return Column(
      children: sortedKeys.map((factor) {
        final typeList = groups[factor]!;
        String label = '';
        Color color = Colors.black;

        if (factor == 4.0) { label = '4x Weak'; color = Colors.red[900]!; }
        else if (factor == 2.0) { label = '2x Weak'; color = Colors.red; }
        else if (factor == 0.5) { label = '0.5x Resist'; color = Colors.green; }
        else if (factor == 0.25) { label = '0.25x Resist'; color = Colors.green[800]!; }
        else if (factor == 0.0) { label = 'Immune'; color = Colors.grey; }

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 80,
                child: Text(label, style: TextStyle(fontWeight: FontWeight.bold, color: color, fontSize: 12)),
              ),
              Expanded(
                child: Wrap(
                  spacing: 6,
                  runSpacing: 6,
                  children: typeList.map((t) => TypeBadge(type: t, small: true)).toList(),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}