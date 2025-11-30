import 'package:hive/hive.dart';
import 'package:pokedex/data/models/pokemon_list_dto.dart';
import 'package:pokedex/data/models/pokemon_detail_dto.dart';

class PokemonLocalDataSource {
  static const String _boxName = 'pokemon_box';
  static const String _listKey = 'last_pokemon_list';
  static const String _detailPrefix = 'detail_';

  Future<void> init() async {
    // Ensure box is open
    if (!Hive.isBoxOpen(_boxName)) {
      await Hive.openBox(_boxName);
    }
  }

  Box get _box => Hive.box(_boxName);

  Future<void> cachePokemonList(List<PokemonListDto> list) async {
    final mapList = list.map((e) => e.toMap()).toList();
    await _box.put(_listKey, mapList);
  }

  Future<List<PokemonListDto>> getLastPokemonList() async {
    final dynamic data = _box.get(_listKey);
    if (data == null) return [];
    
    final list = (data as List).cast<Map<dynamic, dynamic>>();
    return list.map((e) => PokemonListDto.fromMap(Map<String, dynamic>.from(e))).toList();
  }

  Future<void> cachePokemonDetail(PokemonDetailDto detail) async {
    await _box.put('$_detailPrefix${detail.id}', detail.toMap());
  }

  Future<PokemonDetailDto?> getPokemonDetail(int id) async {
    final dynamic data = _box.get('$_detailPrefix$id');
    if (data == null) return null;
    
    return PokemonDetailDto.fromLocalMap(Map<String, dynamic>.from(data));
  }
}
