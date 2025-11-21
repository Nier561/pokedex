import 'package:flutter/material.dart';
import 'package:pokedex/screens/list_screen.dart';
import 'package:pokedex/widgets/page_transitions.dart';

class RegionSelectionScreen extends StatelessWidget {
  const RegionSelectionScreen({super.key});

  static const List<Map<String, dynamic>> _regions = [
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Select Region', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        leading: IconButton(icon: const Icon(Icons.arrow_back, color: Colors.black), onPressed: () => Navigator.pop(context)),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 16, mainAxisSpacing: 16, childAspectRatio: 1.1),
        itemCount: _regions.length,
        itemBuilder: (context, index) {
          final region = _regions[index];
          return _RegionCard(
            name: region['name'],
            generation: region['gen'],
            imageAsset: region['image'],
            color: region['color'],
            onTap: () {
              Navigator.push(context, ScaleFadePageRoute(
                child: PokemonListScreen(initialGeneration: region['gen']),
              ));
            },
          );
        },
      ),
    );
  }
}

class _RegionCard extends StatelessWidget {
  final String name;
  final int generation;
  final String imageAsset;
  final Color color;
  final VoidCallback onTap;

  const _RegionCard({required this.name, required this.generation, required this.imageAsset, required this.color, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        decoration: BoxDecoration(
          color: color.withOpacity(0.15),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: color.withOpacity(0.5), width: 2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(imageAsset, fit: BoxFit.contain, errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image, size: 40, color: Colors.grey)),
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 8),
              decoration: BoxDecoration(color: color.withOpacity(0.8), borderRadius: const BorderRadius.vertical(bottom: Radius.circular(18))),
              child: Column(children: [
                Text(name, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
                Text('Gen $generation', style: const TextStyle(color: Colors.white70, fontSize: 12)),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}