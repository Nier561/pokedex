/// Archivo: filter_provider.dart
///
/// Descripción:
/// Provider que gestiona los filtros y la configuración de búsqueda en la Pokédex.
/// Permite a los usuarios refinar la lista de Pokémon visible.
///
/// Funcionalidades Principales:
/// - **Filtrado Multicriterio**: Soporta filtros por Generación y Tipos.
/// - **Ordenamiento**: Permite ordenar por ID, Nombre o Poder Total (ascendente/descendente).
/// - **Búsqueda**: Gestiona el término de búsqueda actual.
/// - **Persistencia**: Guarda y recupera la configuración de filtros usando `PreferencesLocalDataSource`.
///
/// Dependencias:
/// - `PreferencesLocalDataSource`: Para persistir la configuración entre sesiones.
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/data/datasources/preferences_local_data_source.dart';

enum SortMode { id, name, power }

class FilterState {
  final SortMode sortMode;
  final bool isAscending;
  final List<String> selectedTypes;
  final int? selectedGen;
  final String searchQuery;

  const FilterState({
    this.sortMode = SortMode.id,
    this.isAscending = true,
    this.selectedTypes = const [],
    this.selectedGen,
    this.searchQuery = '',
  });

  FilterState copyWith({
    SortMode? sortMode,
    bool? isAscending,
    List<String>? selectedTypes,
    int? selectedGen,
    String? searchQuery,
  }) {
    return FilterState(
      sortMode: sortMode ?? this.sortMode,
      isAscending: isAscending ?? this.isAscending,
      selectedTypes: selectedTypes ?? this.selectedTypes,
      selectedGen: selectedGen ?? this.selectedGen,
      searchQuery: searchQuery ?? this.searchQuery,
    );
  }

  FilterState resetGen() => FilterState(
    sortMode: sortMode,
    isAscending: isAscending,
    selectedTypes: selectedTypes,
    selectedGen: null,
    searchQuery: searchQuery,
  );
}

class FilterNotifier extends StateNotifier<FilterState> {
  final PreferencesLocalDataSource _prefs;

  FilterNotifier(this._prefs) : super(const FilterState()) {
    _loadFilters();
  }

  Future<void> _loadFilters() async {
    final saved = await _prefs.getFilters();
    if (saved != null) {
      SortMode mode = SortMode.id;
      if (saved.sortMode == 'name') mode = SortMode.name;
      if (saved.sortMode == 'power') mode = SortMode.power;

      state = state.copyWith(
        sortMode: mode,
        isAscending: saved.isAscending,
        selectedTypes: saved.selectedTypes,
        selectedGen: saved.selectedGen,
      );
      if (saved.selectedGen != null)
        state = state.copyWith(selectedGen: saved.selectedGen);
    }
  }

  Future<void> _save() async {
    final model = FilterSettingsModel(
      sortMode: state.sortMode.name,
      isAscending: state.isAscending,
      selectedTypes: state.selectedTypes,
      selectedGen: state.selectedGen,
    );
    await _prefs.saveFilters(model);
  }

  void setSearch(String query) {
    state = state.copyWith(searchQuery: query);
  }

  void updateFilters({
    SortMode? sortMode,
    bool? isAscending,
    List<String>? selectedTypes,
    int? selectedGen,
    bool clearGen = false,
  }) {
    if (clearGen) state = state.resetGen();

    state = state.copyWith(
      sortMode: sortMode,
      isAscending: isAscending,
      selectedTypes: selectedTypes,
      selectedGen: selectedGen,
    );
    _save();
  }

  void resetFilters() {
    state = const FilterState();
    _save();
  }
}

final filterProvider = StateNotifierProvider<FilterNotifier, FilterState>((
  ref,
) {
  return FilterNotifier(PreferencesLocalDataSource());
});
