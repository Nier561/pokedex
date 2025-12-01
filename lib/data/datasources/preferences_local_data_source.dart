import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class FilterSettingsModel {
  final String sortMode;
  final bool isAscending;
  final List<String> selectedTypes;
  final int? selectedGen;

  FilterSettingsModel({
    required this.sortMode,
    required this.isAscending,
    required this.selectedTypes,
    this.selectedGen,
  });

  Map<String, dynamic> toJson() => {
    'sortMode': sortMode,
    'isAscending': isAscending,
    'selectedTypes': selectedTypes,
    'selectedGen': selectedGen,
  };

  factory FilterSettingsModel.fromJson(Map<String, dynamic> json) =>
      FilterSettingsModel(
        sortMode: json['sortMode'] ?? 'id',
        isAscending: json['isAscending'] ?? true,
        selectedTypes: List<String>.from(json['selectedTypes'] ?? []),
        selectedGen: json['selectedGen'],
      );
}

/// Fuente de datos local para preferencias de usuario.
/// Gestiona la persistencia de filtros, idioma, tema y estado de onboarding usando SharedPreferences.
class PreferencesLocalDataSource {
  static const _key = 'user_filter_settings';
  static const _keyLang = 'user_language_code';
  static const _keyTheme = 'user_theme_mode';

  Future<void> saveFilters(FilterSettingsModel filters) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_key, jsonEncode(filters.toJson()));
  }

  Future<FilterSettingsModel?> getFilters() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString(_key);
    if (jsonString == null) return null;
    try {
      return FilterSettingsModel.fromJson(jsonDecode(jsonString));
    } catch (_) {
      return null;
    }
  }

  Future<void> saveLanguage(String languageCode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_keyLang, languageCode);
  }

  Future<String?> getLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_keyLang);
  }

  Future<void> saveThemeMode(bool isDark) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_keyTheme, isDark);
  }

  Future<bool?> getThemeMode() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_keyTheme);
  }

  static const _keyOnboarding = 'onboarding_seen';

  Future<void> saveOnboardingSeen() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_keyOnboarding, true);
  }

  Future<bool> getOnboardingSeen() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_keyOnboarding) ?? false;
  }

  Future<void> clearAll() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
