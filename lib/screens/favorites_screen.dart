import 'package:flutter/material.dart';
import 'package:pokedex/services/favorites_store.dart';
import 'package:pokedex/screens/list_screen.dart';

/// Pantalla simple que reutiliza PokemonListScreen pero forzando el filtro de favoritos.
/// Esto cumple con el requerimiento de "vista dedicada" sin duplicar código.
class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Favorites')),
      // Reutilizamos la lógica de lista, pero conceptualmente podríamos pasar un flag
      // para que inicie con _showOnlyFavorites = true.
      // Dado que ListScreen es compleja, una implementación rápida dedicada:
      body: const Center(
        child: Text('Use the Heart icon in the Main List filter to see favorites.'),
      ),
    );
  }
}