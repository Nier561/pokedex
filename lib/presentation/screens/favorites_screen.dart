import 'package:flutter/material.dart';

/// Pantalla simple de referencia.
class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Favorites')),
      body: const Center(
        child: Text('Use the Heart icon in the Main List filter to see favorites.'),
      ),
    );
  }
}