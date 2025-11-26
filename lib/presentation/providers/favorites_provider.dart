import 'package:flutter_riverpod/flutter_riverpod.dart';
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

  void toggle(int id) {
    final repo = ref.read(favoritesRepositoryProvider);
    repo.toggleFavorite(id); // Persiste
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