/// Archivo: theme_provider.dart
///
/// Descripción:
/// Provider que controla el tema visual de la aplicación (Claro / Oscuro).
///
/// Funcionalidades Principales:
/// - **Cambio de Tema**: Permite alternar entre `ThemeMode.light` y `ThemeMode.dark`.
/// - **Persistencia**: Guarda la elección del usuario para sesiones futuras.
/// - **Detección Inicial**: Carga la preferencia guardada o usa el valor del sistema por defecto.
///
/// Dependencias:
/// - `PreferencesLocalDataSource`: Almacenamiento local.
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/data/datasources/preferences_local_data_source.dart';

class ThemeNotifier extends StateNotifier<ThemeMode> {
  final PreferencesLocalDataSource _prefs;

  ThemeNotifier(this._prefs) : super(ThemeMode.system) {
    _loadTheme();
  }

  Future<void> _loadTheme() async {
    final isDark = await _prefs.getThemeMode();
    if (isDark != null) {
      state = isDark ? ThemeMode.dark : ThemeMode.light;
    }
  }

  Future<void> toggleTheme(bool isDark) async {
    state = isDark ? ThemeMode.dark : ThemeMode.light;
    await _prefs.saveThemeMode(isDark);
  }
}

final themeProvider = StateNotifierProvider<ThemeNotifier, ThemeMode>((ref) {
  return ThemeNotifier(PreferencesLocalDataSource());
});
