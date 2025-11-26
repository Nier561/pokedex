import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/domain/entities/pokemon_detail.dart';
import 'package:pokedex/main.dart';
import 'package:pokedex/presentation/providers/language_provider.dart';

/// Estado para la lista paginada
class PokemonListState {
  final List<Pokemon> pokemons;
  final bool isLoading;

  PokemonListState({required this.pokemons, this.isLoading = false});
}

/// Controller para la lista infinita principal.
class PokemonListController extends StateNotifier<PokemonListState> {
  final Ref ref;
  PokemonListController(this.ref) : super(PokemonListState(pokemons: []));

  int _offset = 0;
  static const _limit = 32;
  bool _hasMore = true;

  Future<void> loadMore() async {
    if (state.isLoading || !_hasMore) return;
    state = PokemonListState(pokemons: state.pokemons, isLoading: true);

    try {
      final repo = ref.read(pokemonRepositoryProvider);
      final newItems = await repo.getPokemonList(limit: _limit, offset: _offset);

      if (newItems.isEmpty) {
        _hasMore = false;
        state = PokemonListState(pokemons: state.pokemons, isLoading: false);
      } else {
        _offset += newItems.length;
        state = PokemonListState(pokemons: [...state.pokemons, ...newItems], isLoading: false);
      }
    } catch (_) {
      state = PokemonListState(pokemons: state.pokemons, isLoading: false);
    }
  }
}

final pokemonListProvider = StateNotifierProvider<PokemonListController, PokemonListState>((ref) {
  return PokemonListController(ref);
});

/// Provider para pre-cargar todo (para el filtro de búsqueda global).
final allPokemonProvider = FutureProvider<List<Pokemon>>((ref) async {
  final repo = ref.read(pokemonRepositoryProvider);
  return await repo.getPokemonList(limit: 2000, offset: 0);
});

/// Parámetros para el detalle. Implementa igualdad para evitar recargas infinitas.
class PokemonDetailParams {
  final int id;
  final int? gen;

  const PokemonDetailParams({required this.id, this.gen});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is PokemonDetailParams &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              gen == other.gen;

  @override
  int get hashCode => id.hashCode ^ gen.hashCode;
}

/// Provider familia para el detalle usando la clase de parámetros segura.
final pokemonDetailProvider = FutureProvider.family<PokemonDetail, PokemonDetailParams>((ref, args) async {
  final repo = ref.read(pokemonRepositoryProvider);

  // 1. Escuchamos el idioma actual. Si cambia, este provider se re-ejecuta.
  final currentLocale = ref.watch(languageProvider);

  // 2. Mapeamos 'en' -> 9, 'es' -> 7
  int langId = 9; // Default Inglés
  if (currentLocale.languageCode == 'es') {
    langId = 7;
  } else if (currentLocale.languageCode == 'fr') {
    langId = 5;
  }

  // 3. Llamamos al repo con el idioma correcto
  return await repo.getPokemonDetail(
      id: args.id,
      targetGen: args.gen,
      langId: langId
  );
});