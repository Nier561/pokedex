import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/data/datasources/preferences_local_data_source.dart';

// 1. Notifier para manejar el estado del Locale (en/es)
class LanguageNotifier extends StateNotifier<Locale> {
  final PreferencesLocalDataSource _prefs;

  LanguageNotifier(this._prefs) : super(const Locale('en')) {
    _loadLang();
  }

  Future<void> _loadLang() async {
    final code = await _prefs.getLanguage();
    if (code != null) {
      state = Locale(code);
    }
  }

  Future<void> changeLanguage(Locale locale) async {
    state = locale;
    await _prefs.saveLanguage(locale.languageCode);
  }
}

final languageProvider = StateNotifierProvider<LanguageNotifier, Locale>((ref) {
  return LanguageNotifier(PreferencesLocalDataSource());
});


// 2. Clase de Traducciones (Diccionario Simple)
class S {
  final Locale locale;

  S(this.locale);

  // Método helper para obtener la instancia actual en la UI
  static S of(BuildContext context) {
    // Esto es un truco simple. En apps grandes usaríamos LocalizationsDelegate.
    // Aquí asumimos que el provider ya actualizó la UI.
    // Para simplificar el uso en Riverpod, inyectaremos el Locale manualmente o
    // usaremos un mapa estático accedido por el languageCode.
    return S(const Locale('en')); // Placeholder, ver abajo el uso real con mapas
  }

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
    },
  };

  String get(String key) {
    return _localizedValues[locale.languageCode]?[key] ?? key;
  }
}