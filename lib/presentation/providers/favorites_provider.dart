/// Archivo: favorites_provider.dart
///
/// Descripción:
/// Provider que gestiona el estado de los Pokémon favoritos en la aplicación.
/// Sincroniza el estado en memoria con la persistencia local.
///
/// Funcionalidades Principales:
/// - **Gestión de Estado**: Mantiene la lista de IDs y objetos `Pokemon` favoritos.
/// - **Sincronización**: Carga datos al inicio y persiste cambios (agregar/eliminar) usando el repositorio.
/// - **Reactividad**: Notifica a los widgets suscritos (como el botón de corazón) instantáneamente.
///
/// Dependencias:
/// - `favoritesRepositoryProvider`: Repositorio para operaciones de persistencia.
/// - `FavoritesNotifier`: Lógica de negocio del estado.
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/domain/entities/pokemon_detail.dart';
import 'package:pokedex/main.dart'; // Acceso a la inyección (provider global)

/// Estado del provider de favoritos.
class FavoritesState {
  final Set<int> ids;
  final List<Pokemon> list;

  FavoritesState({this.ids = const {}, this.list = const []});

  bool contains(int id) => ids.contains(id);
}

/// Notifier que maneja el estado de favoritos (IDs y lista completa).
class FavoritesNotifier extends Notifier<FavoritesState> {
  @override
  FavoritesState build() {
    // Carga inicial
    _load();
    return FavoritesState();
  }

  Future<void> _load() async {
    final repo = ref.read(favoritesRepositoryProvider);
    await repo.loadFavorites();
    final ids = repo.getFavorites();
    final list = repo.getFavoritePokemon();
    state = FavoritesState(ids: ids, list: list);
  }

  /// Toggle de favorito: ahora acepta el objeto Pokemon y su detalle opcional
  void toggle(int id, {Pokemon? pokemon, PokemonDetail? detail}) {
    final repo = ref.read(favoritesRepositoryProvider);

    // Persiste en Hive
    repo.toggleFavorite(id, pokemon, detail: detail);

    // Actualiza estado local inmediatamente para UI
    final currentIds = Set<int>.from(state.ids);
    final currentList = List<Pokemon>.from(state.list);

    if (currentIds.contains(id)) {
      currentIds.remove(id);
      currentList.removeWhere((p) => p.id == id);
    } else {
      currentIds.add(id);
      if (pokemon != null) {
        currentList.add(pokemon);
      }
    }
    state = FavoritesState(ids: currentIds, list: currentList);
  }

  bool isFav(int id) => state.contains(id);
}

final favoritesProvider = NotifierProvider<FavoritesNotifier, FavoritesState>(
  FavoritesNotifier.new,
);
