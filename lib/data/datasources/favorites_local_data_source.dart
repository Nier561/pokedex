import 'package:hive_flutter/hive_flutter.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/data/models/pokemon_detail_dto.dart';

/// DataSource Local: Se encarga de la persistencia de favoritos en el dispositivo.
class FavoritesLocalDataSource {
  static const String _boxName = 'favorites_box';
  static const String _detailsBoxName = 'favorites_details_box';

  Box<Map>? _box;
  Box<Map>? _detailsBox;

  Future<void> init() async {
    _box = await Hive.openBox<Map>(_boxName);
    _detailsBox = await Hive.openBox<Map>(_detailsBoxName);
  }

  /// Obtiene todos los Pokémon favoritos como objetos Pokemon completos
  List<Pokemon> getFavorites() {
    if (_box == null) return [];

    final List<Pokemon> favorites = [];
    for (var key in _box!.keys) {
      final map = _box!.get(key);
      if (map != null) {
        favorites.add(
          Pokemon(
            id: map['id'] as int,
            name: map['name'] as String,
            types: List<String>.from(map['types'] as List),
            imageUrl: map['imageUrl'] as String,
            generationId: map['generationId'] as int,
            baseStatTotal: map['baseStatTotal'] as int,
          ),
        );
      }
    }
    return favorites;
  }

  /// Obtiene solo los IDs de los favoritos (para compatibilidad)
  Set<int> getFavoriteIds() {
    if (_box == null) return {};
    return _box!.keys.cast<int>().toSet();
  }

  /// Verifica si un Pokémon es favorito
  bool isFavorite(int id) {
    return _box?.containsKey(id) ?? false;
  }

  /// Agrega un Pokémon a favoritos (guarda el objeto completo)
  Future<void> addFavorite(Pokemon pokemon) async {
    await _box?.put(pokemon.id, {
      'id': pokemon.id,
      'name': pokemon.name,
      'types': pokemon.types,
      'imageUrl': pokemon.imageUrl,
      'generationId': pokemon.generationId,
      'baseStatTotal': pokemon.baseStatTotal,
    });
  }

  /// Elimina un Pokémon de favoritos
  Future<void> removeFavorite(int id) async {
    await _box?.delete(id);
    await _detailsBox?.delete(id); // También eliminamos el detalle
  }

  /// Obtiene un Pokémon favorito específico por ID
  Pokemon? getFavorite(int id) {
    final map = _box?.get(id);
    if (map == null) return null;

    return Pokemon(
      id: map['id'] as int,
      name: map['name'] as String,
      types: List<String>.from(map['types'] as List),
      imageUrl: map['imageUrl'] as String,
      generationId: map['generationId'] as int,
      baseStatTotal: map['baseStatTotal'] as int,
    );
  }

  /// Guarda el detalle completo de un Pokémon favorito
  Future<void> saveFavoriteDetail(PokemonDetailDto dto) async {
    await _detailsBox?.put(dto.id, dto.toMap());
  }

  /// Obtiene el detalle completo de un Pokémon favorito
  PokemonDetailDto? getFavoriteDetail(int id) {
    final map = _detailsBox?.get(id);
    if (map == null) return null;
    return PokemonDetailDto.fromLocalMap(Map<String, dynamic>.from(map));
  }
}
