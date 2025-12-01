import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/main.dart'; // Acceso a la inyección (provider global)

/// Notifier que maneja el estado de favoritos (Set<int>).
class FavoritesNotifier extends Notifier<Set<int>> {
  @override
  Set<int> build() {
    // Carga inicial
    _load();
    return {};
  }

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/main.dart'; // Acceso a la inyección (provider global)

/// Notifier que maneja el estado de favoritos (Set<int>).
class FavoritesNotifier extends Notifier<Set<int>> {
  @override
  Set<int> build() {
    // Carga inicial
    _load();
    return {};
  }

  Future<void> _load() async {
    final repo = ref.read(favoritesRepositoryProvider);
    await repo.loadFavorites();
    state = repo.getFavorites();
  }

  /// Toggle de favorito: ahora acepta el objeto Pokemon y su detalle opcional
  void toggle(int id, {Pokemon? pokemon, dynamic detail}) {
    final repo = ref.read(favoritesRepositoryProvider);
    
    // Persiste en Hive
    // Nota: 'detail' viene como dynamic para evitar import circular si fuera necesario,
    // pero idealmente importamos PokemonDetail.
    // Aquí asumimos que el llamador pasa el tipo correcto.
    // Hacemos cast si es necesario o importamos.
    // Vamos a importar PokemonDetail arriba si no está.
    
    // Como no puedo añadir imports fácilmente con replace_file_content en un bloque pequeño,
    // asumiré que detail es PokemonDetail? y el archivo ya tiene los imports necesarios o los añadiré.
    // Revisando el archivo original, NO tiene import de PokemonDetail.
    // Así que usaré dynamic y cast dentro, o mejor, actualizaré los imports en otro paso si falla.
    // Pero espera, puedo usar 'covariant' o simplemente dynamic.
    
    repo.toggleFavorite(id, pokemon, detail: detail);
    
    // Actualiza estado local inmediatamente para UI
    if (state.contains(id)) {
      state = {...state}..remove(id);
    } else {
      state = {...state}..add(id);
    }
  }


  bool isFav(int id) => state.contains(id);
}

final favoritesProvider = NotifierProvider<FavoritesNotifier, Set<int>>(FavoritesNotifier.new);