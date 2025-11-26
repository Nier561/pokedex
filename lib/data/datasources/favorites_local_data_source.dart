import 'package:shared_preferences/shared_preferences.dart';

/// DataSource Local: Se encarga de la persistencia en el dispositivo.
class FavoritesLocalDataSource {
  static const _key = 'favorite_pokemon_ids';
  Set<int> _cache = {};

  Future<void> init() async {
    final prefs = await SharedPreferences.getInstance();
    final List<String>? stored = prefs.getStringList(_key);
    if (stored != null) {
      _cache = stored.map((e) => int.parse(e)).toSet();
    }
  }

  Set<int> getFavorites() => _cache;

  Future<void> saveFavorites(Set<int> ids) async {
    _cache = ids;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(_key, ids.map((e) => e.toString()).toList());
  }
}