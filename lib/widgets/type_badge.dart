import 'package:flutter/material.dart';
import 'package:pokedex/widgets/type_gradients.dart';

class TypeBadge extends StatelessWidget {
  final String type;
  final Color? backgroundColor;
  final bool small;

  const TypeBadge({super.key, required this.type, this.backgroundColor, this.small = false});

  @override
  Widget build(BuildContext context) {
    final color = backgroundColor ?? solidBadgeColorForType(type);
    return Container(
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(16)),
      padding: small ? const EdgeInsets.symmetric(horizontal: 6, vertical: 2) : const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: Text(
        type.isNotEmpty ? type[0].toUpperCase() + type.substring(1) : '',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: small ? 10 : 12, height: 1.3, color: Colors.white, shadows: [Shadow(color: Colors.black.withOpacity(0.2), offset: const Offset(0, 1), blurRadius: 2)]),
      ),
    );
  }
}