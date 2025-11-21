import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Servicio Singleton para gestionar los Pokémon favoritos.
/// Utiliza SharedPreferences para persistencia local simple y rápida (<150ms).
/// Notifica a los listeners (UI) cuando hay cambios.
class FavoritesStore extends ChangeNotifier {
  static final FavoritesStore _instance = FavoritesStore._internal();

  factory FavoritesStore() => _instance;

  FavoritesStore._internal() {
    _loadFavorites();
  }

  final Set<int> _favoriteIds = {};
  bool _isLoaded = false;

  Set<int> get favorites => _favoriteIds;

  /// Carga los favoritos desde el disco al iniciar.
  Future<void> _loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String>? stored = prefs.getStringList('favorite_pokemon_ids');
    if (stored != null) {
      _favoriteIds.addAll(stored.map((e) => int.parse(e)));
    }
    _isLoaded = true;
    notifyListeners();
  }

  /// Alterna el estado de favorito de un Pokémon.
  /// Actualiza la memoria inmediatamente para la UI y guarda en segundo plano.
  void toggleFavorite(int id) {
    if (_favoriteIds.contains(id)) {
      _favoriteIds.remove(id);
    } else {
      _favoriteIds.add(id);
    }
    // Notificamos inmediatamente para respuesta UI < 150ms
    notifyListeners();
    _saveToDisk();
  }

  /// Verifica si un ID es favorito.
  bool isFavorite(int id) => _favoriteIds.contains(id);

  /// Persiste la lista actual en el almacenamiento local.
  Future<void> _saveToDisk() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(
      'favorite_pokemon_ids',
      _favoriteIds.map((e) => e.toString()).toList(),
    );
  }
}