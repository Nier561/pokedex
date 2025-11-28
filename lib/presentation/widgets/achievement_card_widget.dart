import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/domain/entities/achievement.dart';
import 'package:pokedex/presentation/providers/trivia_translations.dart';

/// Widget que representa una tarjeta individual de logro.
/// Cambia su apariencia visual dependiendo de si el logro está desbloqueado o no:
/// - Bloqueado: Gris, icono de candado, sin descripción.
/// - Desbloqueado: Colorido, icono del logro, descripción visible.
class AchievementCardWidget extends ConsumerWidget {
  final Achievement achievement;

  const AchievementCardWidget({super.key, required this.achievement});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final translations = ref.watch(triviaTranslationsProvider);
    
    return Container(
      decoration: BoxDecoration(
        color: achievement.isUnlocked ? Colors.white : Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: achievement.isUnlocked 
                ? const Color(0xFFFFCE4B).withOpacity(0.2) 
                : Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
        border: achievement.isUnlocked 
            ? Border.all(color: const Color(0xFFFFCE4B), width: 2)
            : null,
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                achievement.isUnlocked ? achievement.icon : '🔒',
                style: const TextStyle(fontSize: 40),
              ),
              const SizedBox(height: 12),
              Text(
                translations.get(achievement.nameKey),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: achievement.isUnlocked ? Colors.black87 : Colors.grey,
                ),
              ),
              if (achievement.isUnlocked) ...[
                const SizedBox(height: 4),
                Text(
                  translations.get(achievement.descriptionKey),
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
