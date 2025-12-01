import 'package:pokedex/domain/repositories/i_favorites_repository.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/domain/entities/pokemon_detail.dart';
import 'package:pokedex/data/datasources/favorites_local_data_source.dart';
import 'package:pokedex/data/models/pokemon_detail_dto.dart';

class FavoritesRepositoryImpl implements IFavoritesRepository {
  final FavoritesLocalDataSource _localDataSource;

  FavoritesRepositoryImpl(this._localDataSource);

  @override
  Future<void> loadFavorites() async {
    await _localDataSource.init();
  }

  @override
  Set<int> getFavorites() {
    return _localDataSource.getFavoriteIds();
  }

  @override
  List<Pokemon> getFavoritePokemon() {
    return _localDataSource.getFavorites();
  }

  @override
  bool isFavorite(int id) {
    return _localDataSource.isFavorite(id);
  }

  @override
  Future<void> toggleFavorite(
    int id,
    Pokemon? pokemon, {
    PokemonDetail? detail,
  }) async {
    if (_localDataSource.isFavorite(id)) {
      await _localDataSource.removeFavorite(id);
    } else {
      if (pokemon != null) {
        await _localDataSource.addFavorite(pokemon);
      }
      if (detail != null) {
        // Convertimos la entidad de dominio a DTO para guardar
        // Asumimos que podemos reconstruir el DTO desde la entidad o que la entidad tiene un método toDto
        // Como no tenemos toDto en la entidad, usaremos el DTO si lo tuviéramos a mano,
        // pero aquí recibimos la entidad.
        // Lo ideal sería recibir el DTO o mapearlo.
        // Dado que PokemonDetailDto tiene un método toMap y fromLocalMap,
        // y la entidad es casi idéntica, podemos intentar mapear manualmente o
        // mejor aún, modificar el provider para que pase el DTO si es posible,
        // pero para mantener la arquitectura limpia, mapearemos aquí de vuelta a DTO.
        // O simplificamos: PokemonDetailDto tiene un constructor que coincide con la entidad.

        final dto = PokemonDetailDto(
          id: detail.id,
          name: detail.name,
          height: detail.height,
          weight: detail.weight,
          types: detail.types,
          stats: detail.stats.map((e) => StatDto(e.name, e.value)).toList(),
          abilities: detail.abilities
              .map((e) => AbilityDto(e.name, e.description, e.isHidden))
              .toList(),
          flavorText: detail.flavorText,
          genderText: detail.genderText,
          eggGroups: detail.eggGroups,
          regionName: detail.regionName,
          moves: detail.moves
              .map(
                (e) => MoveDto(
                  name: e.name,
                  type: e.type,
                  damageClass: e.damageClass,
                  power: e.power,
                  accuracy: e.accuracy,
                  pp: e.pp,
                  level: e.level,
                  learnMethod: e.learnMethod,
                  description: e.description,
                ),
              )
              .toList(),
          evolutionChain: detail.evolutionChain
              .map(
                (e) => EvolutionEdgeDto(
                  fromSpeciesId: e.fromSpeciesId,
                  fromPokemonId: e.fromPokemonId,
                  fromName: e.fromName,
                  toSpeciesId: e.toSpeciesId,
                  toPokemonId: e.toPokemonId,
                  toName: e.toName,
                  method: e.method,
                ),
              )
              .toList(),
          forms: detail.forms
              .map(
                (e) => FormDto(
                  pokemonId: e.pokemonId,
                  title: e.title,
                  types: e.types,
                  isMega: e.isMega,
                  isGmax: e.isGmax,
                  isRegional: e.isRegional,
                  imageUrl: e.imageUrl,
                ),
              )
              .toList(),
          locations: detail.locations
              .map(
                (e) => LocationGroupDto(
                  regionId: e.regionId,
                  regionName: e.regionName,
                  locations: e.locations,
                ),
              )
              .toList(),
        );
        await _localDataSource.saveFavoriteDetail(dto);
      }
    }
  }
}
