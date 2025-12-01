import 'package:pokedex/domain/entities/pokemon_detail.dart';

/// DTO para transformar la respuesta de la API en la entidad de detalle del Pokémon.
class PokemonDetailDto {
  final int id;
  final String name;
  final int height;
  final int weight;
  final List<String> types;
  final List<StatDto> stats;
  final List<AbilityDto> abilities;
  final String flavorText; // El nombre correcto del campo es flavorText
  final String genderText;
  final List<String> eggGroups;
  final String regionName;
  final List<MoveDto> moves;
  final List<EvolutionEdgeDto> evolutionChain;
  final List<FormDto> forms;
  final List<LocationGroupDto> locations;

  // Mapa de Generación -> IDs de VersionGroup en PokeAPI.
  static const Map<int, List<int>> _genToVersionGroups = {
    1: [1, 2], // Red/Blue, Yellow
    2: [3, 4], // Gold/Silver, Crystal
    3: [5, 6, 7], // Ruby/Sapphire, Emerald, FireRed/LeafGreen
    4: [8, 9, 10], // Diamond/Pearl, Platinum, HeartGold/SoulSilver
    5: [11, 12, 13, 14], // Black/White, Black2/White2
    6: [15, 16], // X/Y, OmegaRuby/AlphaSapphire
    7: [17, 18, 19], // Sun/Moon, UltraSun/UltraMoon, Let's Go
    8: [20, 21, 22, 23, 24], // Sword/Shield, DLCs, BDSP, Legends Arceus
    9: [25, 26], // Scarlet/Violet, DLCs
  };

  PokemonDetailDto({
    required this.id,
    required this.name,
    required this.height,
    required this.weight,
    required this.types,
    required this.stats,
    required this.abilities,
    required this.flavorText, // Asegúrate que el constructor diga flavorText
    required this.genderText,
    required this.eggGroups,
    required this.regionName,
    required this.moves,
    required this.evolutionChain,
    required this.forms,
    required this.locations,
  });

