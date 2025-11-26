import 'package:flutter/material.dart';
import 'package:pokedex/presentation/screens/list_screen.dart';
import 'package:pokedex/presentation/widgets/page_transitions.dart';

class GenerationSelectionScreen extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Select Generation Dex',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        // Ajustamos el aspect ratio para que quepa bien la imagen y el texto
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
              // Navegamos pasando el número de generación
              Navigator.push(context, SlideRightPageRoute(child: PokemonListScreen(initialGeneration: g['gen'])));
            },
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

  const _GenerationCard({
    required this.regionName,
    required this.generation,
    required this.imageAsset,
    required this.color,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        decoration: BoxDecoration(
          color: color.withOpacity(0.10), // Fondo sutil
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: color.withOpacity(0.6), width: 2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // IMAGEN
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(
                  imageAsset,
                  fit: BoxFit.contain,
                  // Fallback por si la imagen no carga o no existe aún en assets
                  errorBuilder: (context, error, stackTrace) {
                    return Icon(Icons.broken_image, size: 50, color: color.withOpacity(0.5));
                  },
                ),
              ),
            ),

            // TEXTO: Gen X (Region)
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
              width: double.infinity,
              decoration: BoxDecoration(
                color: color.withOpacity(0.2),
                borderRadius: const BorderRadius.vertical(bottom: Radius.circular(18)),
              ),
              child: Text(
                'Gen $generation ($regionName)',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}