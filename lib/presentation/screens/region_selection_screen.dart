/// Archivo: region_selection_screen.dart
///
/// Descripción:
/// Pantalla que permite al usuario filtrar la Pokédex por Generación (Región).
/// Presenta una interfaz visual atractiva con tarjetas para cada una de las 9 generaciones
/// principales de Pokémon.
///
/// Funcionalidades Principales:
/// - **Grid de Generaciones**: Muestra las generaciones de Kanto a Paldea en una cuadrícula.
/// - **Navegación Filtrada**: Al seleccionar una tarjeta, navega a la `PokemonListScreen`
///   configurada para mostrar solo los Pokémon de esa generación específica.
/// - **Diseño Temático**: Cada tarjeta tiene un color y una imagen representativa de la generación.
///
/// Datos Estáticos:
/// - Contiene una lista `_generations` con los metadatos (nombre, id, color, asset) de cada región.
///
/// Dependencias:
/// - `PokemonListScreen`: Destino de la navegación.
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/presentation/providers/language_provider.dart';
import 'package:pokedex/presentation/screens/list_screen.dart';
import 'package:pokedex/presentation/widgets/page_transitions.dart';

/// Pantalla de selección de Generación (Dex Generacional).
/// Muestra una cuadrícula con las diferentes generaciones de Pokémon (Kanto, Johto, etc.).
/// Permite al usuario navegar a la lista de Pokémon filtrada por la generación seleccionada.
class GenerationSelectionScreen extends ConsumerWidget {
  const GenerationSelectionScreen({super.key});

  static const List<Map<String, dynamic>> _generations = [
    {
      'gen': 1,
      'name': 'Kanto',
      'image': 'assets/images/gen1dex.png',
      'color': Color(0xFF78C850),
    },
    {
      'gen': 2,
      'name': 'Johto',
      'image': 'assets/images/gen2dex.png',
      'color': Color(0xFFA7DB8D),
    },
    {
      'gen': 3,
      'name': 'Hoenn',
      'image': 'assets/images/gen3dex.png',
      'color': Color(0xFF98D8D8),
    },
    {
      'gen': 4,
      'name': 'Sinnoh',
      'image': 'assets/images/gen4dex.png',
      'color': Color(0xFFA8A878),
    },
    {
      'gen': 5,
      'name': 'Unova',
      'image': 'assets/images/gen5dex.png',
      'color': Color(0xFFA040A0),
    },
    {
      'gen': 6,
      'name': 'Kalos',
      'image': 'assets/images/gen6dex.png',
      'color': Color(0xFFF85888),
    },
    {
      'gen': 7,
      'name': 'Alola',
      'image': 'assets/images/gen7dex.png',
      'color': Color(0xFFF08030),
    },
    {
      'gen': 8,
      'name': 'Galar',
      'image': 'assets/images/gen8dex.png',
      'color': Color(0xFF6890F0),
    },
    {
      'gen': 9,
      'name': 'Paldea',
      'image': 'assets/images/gen9dex.png',
      'color': Color(0xFF7038F8),
    },
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(languageProvider);
    String tr(String key) => S(locale).get(key);
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: Stack(
        children: [
          // Fondo decorativo
          Positioned(
            top: -60,
            right: -60,
            child: Icon(
              Icons.catching_pokemon,
              size: 300,
              color: isDark
                  ? Colors.white.withOpacity(0.05)
                  : Colors.grey.withOpacity(0.05),
            ),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                // Header personalizado
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: theme.textTheme.bodyLarge?.color,
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          tr('select_generation_dex'),
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: theme.textTheme.bodyLarge?.color,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),

                // Grid de Generaciones
                Expanded(
                  child: GridView.builder(
                    padding: const EdgeInsets.all(24),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                          childAspectRatio: 0.85,
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
                          Navigator.push(
                            context,
                            SlideRightPageRoute(
                              child: PokemonListScreen(
                                initialGeneration: g['gen'],
                              ),
                            ),
                          );
                        },
                        tr: tr,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Tarjeta que representa una generación específica.
/// Muestra el nombre de la región, el número de generación y una imagen representativa.
/// Utiliza un diseño visual atractivo con sombras y colores temáticos.
class _GenerationCard extends StatelessWidget {
  final String regionName;
  final int generation;
  final String imageAsset;
  final Color color;
  final VoidCallback onTap;
  final Function(String) tr;

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
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            fit: StackFit.expand,
            children: [
              // Decoración de fondo en la tarjeta
              Positioned(
                bottom: -15,
                right: -15,
                child: Icon(
                  Icons.catching_pokemon,
                  size: 80,
                  color: color.withOpacity(0.1),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${tr('generation')} $generation',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: color,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      regionName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: theme.textTheme.bodyLarge?.color,
                        fontSize: 20,
                      ),
                    ),
                    const Spacer(),
                    Center(
                      child: Image.asset(
                        imageAsset,
                        height: 80,
                        fit: BoxFit.contain,
                        errorBuilder: (context, error, stackTrace) {
                          debugPrint('Error loading image $imageAsset: $error');
                          return Icon(
                            Icons.broken_image,
                            size: 50,
                            color: color.withOpacity(0.5),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
