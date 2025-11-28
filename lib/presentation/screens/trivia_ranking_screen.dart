import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/presentation/providers/trivia_provider.dart';
import 'package:pokedex/presentation/providers/trivia_translations.dart';

/// Pantalla de Ranking (Tabla de Clasificación).
/// Muestra las 10 mejores puntuaciones históricas almacenadas localmente.
/// Destaca los 3 primeros lugares con medallas y colores especiales.
class TriviaRankingScreen extends ConsumerWidget {
  const TriviaRankingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final translations = ref.watch(triviaTranslationsProvider);
    final topScoresAsync = ref.watch(topScoresProvider);

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
                  translations.get('ranking'),
                  style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
                ),
                backgroundColor: Colors.transparent,
                elevation: 0,
                centerTitle: true,
                iconTheme: const IconThemeData(color: Colors.black87),
                floating: true,
                snap: true,
              ),
              topScoresAsync.when(
                data: (scores) {
                  if (scores.isEmpty) {
                    return SliverFillRemaining(
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(Icons.sentiment_dissatisfied, size: 64, color: Colors.grey),
                            const SizedBox(height: 16),
                            Text(
                              'No scores yet!',
                              style: TextStyle(color: Colors.grey[600], fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                    );
                  }

                  return SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final score = scores[index];
                        final isTop3 = index < 3;
                        
                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.1),
                                blurRadius: 10,
                                offset: const Offset(0, 5),
                              ),
                            ],
                          ),
                          child: ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            leading: CircleAvatar(
                              backgroundColor: _getRankColor(index),
                              child: Text(
                                '#${index + 1}',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            title: Text(
                              '${score.totalScore} pts',
                              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            subtitle: Text(
                              '${translations.get('accuracy')}: ${score.accuracy.toStringAsFixed(0)}% • ${score.date.day}/${score.date.month}/${score.date.year}',
                            ),
                            trailing: isTop3 ? const Icon(Icons.star, color: Colors.amber) : null,
                          ),
                        );
                      },
                      childCount: scores.length,
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

  Color _getRankColor(int index) {
    switch (index) {
      case 0: return const Color(0xFFFFD700); // Gold
      case 1: return const Color(0xFFC0C0C0); // Silver
      case 2: return const Color(0xFFCD7F32); // Bronze
      default: return const Color(0xFF8B7ED8); // Default theme color
    }
  }
}