  factory PokemonDetailDto.fromMap(
    Map<String, dynamic> data, {
    int? targetGen,
  }) {
    final types = ((data['pokemon_v2_pokemontypes'] as List?) ?? [])
        .map((e) => e['pokemon_v2_type']['name'] as String)
        .toList();
    final stats = ((data['pokemon_v2_pokemonstats'] as List?) ?? [])
        .map((s) => StatDto.fromMap(s))
        .toList();

    final species = data['pokemon_v2_pokemonspecy'] as Map<String, dynamic>?;
    String flavorVal = ''; // Usamos variable temporal
    String gender = 'Unknown';
    List<String> eggs = [];
    String region = '';
    List<EvolutionEdgeDto> evoEdges = [];
    List<FormDto> allForms = [];

    if (species != null) {
      final texts = species['pokemon_v2_pokemonspeciesflavortexts'] as List?;
      if (texts != null && texts.isNotEmpty) {
        flavorVal = (texts.first['flavor_text'] as String)
            .replaceAll('\n', ' ')
            .replaceAll('\f', ' ')
            .trim();
      }
      gender = _parseGender(species['gender_rate'] as int?);
      eggs =
          (species['pokemon_v2_pokemonegggroups'] as List?)
              ?.map((e) => e['pokemon_v2_egggroup']['name'] as String)
              .toList() ??
          [];
      region =
          species['pokemon_v2_generation']?['pokemon_v2_region']?['name'] ?? '';
      evoEdges = _processEvolutions(species['pokemon_v2_evolutionchain']);

      final speciesPokes = (species['pokemon_v2_pokemons'] as List?) ?? [];
      for (var sp in speciesPokes) {
        final fList = sp['pokemon_v2_pokemonforms'] as List?;
        if (fList != null) {
          for (var f in fList) {
            allForms.add(FormDto.fromMap(f, sp['id'], sp['name']));
          }
        }
      }
    }

    final abilities = ((data['pokemon_v2_pokemonabilities'] as List?) ?? [])
        .map((a) => AbilityDto.fromMap(a))
        .toList();

    // --- MOVIMIENTOS ---
    final rawMoves = (data['pokemon_v2_pokemonmoves'] as List?) ?? [];
    final List<MoveDto> validMoves = [];
    final Set<String> uniqueKeys = {};

    final Set<int>? allowedVersions = targetGen != null
        ? (_genToVersionGroups[targetGen]?.toSet())
        : null;

    // Ordenar por versión descendente para priorizar datos recientes
    rawMoves.sort((a, b) {
      final vA = a['version_group_id'] as int? ?? 0;
      final vB = b['version_group_id'] as int? ?? 0;
      return vB.compareTo(vA);
    });

    for (var m in rawMoves) {
      final vGroupId = m['version_group_id'] as int;
      if (allowedVersions != null && !allowedVersions.contains(vGroupId)) {
        continue;
      }

      final dto = MoveDto.fromMap(m);
      final key = '${dto.name}-${dto.learnMethod}';
      if (!uniqueKeys.contains(key)) {
        uniqueKeys.add(key);
        validMoves.add(dto);
      }
    }

    // --- UBICACIONES ---
    final rawEncounters = (data['pokemon_v2_encounters'] as List?) ?? [];
    final Map<String, LocationGroupDto> groups = {};

    for (var e in rawEncounters) {
      final locData = e['pokemon_v2_locationarea']?['pokemon_v2_location'];
      if (locData == null) continue;

      final regionData = locData['pokemon_v2_region'];
      final regionRaw = regionData?['name'] as String? ?? 'unknown';
      final regionName =
          (regionData?['pokemon_v2_regionnames'] as List?)
              ?.firstOrNull?['name'] ??
          regionRaw;

      final locRaw = locData['name'] as String? ?? '';
      final locName =
          (locData['pokemon_v2_locationnames'] as List?)
              ?.firstOrNull?['name'] ??
          locRaw;

      final verData = e['pokemon_v2_version'];
      final verName =
          (verData?['pokemon_v2_versionnames'] as List?)
              ?.firstOrNull?['name'] ??
          verData?['name'] ??
          '';

      if (!groups.containsKey(regionRaw)) {
        groups[regionRaw] = LocationGroupDto(
          regionId: regionRaw,
          regionName: _pretty(regionName),
          locations: [],
        );
      }
      groups[regionRaw]!.locations.add('$locName ($verName)');
    }

    final locationGroups = groups.values.toList();
    for (var g in locationGroups) {
      g.locations = g.locations.toSet().toList();
    }

    return PokemonDetailDto(
      id: data['id'],
      name: data['name'],
      height: data['height'],
      weight: data['weight'],
      types: types,
      stats: stats,
      abilities: abilities,
      flavorText:
          flavorVal, // Pasamos la variable correcta al parámetro flavorText
      genderText: gender,
      eggGroups: eggs,
      regionName: region,
      moves: validMoves,
      evolutionChain: evoEdges,
      forms: allForms,
      locations: locationGroups,
    );
  }

  static String _parseGender(int? rate) {
    if (rate == null || rate == -1) return 'Genderless';
    final female = rate * 12.5;
    return '♂ ${(100 - female).toStringAsFixed(1)}%    ♀ ${female.toStringAsFixed(1)}%';
  }

  static List<EvolutionEdgeDto> _processEvolutions(
    Map<String, dynamic>? chain,
  ) {
    if (chain == null) return [];
    final all = (chain['pokemon_v2_pokemonspecies'] as List?) ?? [];
    final byId = {for (var s in all) s['id'] as int: s as Map<String, dynamic>};
    final candidates = <int, List<Map<String, dynamic>>>{};

    for (final s in all) {
      final childId = s['id'] as int;
      final fromId = s['evolves_from_species_id'] as int?;
      if (fromId == null) continue;
      final evos = (s['pokemon_v2_pokemonevolutions'] as List?) ?? [];
      if (evos.isEmpty) continue;
      final parent = byId[fromId];
      if (parent == null) continue;
      final childPid =
          (s['pokemon_v2_pokemons'] as List?)?.firstOrNull?['id'] as int?;
      final parentPid =
          (parent['pokemon_v2_pokemons'] as List?)?.firstOrNull?['id'] as int?;

      for (final ev in evos) {
        candidates.putIfAbsent(childId, () => []).add({
          'from_species': fromId,
          'from_poke': parentPid,
          'from_name': parent['name'],
          'to_species': childId,
          'to_poke': childPid,
          'to_name': s['name'],
          'raw_method': ev,
        });
      }
    }

    final edges = <EvolutionEdgeDto>[];
    for (final list in candidates.values) {
      Map<String, dynamic>? best;
      int bestScore = -999;
      for (final item in list) {
        final methodMap = _normalizeMethod(item['raw_method']);
        final score = _calculateScore(methodMap);
        if (score > bestScore) {
          bestScore = score;
          best = item;
          best['normalized_method'] = methodMap;
        }
      }
      if (best != null) {
        edges.add(
          EvolutionEdgeDto(
            fromSpeciesId: best['from_species'],
            fromPokemonId: best['from_poke'],
            fromName: best['from_name'],
            toSpeciesId: best['to_species'],
            toPokemonId: best['to_poke'],
            toName: best['to_name'],
            method: best['normalized_method'],
          ),
        );
      }
    }
    edges.sort((a, b) {
      final c = a.fromSpeciesId.compareTo(b.fromSpeciesId);
      return c != 0 ? c : a.toSpeciesId.compareTo(b.toSpeciesId);
    });
    return edges;
  }

