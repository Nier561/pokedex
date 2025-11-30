import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/domain/entities/pokemon_detail.dart';
import 'package:pokedex/main.dart';
import 'package:pokedex/presentation/providers/language_provider.dart';

/// Estado para la lista paginada de Pokémon.
/// Incluye la lista de datos, estado de carga y posibles mensajes de error.
class PokemonListState {
  final List<Pokemon> pokemons;
  final bool isLoading;
  final String? errorMessage;

  PokemonListState({
    required this.pokemons,
    this.isLoading = false,
    this.errorMessage,
  });

  PokemonListState copyWith({
    List<Pokemon>? pokemons,
    bool? isLoading,
    String? errorMessage,
  }) {
    return PokemonListState(
      pokemons: pokemons ?? this.pokemons,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
    );
  }
}

/// Controller para la gestión de la lista infinita.
class PokemonListController extends StateNotifier<PokemonListState> {
  final Ref ref;
  PokemonListController(this.ref) : super(PokemonListState(pokemons: []));

  int _offset = 0;
  static const _limit = 32;
  bool _hasMore = true;

  /// Carga la siguiente página de Pokémon.
  /// Maneja excepciones actualizando el estado con un mensaje de error.
  Future<void> loadMore() async {
    if (state.isLoading || !_hasMore) return;

    // Indicamos carga y limpiamos errores previos
    state = state.copyWith(isLoading: true, errorMessage: null);

    try {
      final repo = ref.read(pokemonRepositoryProvider);
      final newItems = await repo.getPokemonList(limit: _limit, offset: _offset);

      if (newItems.isEmpty) {
        _hasMore = false;
        state = state.copyWith(isLoading: false);
      } else {
        _offset += newItems.length;
        state = state.copyWith(
          pokemons: [...state.pokemons, ...newItems],
          isLoading: false,
        );
      }
    } catch (e) {
      // En caso de error, guardamos el mensaje y detenemos la carga
      state = state.copyWith(
        isLoading: false,
        errorMessage: "Failed to connect to the Pokédex server.\nPlease check your internet connection.",
      );
    }
  }
}

final pokemonListProvider = StateNotifierProvider<PokemonListController, PokemonListState>((ref) {
  return PokemonListController(ref);
});

/// Provider para pre-cargar la lista completa (usado para filtros globales).
final allPokemonProvider = FutureProvider<List<Pokemon>>((ref) async {
  final repo = ref.read(pokemonRepositoryProvider);
  return await repo.getPokemonList(limit: 2000, offset: 0);
});

/// Parámetros para la solicitud de detalle, implementando igualdad para caché efectivo.
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

/// Provider familia para obtener el detalle de un Pokémon.
/// Reacciona a cambios de idioma para traer traducciones frescas.
final pokemonDetailProvider = FutureProvider.family<PokemonDetail, PokemonDetailParams>((ref, args) async {
  final repo = ref.read(pokemonRepositoryProvider);

  // 1. Escuchamos el idioma actual para invalidar el caché si cambia
  final currentLocale = ref.watch(languageProvider);

  // 2. Mapeamos el código de idioma a ID de PokeAPI
  int langId = 9; // Default Inglés
  if (currentLocale.languageCode == 'es') {
    langId = 7;
  } else if (currentLocale.languageCode == 'fr') {
    langId = 5;
  }

  // 3. Solicitamos el detalle con el idioma correcto
  return await repo.getPokemonDetail(
      id: args.id,
      targetGen: args.gen,
      langId: langId
  );
});