import 'package:flutter/material.dart';

class StatBar extends StatelessWidget {
  final String label;
  final int value;
  static const double _maxStat = 255.0;

  const StatBar({super.key, required this.label, required this.value});

  Color _getStatColor(int val) {
    if (val >= 150) return Colors.cyan;
    if (val >= 90) return const Color(0xFF4CAF50);
    if (val >= 60) return const Color(0xFFFFC107);
    return const Color(0xFFF44336);
  }

  String _normalizeLabel(String l) {
    switch (l.toLowerCase()) {
      case 'hp': return 'HP';
      case 'attack': return 'Atk';
      case 'defense': return 'Def';
      case 'special-attack': return 'SpA';
      case 'special-defense': return 'SpD';
      case 'speed': return 'Spe';
      default: return l;
    }
  }

  @override
  Widget build(BuildContext context) {
    final color = _getStatColor(value);
    return Row(children: [
      SizedBox(width: 40, child: Text(_normalizeLabel(label), style: TextStyle(fontWeight: FontWeight.bold, color: color, fontSize: 12))),
      SizedBox(width: 35, child: Text('$value', textAlign: TextAlign.right, style: const TextStyle(fontWeight: FontWeight.w500, color: Colors.black87, fontSize: 12))),
      const SizedBox(width: 12),
      Expanded(child: TweenAnimationBuilder<double>(
        tween: Tween<double>(begin: 0, end: value / _maxStat),
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeOutCubic,
        builder: (context, percentage, _) => Stack(children: [
          Container(height: 6, decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(3))),
          FractionallySizedBox(widthFactor: percentage.clamp(0.0, 1.0), child: Container(height: 6, decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(3), boxShadow: [BoxShadow(color: color.withOpacity(0.4), blurRadius: 4, offset: const Offset(0, 1))]))),
        ]),
      )),
    ]);
  }
}