  static Map<String, dynamic> _normalizeMethod(Map<String, dynamic> raw) {
    return {
      'trigger': raw['pokemon_v2_evolutiontrigger']?['name'] ?? '',
      'item': raw['pokemon_v2_item']?['name'] ?? '',
      'min_level': raw['min_level'],
      'min_happiness': raw['min_happiness'],
      'min_beauty': raw['min_beauty'],
      'min_affection': raw['min_affection'],
      'time_of_day': raw['time_of_day'] ?? '',
      'needs_rain': raw['needs_overworld_rain'] == true,
      'upside_down': raw['turn_upside_down'] == true,
      'move': raw['pokemon_v2_move']?['name'] ?? '',
      'location': raw['pokemon_v2_location']?['name'] ?? '',
      'held_item': '',
      'known_move_type': raw['pokemon_v2_type']?['name'] ?? '',
      'gender_id': raw['gender_id'],
      'relative_physical_stats': raw['relative_physical_stats'],
    };
  }

  static int _calculateScore(Map<String, dynamic> m) {
    int s = 0;
    if ((m['item'] as String).isNotEmpty) s += 100;
    if (m['min_level'] != null) s += 50;
    if ((m['location'] as String).isNotEmpty) s += 20;
    if (m['min_happiness'] != null) s += 30;
    return s;
  }

  PokemonDetail toEntity() {
    return PokemonDetail(
      id: id,
      name: name,
      height: height,
      weight: weight,
      types: types,
      stats: stats,
      abilities: abilities,
      flavorText: flavorText,
      genderText: genderText,
      eggGroups: eggGroups,
      regionName: regionName,
      moves: moves,
      evolutionChain: evolutionChain,
      forms: forms,
      locations: locations,
    );
  }

  // Serialización para caché local
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'height': height,
      'weight': weight,
      'types': types,
      'stats': stats.map((e) => e.toMap()).toList(),
      'abilities': abilities.map((e) => e.toMap()).toList(),
      'flavorText': flavorText,
      'genderText': genderText,
      'eggGroups': eggGroups,
      'regionName': regionName,
      'moves': moves.map((e) => e.toMap()).toList(),
      'evolutionChain': evolutionChain.map((e) => e.toMap()).toList(),
      'forms': forms.map((e) => e.toMap()).toList(),
      'locations': locations.map((e) => e.toMap()).toList(),
    };
  }

  factory PokemonDetailDto.fromLocalMap(Map<String, dynamic> map) {
    return PokemonDetailDto(
      id: map['id'],
      name: map['name'],
      height: map['height'],
      weight: map['weight'],
      types: List<String>.from(map['types']),
      stats: (map['stats'] as List)
          .map((e) => StatDto.fromLocalMap(Map<String, dynamic>.from(e)))
          .toList(),
      abilities: (map['abilities'] as List)
          .map((e) => AbilityDto.fromLocalMap(Map<String, dynamic>.from(e)))
          .toList(),
      flavorText: map['flavorText'],
      genderText: map['genderText'],
      eggGroups: List<String>.from(map['eggGroups']),
      regionName: map['regionName'],
      moves: (map['moves'] as List)
          .map((e) => MoveDto.fromLocalMap(Map<String, dynamic>.from(e)))
          .toList(),
      evolutionChain: (map['evolutionChain'] as List)
          .map(
            (e) => EvolutionEdgeDto.fromLocalMap(Map<String, dynamic>.from(e)),
          )
          .toList(),
      forms: (map['forms'] as List)
          .map((e) => FormDto.fromLocalMap(Map<String, dynamic>.from(e)))
          .toList(),
      locations: (map['locations'] as List)
          .map(
            (e) => LocationGroupDto.fromLocalMap(Map<String, dynamic>.from(e)),
          )
          .toList(),
    );
  }

  static String _pretty(String s) =>
      s.isEmpty ? '' : s[0].toUpperCase() + s.substring(1);
}

