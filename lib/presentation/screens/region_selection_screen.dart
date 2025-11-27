import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; // Import Riverpod
import 'package:pokedex/presentation/providers/language_provider.dart'; // Import Language
import 'package:pokedex/presentation/screens/list_screen.dart';
import 'package:pokedex/presentation/widgets/page_transitions.dart';

// Cambiado a ConsumerWidget
class GenerationSelectionScreen extends ConsumerWidget {
  const GenerationSelectionScreen({super.key});

  static const List<Map<String, dynamic>> _generations = [
    {'gen': 1, 'name': 'Kanto', 'image': 'assets/images/gen1dex.png', 'color': Color(0xFF78C850)},
    {'gen': 2, 'name': 'Johto', 'image': 'assets/images/gen2dex.png', 'color': Color(0xFFA7DB8D)},
    {'gen': 3, 'name': 'Hoenn', 'image': 'assets/images/gen3dex.png', 'color': Color(0xFF98D8D8)},
    {'gen': 4, 'name': 'Sinnoh', 'image': 'assets/images/gen4dex.png', 'color': Color(0xFFA8A878)},
    {'gen': 5, 'name': 'Unova', 'image': 'assets/images/gen5dex.png', 'color': Color(0xFFA040A0)},
    {'gen': 6, 'name': 'Kalos', 'image': 'assets/images/gen6dex.png', 'color': Color(0xFFF85888)},
    {'gen': 7, 'name': 'Alola', 'image': 'assets/images/gen7dex.png', 'color': Color(0xFFF08030)},
    {'gen': 8, 'name': 'Galar', 'image': 'assets/images/gen8dex.png', 'color': Color(0xFF6890F0)},
    {'gen': 9, 'name': 'Paldea', 'image': 'assets/images/gen9dex.png', 'color': Color(0xFF7038F8)},
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Acceso a traducciones
    final locale = ref.watch(languageProvider);
    String tr(String key) => S(locale).get(key);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          tr('select_generation_dex'), // Traducido
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 0.85
        ),
        itemCount: _generations.length,
        itemBuilder: (context, index) {
          final g = _generations[index];
          return _GenerationCard(
            regionName: g['name'],
            generation: g['gen'],
            imageAsset: g['image'],
            color: g['color'],
            onTap: () {
              Navigator.push(context, SlideRightPageRoute(child: PokemonListScreen(initialGeneration: g['gen'])));
            },
            tr: tr, // Pasamos la función de traducción
          );
        },
      ),
    );
  }
}

class _GenerationCard extends StatelessWidget {
  final String regionName;
  final int generation;
  final String imageAsset;
  final Color color;
  final VoidCallback onTap;
  final Function(String) tr; // Recibimos el traductor

  const _GenerationCard({
    required this.regionName,
    required this.generation,
    required this.imageAsset,
    required this.color,
    required this.onTap,
    required this.tr,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        decoration: BoxDecoration(
          color: color.withOpacity(0.10),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: color.withOpacity(0.6), width: 2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(
                  imageAsset,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return Icon(Icons.broken_image, size: 50, color: color.withOpacity(0.5));
                  },
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              width: double.infinity,
              decoration: BoxDecoration(
                color: color.withOpacity(0.2),
                borderRadius: const BorderRadius.vertical(bottom: Radius.circular(18)),
              ),
              child: Text(
                '${tr('generation')} $generation ($regionName)', // "Generación 3 (Hoenn)"
                textAlign: TextAlign.center,
                style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black87, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}