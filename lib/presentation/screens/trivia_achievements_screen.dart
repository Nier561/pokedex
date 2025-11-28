import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/presentation/providers/trivia_provider.dart';
import 'package:pokedex/presentation/providers/trivia_translations.dart';
import 'package:pokedex/presentation/widgets/achievement_card_widget.dart';

/// Pantalla que muestra la lista de logros disponibles y desbloqueados por el usuario.
/// Utiliza un [CustomScrollView] con [SliverGrid] para un diseño responsivo y moderno.
class TriviaAchievementsScreen extends ConsumerWidget {
  const TriviaAchievementsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final translations = ref.watch(triviaTranslationsProvider);
    final achievementsAsync = ref.watch(achievementsProvider);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: -60,
            right: -60,
            child: Icon(
              Icons.emoji_events,
              size: 300,
              color: Colors.grey.withOpacity(0.05),
            ),
          ),
          CustomScrollView(
            slivers: [
              SliverAppBar(
                title: Text(
                  translations.get('achievements'),
                  style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
                ),
                backgroundColor: Colors.transparent,
                elevation: 0,
                centerTitle: true,
                iconTheme: const IconThemeData(color: Colors.black87),
                floating: true,
                snap: true,
              ),
              achievementsAsync.when(
                data: (achievements) {
                  return SliverPadding(
                    padding: const EdgeInsets.all(16),
                    sliver: SliverGrid(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16,
                        mainAxisSpacing: 16,
                        childAspectRatio: 0.85,
                      ),
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          return AchievementCardWidget(achievement: achievements[index]);
                        },
                        childCount: achievements.length,
                      ),
                    ),
                  );
                },
                loading: () => const SliverFillRemaining(child: Center(child: CircularProgressIndicator())),
                error: (err, stack) => SliverFillRemaining(child: Center(child: Text('Error: $err'))),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