// --- SUB-DTOS ---

class LocationGroupDto {
  final String regionId;
  final String regionName;
  List<String> locations;
  LocationGroupDto({
    required this.regionId,
    required this.regionName,
    required this.locations,
  });

  Map<String, dynamic> toMap() => {
    'regionId': regionId,
    'regionName': regionName,
    'locations': locations,
  };
  factory LocationGroupDto.fromLocalMap(Map<String, dynamic> map) =>
      LocationGroupDto(
        regionId: map['regionId'],
        regionName: map['regionName'],
        locations: List<String>.from(map['locations']),
      );
}

class StatDto {
  final String name;
  final int value;
  StatDto(this.name, this.value);
  factory StatDto.fromMap(Map<String, dynamic> m) =>
      StatDto(m['pokemon_v2_stat']['name'], m['base_stat']);
  Map<String, dynamic> toMap() => {'name': name, 'value': value};
  factory StatDto.fromLocalMap(Map<String, dynamic> map) =>
      StatDto(map['name'], map['value']);
}

class AbilityDto {
  final String name;
  final String description;
  final bool isHidden;
  // Constructor usa 'description'
  AbilityDto(this.name, this.description, this.isHidden);

  factory AbilityDto.fromMap(Map<String, dynamic> m) {
    final abilityData = m['pokemon_v2_ability'];

    final translatedName =
        (abilityData['pokemon_v2_abilitynames'] as List?)?.firstOrNull?['name'];
    final rawName = (abilityData['name'] as String? ?? 'Unknown');
    final displayName =
        translatedName ?? rawName[0].toUpperCase() + rawName.substring(1);

    final flavorEntry =
        (abilityData['pokemon_v2_abilityflavortexts'] as List?)?.firstOrNull;
    String? desc = flavorEntry?['flavor_text'];

    if (desc == null || desc.isEmpty) {
      final effectEntry =
          (abilityData['pokemon_v2_abilityeffecttexts'] as List?)?.firstOrNull;
      desc = effectEntry?['short_effect'];
    }

    return AbilityDto(
      displayName,
      (desc ?? 'No description available.').replaceAll('\n', ' '),
      m['is_hidden'],
    );
  }

  Map<String, dynamic> toMap() => {
    'name': name,
    'description': description,
    'isHidden': isHidden,
  };
  factory AbilityDto.fromLocalMap(Map<String, dynamic> map) =>
      AbilityDto(map['name'], map['description'], map['isHidden']);
}

class MoveDto {
  final String name;
  final String type;
  final String damageClass;
  final int? power;
  final int? accuracy;
  final int? pp;
  final int level;
  final String learnMethod;
  final String description; // Campo description

  MoveDto({
    required this.name,
    required this.type,
    required this.damageClass,
    this.power,
    this.accuracy,
    this.pp,
    required this.level,
    required this.learnMethod,
    required this.description, // Constructor param
  });

  factory MoveDto.fromMap(Map<String, dynamic> m) {
    final mv = m['pokemon_v2_move'];

    final translatedName =
        (mv['pokemon_v2_movenames'] as List?)?.firstOrNull?['name'];
    final rawName = (mv['name'] as String? ?? '-');
    final displayName =
        translatedName ??
        (rawName.isNotEmpty
            ? rawName[0].toUpperCase() + rawName.substring(1)
            : rawName);

    // Variable local
    final flavor = (mv['pokemon_v2_moveflavortexts'] as List?)?.firstOrNull;

    return MoveDto(
      name: displayName,
      type: mv['pokemon_v2_type']['name'],
      damageClass: mv['pokemon_v2_movedamageclass']['name'] ?? 'status',
      power: mv['power'],
      accuracy: mv['accuracy'],
      pp: mv['pp'],
      level: m['level'] ?? 0,
      learnMethod: m['pokemon_v2_movelearnmethod']['name'],
      // Pasamos la variable local 'flavor' al parámetro 'description'
      description: (flavor?['flavor_text'] as String? ?? '').replaceAll(
        '\n',
        ' ',
      ),
    );
  }

