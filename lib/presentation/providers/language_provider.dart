import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/data/datasources/preferences_local_data_source.dart';

class LanguageNotifier extends StateNotifier<Locale> {
  final PreferencesLocalDataSource _prefs;
  LanguageNotifier(this._prefs) : super(const Locale('en')) { _loadLang(); }
  Future<void> _loadLang() async {
    final code = await _prefs.getLanguage();
    if (code != null) state = Locale(code);
  }
  Future<void> changeLanguage(Locale locale) async {
    state = locale;
    await _prefs.saveLanguage(locale.languageCode);
  }
}

final languageProvider = StateNotifierProvider<LanguageNotifier, Locale>((ref) {
  return LanguageNotifier(PreferencesLocalDataSource());
});

class S {
  final Locale locale;
  S(this.locale);

  static S of(BuildContext context) => S(const Locale('en'));

  static final Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'app_title': 'Pokédex',
      'search_hint': 'Search Pokémon',
      'settings': 'Settings',
      'language': 'Language',
      'filters': 'Filters',
      'generation': 'Generation',
      'types': 'Types',
      'reset': 'Reset',
      'apply': 'Apply',
      'about': 'About',
      'stats': 'Stats',
      'moves': 'Moves',
      'evolutions': 'Evolutions',
      'select_language': 'Select Language',
      'select_generation_dex': 'Select Generation Dex',
      'sort_by': 'Sort By',
      'sort_id': 'Number (ID)',
      'sort_name': 'Name (A-Z)',
      'sort_power': 'Total Power',
      'clear': 'Clear',
      'forms': 'Forms',
      'megas': 'Megas',
      'locations': 'Locations',
      'view_map': 'View Map',
      'no_locations': 'Wild location unknown',
      'abilities': 'Abilities',
    },
    'es': {
      'app_title': 'Pokédex',
      'search_hint': 'Buscar Pokémon',
      'settings': 'Ajustes',
      'language': 'Idioma',
      'filters': 'Filtros',
      'generation': 'Generación',
      'types': 'Tipos',
      'reset': 'Reiniciar',
      'apply': 'Aplicar',
      'about': 'Info',
      'stats': 'Estadísticas',
      'moves': 'Movimientos',
      'evolutions': 'Evoluciones',
      'select_language': 'Seleccionar Idioma',
      'select_generation_dex': 'Seleccionar Dex Generacional',
      'sort_by': 'Ordenar Por',
      'sort_id': 'Número (ID)',
      'sort_name': 'Nombre (A-Z)',
      'sort_power': 'Poder Total',
      'clear': 'Limpiar',
      'forms': 'Formas',
      'megas': 'Megas',
      'locations': 'Ubicación',
      'view_map': 'Ver Mapa',
      'no_locations': 'Ubicación salvaje desconocida',
      'abilities': 'Habilidades',
    },
  };

  String get(String key) {
    return _localizedValues[locale.languageCode]?[key] ?? key;
  }
}