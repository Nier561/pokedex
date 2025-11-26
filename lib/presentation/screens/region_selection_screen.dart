import 'package:flutter/material.dart';
import 'package:pokedex/presentation/screens/list_screen.dart';
import 'package:pokedex/presentation/widgets/page_transitions.dart';

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
      appBar: AppBar(title: const Text('Select Region'), backgroundColor: Colors.white, elevation: 0, foregroundColor: Colors.black),
      backgroundColor: Colors.white,
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 16, mainAxisSpacing: 16, childAspectRatio: 0.9),
        itemCount: _regions.length,
        itemBuilder: (context, index) {
          final r = _regions[index];
          return _RegionCard(
            name: r['name'], generation: r['gen'], imageAsset: r['image'], color: r['color'],
            onTap: () {
              Navigator.push(context, SlideRightPageRoute(child: PokemonListScreen(initialGeneration: r['gen'])));
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
        decoration: BoxDecoration(color: color.withOpacity(0.15), borderRadius: BorderRadius.circular(20), border: Border.all(color: color.withOpacity(0.5), width: 2)),
        child: Column(
          children: [
            Expanded(child: Icon(Icons.map, size: 50, color: color)), // Placeholder simplificado
            Text(name, style: TextStyle(fontWeight: FontWeight.bold, color: color)),
          ],
        ),
      ),
    );
  }
}