  Map<String, dynamic> toMap() => {
    'name': name,
    'type': type,
    'damageClass': damageClass,
    'power': power,
    'accuracy': accuracy,
    'pp': pp,
    'level': level,
    'learnMethod': learnMethod,
    'description': description,
  };

  factory MoveDto.fromLocalMap(Map<String, dynamic> map) => MoveDto(
    name: map['name'],
    type: map['type'],
    damageClass: map['damageClass'],
    power: map['power'],
    accuracy: map['accuracy'],
    pp: map['pp'],
    level: map['level'],
    learnMethod: map['learnMethod'],
    description: map['description'],
  );
}

class FormDto {
  final int pokemonId;
  final String title;
  final List<String> types;
  final bool isMega;
  final bool isGmax;
  final bool isRegional;
  final String imageUrl;
  FormDto({
    required this.pokemonId,
    required this.title,
    required this.types,
    required this.isMega,
    required this.isGmax,
    required this.isRegional,
    required this.imageUrl,
  });
  factory FormDto.fromMap(Map<String, dynamic> m, int pid, String pname) {
    final fname = (m['form_name'] as String? ?? '').toLowerCase();
    final isMega = m['is_mega'] == true;
    final isGmax =
        fname.contains('gmax') ||
        fname.contains('gigantamax') ||
        pname.contains('gmax');
    final isReg =
        fname.contains('alola') ||
        fname.contains('galar') ||
        fname.contains('hisui') ||
        fname.contains('paldea');
    String display = fname;
    if (display.isEmpty || display == 'default') display = pname;
    if (isMega) display = 'Mega $pname';
    if (isGmax) display = '$pname G-Max';
    final types = ((m['pokemon_v2_pokemonformtypes'] as List?) ?? [])
        .map((t) => t['pokemon_v2_type']['name'] as String)
        .toList();
    return FormDto(
      pokemonId: pid,
      title: display,
      types: types,
      isMega: isMega,
      isGmax: isGmax,
      isRegional: isReg,
      imageUrl:
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$pid.png',
    );
  }

  Map<String, dynamic> toMap() => {
    'pokemonId': pokemonId,
    'title': title,
    'types': types,
    'isMega': isMega,
    'isGmax': isGmax,
    'isRegional': isRegional,
    'imageUrl': imageUrl,
  };

  factory FormDto.fromLocalMap(Map<String, dynamic> map) => FormDto(
    pokemonId: map['pokemonId'],
    title: map['title'],
    types: List<String>.from(map['types']),
    isMega: map['isMega'],
    isGmax: map['isGmax'],
    isRegional: map['isRegional'],
    imageUrl: map['imageUrl'],
  );
}

class EvolutionEdgeDto {
  final int fromSpeciesId;
  final int? fromPokemonId;
  final String fromName;
  final int toSpeciesId;
  final int? toPokemonId;
  final String toName;
  final Map<String, dynamic> method;
  EvolutionEdgeDto({
    required this.fromSpeciesId,
    this.fromPokemonId,
    required this.fromName,
    required this.toSpeciesId,
    this.toPokemonId,
    required this.toName,
    required this.method,
  });

  Map<String, dynamic> toMap() => {
    'fromSpeciesId': fromSpeciesId,
    'fromPokemonId': fromPokemonId,
    'fromName': fromName,
    'toSpeciesId': toSpeciesId,
    'toPokemonId': toPokemonId,
    'toName': toName,
    'method': method,
  };

  factory EvolutionEdgeDto.fromLocalMap(Map<String, dynamic> map) =>
      EvolutionEdgeDto(
        fromSpeciesId: map['fromSpeciesId'],
        fromPokemonId: map['fromPokemonId'],
        fromName: map['fromName'],
        toSpeciesId: map['toSpeciesId'],
        toPokemonId: map['toPokemonId'],
        toName: map['toName'],
        method: Map<String, dynamic>.from(map['method']),
      );
}
