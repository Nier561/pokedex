import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/domain/entities/pokemon_detail.dart';
import 'package:pokedex/main.dart'; // Acceso a la inyección (provider global)

/// Notifier que maneja el estado de favoritos (`Set<int>`).
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
  void toggle(int id, {Pokemon? pokemon, PokemonDetail? detail}) {
    final repo = ref.read(favoritesRepositoryProvider);

    // Persiste en Hive
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

final favoritesProvider = NotifierProvider<FavoritesNotifier, Set<int>>(
  FavoritesNotifier.new,
);
