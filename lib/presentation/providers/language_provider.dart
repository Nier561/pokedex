import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/data/datasources/preferences_local_data_source.dart';

class LanguageNotifier extends StateNotifier<Locale> {
  final PreferencesLocalDataSource _prefs;
  LanguageNotifier(this._prefs) : super(const Locale('en')) {
    _loadLang();
  }
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
      'apply_filters': 'Apply Filters',
      'all_gens': 'All Generations',
      'favorites': 'Favorites',
      'about': 'About',
      'stats': 'Stats',
      'moves': 'Moves',
      'evolutions': 'Evolutions',
      'select_language': 'Select Language',
      'select_generation_dex': 'Generation Dex',
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
      'main_subtitle': 'What Pokémon are you looking for?',
      'height': 'Height',
      'weight': 'Weight',
      'gender': 'Gender',
      'breeding': 'Breeding',
      'egg_groups': 'Egg Groups',
      'region': 'Region',
      'unknown': 'Unknown',
      'hidden': 'Hidden',
      'genderless': 'Genderless',
      'total': 'Total',
      'type_matchups': 'Type Matchups',
      'does_not_evolve': 'Does not evolve',
      'level_up': 'Level Up',
      'tm_hm': 'TM / HM',
      'tutor': 'Tutor',
      'egg_moves': 'Egg Moves',
      'power': 'Power',
      'acc': 'Acc',
      'pp': 'PP',
      'no_description': 'No description available.',
      'no_data': 'No Data',
      'trade': 'Trade',
      'happiness': 'Happiness',
      'beauty': 'Beauty',
      'affection': 'Affection',
      'rain': 'Rain',
      'upside_down': 'Upside Down',
      'night': 'Night',
      'day': 'Day',
      'female': 'Female',
      'male': 'Male',
      'use': 'Use',
      'knows': 'Knows',
      'at': 'At',
      'stat_hp': 'HP',
      'stat_atk': 'ATK',
      'stat_def': 'DEF',
      'stat_satk': 'SPA',
      'stat_sdef': 'SPD',
      'stat_spd': 'SPD',
      'no_pokemon_found': 'No Pokémon found',
      'no_megas': 'No Mega Evolutions',
      'no_forms': 'No Alternate Forms',
      'no_favorites': 'No Favorites Yet',
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
      'apply_filters': 'Aplicar Filtros',
      'all_gens': 'Todas las Generaciones',
      'favorites': 'Favoritos',
      'about': 'Info',
      'stats': 'Estadísticas',
      'moves': 'Movimientos',
      'evolutions': 'Evoluciones',
      'select_language': 'Seleccionar Idioma',
      'select_generation_dex': 'Dex Generacional',
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
      'main_subtitle': '¿Qué Pokémon estás buscando?',
      'height': 'Altura',
      'weight': 'Peso',
      'gender': 'Género',
      'breeding': 'Crianza',
      'egg_groups': 'Grupos Huevo',
      'region': 'Región',
      'unknown': 'Desconocido',
      'hidden': 'Oculta',
      'genderless': 'Sin Género',
      'total': 'Total',
      'type_matchups': 'Debilidades',
      'does_not_evolve': 'No evoluciona',
      'level_up': 'Nivel',
      'tm_hm': 'MT / MO',
      'tutor': 'Tutor',
      'egg_moves': 'Mov. Huevo',
      'power': 'Poder',
      'acc': 'Prec',
      'pp': 'PP',
      'no_description': 'Descripción no disponible.',
      'no_data': 'Sin Datos',
      'trade': 'Intercambio',
      'happiness': 'Felicidad',
      'beauty': 'Belleza',
      'affection': 'Afecto',
      'rain': 'Lluvia',
      'upside_down': 'Al revés',
      'night': 'Noche',
      'day': 'Día',
      'female': 'Hembra',
      'male': 'Macho',
      'use': 'Usar',
      'knows': 'Conoce',
      'at': 'En',
      'stat_hp': 'PS',
      'stat_atk': 'ATQ',
      'stat_def': 'DEF',
      'stat_satk': 'AT.ESP',
      'stat_sdef': 'DEF.ESP',
      'stat_spd': 'VEL',
      'no_pokemon_found': 'No se encontraron Pokémon',
      'no_megas': 'No tiene Mega Evoluciones',
      'no_forms': 'No tiene Formas Alternativas',
      'no_favorites': 'No hay Favoritos',
    },
  };

  String get(String key) {
    return _localizedValues[locale.languageCode]?[key] ?? key;
  }
}
