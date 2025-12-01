/// Archivo: favorites_screen.dart
///
/// Descripción:
/// Pantalla que muestra la colección de Pokémon marcados como favoritos por el usuario.
/// Permite visualizar, buscar y acceder rápidamente a los detalles de los Pokémon guardados.
///
/// Funcionalidades Principales:
/// - **Listado en Cuadrícula**: Muestra los Pokémon favoritos en un GridView optimizado.
/// - **Búsqueda Local**: Barra de búsqueda para filtrar los favoritos por nombre o número de Pokédex.
/// - **Persistencia**: Se sincroniza con el `favoritesProvider` que gestiona el almacenamiento local (Hive).
/// - **Navegación**: Permite navegar al detalle de cualquier Pokémon seleccionado.
/// - **Feedback Visual**: Muestra estados vacíos con mensajes e iconos apropiados si no hay favoritos
///   o si la búsqueda no arroja resultados.
///
/// Diseño:
/// - Utiliza tarjetas interactivas (`InteractivePokemonCard`) con animaciones.
/// - Fondo decorativo con icono de corazón sutil.
/// - Adaptable al tema claro/oscuro de la aplicación.
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:pokedex/presentation/providers/favorites_provider.dart';
import 'package:pokedex/presentation/providers/language_provider.dart';
import 'package:pokedex/presentation/screens/detail_screen.dart';
import 'package:pokedex/presentation/widgets/type_gradients.dart';
import 'package:pokedex/presentation/widgets/page_transitions.dart';
import 'package:pokedex/presentation/widgets/animated_pokemon_card.dart';

class FavoritesScreen extends ConsumerStatefulWidget {
  const FavoritesScreen({super.key});

  @override
  ConsumerState<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends ConsumerState<FavoritesScreen> {
  final _scroll = ScrollController();
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  void dispose() {
    _scroll.dispose();
    _searchController.dispose();
    super.dispose();
  }

  Widget _buildSearchBar(String currentQuery, Function(String) tr) {
    final theme = Theme.of(context);
    if (_searchController.text != currentQuery) {
      _searchController.text = currentQuery;
      _searchController.selection = TextSelection.fromPosition(
        TextPosition(offset: _searchController.text.length),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      child: Container(
        decoration: BoxDecoration(
          color: theme.cardColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: TextField(
          controller: _searchController,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: theme.textTheme.bodyLarge?.color,
          ),
          decoration: InputDecoration(
            hintText: tr('search_hint'),
            hintStyle: TextStyle(color: Colors.grey.shade400),
            prefixIcon: Icon(Icons.search, color: Colors.grey.shade400),
            suffixIcon: currentQuery.isNotEmpty
                ? IconButton(
                    icon: const Icon(Icons.clear, size: 20),
                    color: Colors.grey.shade400,
                    onPressed: () {
                      setState(() {
                        _searchQuery = '';
                      });
                    },
                  )
                : null,
            border: InputBorder.none,
            contentPadding: const EdgeInsets.symmetric(
              vertical: 14,
              horizontal: 20,
            ),
          ),
          onChanged: (v) {
            setState(() {
              _searchQuery = v;
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final locale = ref.watch(languageProvider);
    String tr(String key) => S(locale).get(key);
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    final favorites = ref.watch(favoritesProvider);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: Stack(
        children: [
          Positioned(
            top: -60,
            right: -60,
            child: Icon(
              Icons.favorite,
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
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
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
                      Text(
                        tr('favorites'),
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: theme.textTheme.bodyLarge?.color,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                ),
                _buildSearchBar(_searchQuery, tr),
                Expanded(
                  child: Builder(
                    builder: (context) {
                      final favoritePokemons = favorites.list.where((p) {
                        if (_searchQuery.isEmpty) return true;
                        final q = _searchQuery.toLowerCase();
                        return p.name.toLowerCase().contains(q) ||
                            p.id.toString().contains(q);
                      }).toList();

                      if (favoritePokemons.isEmpty) {
                        return Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                _searchQuery.isEmpty
                                    ? Icons.favorite_border
                                    : Icons.search_off,
                                size: 64,
                                color: Colors.grey.withOpacity(0.5),
                              ),
                              const SizedBox(height: 16),
                              Text(
                                _searchQuery.isEmpty
                                    ? tr('no_favorites')
                                    : tr('no_pokemon_found'),
                                style: TextStyle(
                                  color: Colors.grey.withOpacity(0.8),
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        );
                      }

                      return GridView.builder(
                        controller: _scroll,
                        padding: const EdgeInsets.all(12),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1,
                              childAspectRatio: 2.5,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 12,
                            ),
                        itemCount: favoritePokemons.length,
                        itemBuilder: (context, index) {
                          final p = favoritePokemons[index];
                          final primaryType = p.types.isNotEmpty
                              ? p.types.first
                              : 'normal';

                          return Semantics(
                            label: 'Pokemon ${p.name}, type ${primaryType}',
                            button: true,
                            child: InteractivePokemonCard(
                              onTap: () {
                                Navigator.of(
                                  context,
                                ).pushWithScaleFadeTransition(
                                  PokemonDetailScreen(
                                    id: p.id,
                                    cachedPokemon: p,
                                    listIds: favoritePokemons
                                        .map((e) => e.id)
                                        .toList(),
                                    initialIndex: index,
                                  ),
                                );
                              },
                              child: Stack(
                                fit: StackFit.expand,
                                children: [
                                  AnimatedPokemonCard(
                                    index: index,
                                    name: p.displayName,
                                    types: p.types,
                                    imageUrl: p.imageUrl,
                                    background:
                                        typeGradients[primaryType] ??
                                        typeGradients['normal']!,
                                    isLarge: true,
                                  ),
                                  const Positioned(
                                    top: 8,
                                    right: 8,
                                    child: Icon(
                                      Icons.favorite,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
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
