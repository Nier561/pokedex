import 'package:gql/ast.dart';

class Variables$Query$PokemonDetailV2 {
  factory Variables$Query$PokemonDetailV2({required int id}) =>
      Variables$Query$PokemonDetailV2._({
        r'id': id,
      });

  Variables$Query$PokemonDetailV2._(this._$data);

  factory Variables$Query$PokemonDetailV2.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    return Variables$Query$PokemonDetailV2._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$PokemonDetailV2<Variables$Query$PokemonDetailV2>
      get copyWith => CopyWith$Variables$Query$PokemonDetailV2(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$PokemonDetailV2 ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$PokemonDetailV2<TRes> {
  factory CopyWith$Variables$Query$PokemonDetailV2(
    Variables$Query$PokemonDetailV2 instance,
    TRes Function(Variables$Query$PokemonDetailV2) then,
  ) = _CopyWithImpl$Variables$Query$PokemonDetailV2;

  factory CopyWith$Variables$Query$PokemonDetailV2.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$PokemonDetailV2;

  TRes call({int? id});
}

class _CopyWithImpl$Variables$Query$PokemonDetailV2<TRes>
    implements CopyWith$Variables$Query$PokemonDetailV2<TRes> {
  _CopyWithImpl$Variables$Query$PokemonDetailV2(
    this._instance,
    this._then,
  );

  final Variables$Query$PokemonDetailV2 _instance;

  final TRes Function(Variables$Query$PokemonDetailV2) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({Object? id = _undefined}) =>
      _then(Variables$Query$PokemonDetailV2._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$PokemonDetailV2<TRes>
    implements CopyWith$Variables$Query$PokemonDetailV2<TRes> {
  _CopyWithStubImpl$Variables$Query$PokemonDetailV2(this._res);

  final TRes _res;

  @override
  call({int? id}) => _res;
}

class Query$PokemonDetailV2 {
  Query$PokemonDetailV2({
    this.pokemon_v2_pokemon_by_pk,
    this.$__typename = 'query_root',
  });

  factory Query$PokemonDetailV2.fromJson(Map<String, dynamic> json) {
    final l$pokemonV2PokemonByPk = json['pokemon_v2_pokemon_by_pk'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV2(
      pokemon_v2_pokemon_by_pk: l$pokemonV2PokemonByPk == null
          ? null
          : Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk.fromJson(
              (l$pokemonV2PokemonByPk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk?
      pokemon_v2_pokemon_by_pk;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$pokemonV2PokemonByPk = pokemon_v2_pokemon_by_pk;
    resultData['pokemon_v2_pokemon_by_pk'] =
        l$pokemonV2PokemonByPk?.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$pokemonV2PokemonByPk = pokemon_v2_pokemon_by_pk;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pokemonV2PokemonByPk,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PokemonDetailV2 || runtimeType != other.runtimeType) {
      return false;
    }
    final l$pokemonV2PokemonByPk = pokemon_v2_pokemon_by_pk;
    final lother$pokemonV2PokemonByPk = other.pokemon_v2_pokemon_by_pk;
    if (l$pokemonV2PokemonByPk != lother$pokemonV2PokemonByPk) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PokemonDetailV2 on Query$PokemonDetailV2 {
  CopyWith$Query$PokemonDetailV2<Query$PokemonDetailV2> get copyWith =>
      CopyWith$Query$PokemonDetailV2(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PokemonDetailV2<TRes> {
  factory CopyWith$Query$PokemonDetailV2(
    Query$PokemonDetailV2 instance,
    TRes Function(Query$PokemonDetailV2) then,
  ) = _CopyWithImpl$Query$PokemonDetailV2;

  factory CopyWith$Query$PokemonDetailV2.stub(TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV2;

  TRes call({
    Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk? pokemon_v2_pokemon_by_pk,
    String? $__typename,
  });
  CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk<TRes>
      get pokemon_v2_pokemon_by_pk;
}

class _CopyWithImpl$Query$PokemonDetailV2<TRes>
    implements CopyWith$Query$PokemonDetailV2<TRes> {
  _CopyWithImpl$Query$PokemonDetailV2(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV2 _instance;

  final TRes Function(Query$PokemonDetailV2) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? pokemon_v2_pokemon_by_pk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PokemonDetailV2(
        pokemon_v2_pokemon_by_pk: pokemon_v2_pokemon_by_pk == _undefined
            ? _instance.pokemon_v2_pokemon_by_pk
            : (pokemon_v2_pokemon_by_pk
                as Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk<TRes>
      get pokemon_v2_pokemon_by_pk {
    final local$pokemonV2PokemonByPk = _instance.pokemon_v2_pokemon_by_pk;
    return local$pokemonV2PokemonByPk == null
        ? CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk.stub(
            _then(_instance))
        : CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk(
            local$pokemonV2PokemonByPk,
            (e) => call(pokemon_v2_pokemon_by_pk: e));
  }
}

class _CopyWithStubImpl$Query$PokemonDetailV2<TRes>
    implements CopyWith$Query$PokemonDetailV2<TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV2(this._res);

  final TRes _res;

  @override
  call({
    Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk? pokemon_v2_pokemon_by_pk,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk<TRes>
      get pokemon_v2_pokemon_by_pk =>
          CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk.stub(_res);
}

const documentNodeQueryPokemonDetailV2 = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'PokemonDetailV2'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'pokemon_v2_pokemon_by_pk'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'height'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'weight'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'pokemon_v2_pokemontypes'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'pokemon_v2_type'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'pokemon_v2_pokemonstats'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'base_stat'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'pokemon_v2_stat'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'pokemon_v2_pokemonabilities'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'pokemon_v2_ability'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'pokemon_v2_abilityeffecttexts'),
                    alias: null,
                    arguments: [
                      ArgumentNode(
                        name: NameNode(value: 'where'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'language_id'),
                            value: ObjectValueNode(fields: [
                              ObjectFieldNode(
                                name: NameNode(value: '_eq'),
                                value: IntValueNode(value: '9'),
                              )
                            ]),
                          )
                        ]),
                      ),
                      ArgumentNode(
                        name: NameNode(value: 'limit'),
                        value: IntValueNode(value: '1'),
                      ),
                    ],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'short_effect'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'pokemon_v2_pokemonspecy'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'pokemon_v2_evolutionchain'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'pokemon_v2_pokemonspecies'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'pokemon_v2_pokemons'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'id'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: '__typename'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                        ]),
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);

class Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk {
  Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk({
    required this.id,
    required this.name,
    this.height,
    this.weight,
    required this.pokemon_v2_pokemontypes,
    required this.pokemon_v2_pokemonstats,
    required this.pokemon_v2_pokemonabilities,
    this.pokemon_v2_pokemonspecy,
    this.$__typename = 'pokemon_v2_pokemon',
  });

  factory Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$height = json['height'];
    final l$weight = json['weight'];
    final l$pokemonV2Pokemontypes = json['pokemon_v2_pokemontypes'];
    final l$pokemonV2Pokemonstats = json['pokemon_v2_pokemonstats'];
    final l$pokemonV2Pokemonabilities = json['pokemon_v2_pokemonabilities'];
    final l$pokemonV2Pokemonspecy = json['pokemon_v2_pokemonspecy'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk(
      id: (l$id as int),
      name: (l$name as String),
      height: (l$height as int?),
      weight: (l$weight as int?),
      pokemon_v2_pokemontypes: (l$pokemonV2Pokemontypes as List<dynamic>)
          .map((e) =>
              Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      pokemon_v2_pokemonstats: (l$pokemonV2Pokemonstats as List<dynamic>)
          .map((e) =>
              Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      pokemon_v2_pokemonabilities: (l$pokemonV2Pokemonabilities
              as List<dynamic>)
          .map((e) =>
              Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      pokemon_v2_pokemonspecy: l$pokemonV2Pokemonspecy == null
          ? null
          : Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy
              .fromJson((l$pokemonV2Pokemonspecy as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final int? height;

  final int? weight;

  final List<
          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes>
      pokemon_v2_pokemontypes;

  final List<
          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats>
      pokemon_v2_pokemonstats;

  final List<
          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities>
      pokemon_v2_pokemonabilities;

  final Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy?
      pokemon_v2_pokemonspecy;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$name = name;
    resultData['name'] = l$name;
    final l$height = height;
    resultData['height'] = l$height;
    final l$weight = weight;
    resultData['weight'] = l$weight;
    final l$pokemonV2Pokemontypes = pokemon_v2_pokemontypes;
    resultData['pokemon_v2_pokemontypes'] =
        l$pokemonV2Pokemontypes.map((e) => e.toJson()).toList();
    final l$pokemonV2Pokemonstats = pokemon_v2_pokemonstats;
    resultData['pokemon_v2_pokemonstats'] =
        l$pokemonV2Pokemonstats.map((e) => e.toJson()).toList();
    final l$pokemonV2Pokemonabilities = pokemon_v2_pokemonabilities;
    resultData['pokemon_v2_pokemonabilities'] =
        l$pokemonV2Pokemonabilities.map((e) => e.toJson()).toList();
    final l$pokemonV2Pokemonspecy = pokemon_v2_pokemonspecy;
    resultData['pokemon_v2_pokemonspecy'] =
        l$pokemonV2Pokemonspecy?.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$height = height;
    final l$weight = weight;
    final l$pokemonV2Pokemontypes = pokemon_v2_pokemontypes;
    final l$pokemonV2Pokemonstats = pokemon_v2_pokemonstats;
    final l$pokemonV2Pokemonabilities = pokemon_v2_pokemonabilities;
    final l$pokemonV2Pokemonspecy = pokemon_v2_pokemonspecy;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$height,
      l$weight,
      Object.hashAll(l$pokemonV2Pokemontypes.map((v) => v)),
      Object.hashAll(l$pokemonV2Pokemonstats.map((v) => v)),
      Object.hashAll(l$pokemonV2Pokemonabilities.map((v) => v)),
      l$pokemonV2Pokemonspecy,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$height = height;
    final lOther$height = other.height;
    if (l$height != lOther$height) {
      return false;
    }
    final l$weight = weight;
    final lOther$weight = other.weight;
    if (l$weight != lOther$weight) {
      return false;
    }
    final l$pokemonV2Pokemontypes = pokemon_v2_pokemontypes;
    final lother$pokemonV2Pokemontypes = other.pokemon_v2_pokemontypes;
    if (l$pokemonV2Pokemontypes.length !=
        lother$pokemonV2Pokemontypes.length) {
      return false;
    }
    for (int i = 0; i < l$pokemonV2Pokemontypes.length; i++) {
      final l$pokemonV2Pokemontypes$entry = l$pokemonV2Pokemontypes[i];
      final lother$pokemonV2Pokemontypes$entry =
          lother$pokemonV2Pokemontypes[i];
      if (l$pokemonV2Pokemontypes$entry !=
          lother$pokemonV2Pokemontypes$entry) {
        return false;
      }
    }
    final l$pokemonV2Pokemonstats = pokemon_v2_pokemonstats;
    final lother$pokemonV2Pokemonstats = other.pokemon_v2_pokemonstats;
    if (l$pokemonV2Pokemonstats.length !=
        lother$pokemonV2Pokemonstats.length) {
      return false;
    }
    for (int i = 0; i < l$pokemonV2Pokemonstats.length; i++) {
      final l$pokemonV2Pokemonstats$entry = l$pokemonV2Pokemonstats[i];
      final lother$pokemonV2Pokemonstats$entry =
          lother$pokemonV2Pokemonstats[i];
      if (l$pokemonV2Pokemonstats$entry !=
          lother$pokemonV2Pokemonstats$entry) {
        return false;
      }
    }
    final l$pokemonV2Pokemonabilities = pokemon_v2_pokemonabilities;
    final lother$pokemonV2Pokemonabilities =
        other.pokemon_v2_pokemonabilities;
    if (l$pokemonV2Pokemonabilities.length !=
        lother$pokemonV2Pokemonabilities.length) {
      return false;
    }
    for (int i = 0; i < l$pokemonV2Pokemonabilities.length; i++) {
      final l$pokemonV2Pokemonabilities$entry =
          l$pokemonV2Pokemonabilities[i];
      final lother$pokemonV2Pokemonabilities$entry =
          lother$pokemonV2Pokemonabilities[i];
      if (l$pokemonV2Pokemonabilities$entry !=
          lother$pokemonV2Pokemonabilities$entry) {
        return false;
      }
    }
    final l$pokemonV2Pokemonspecy = pokemon_v2_pokemonspecy;
    final lother$pokemonV2Pokemonspecy = other.pokemon_v2_pokemonspecy;
    if (l$pokemonV2Pokemonspecy != lother$pokemonV2Pokemonspecy) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk
    on Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk {
  CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk<
          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk>
      get copyWith => CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk<TRes> {
  factory CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk(
    Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk instance,
    TRes Function(Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk) then,
  ) = _CopyWithImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk;

  factory CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk;

  TRes call({
    int? id,
    String? name,
    int? height,
    int? weight,
    List<Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes>?
        pokemon_v2_pokemontypes,
    List<Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats>?
        pokemon_v2_pokemonstats,
    List<Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities>?
        pokemon_v2_pokemonabilities,
    Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy?
        pokemon_v2_pokemonspecy,
    String? $__typename,
  });
  TRes pokemon_v2_pokemontypes(
      Iterable<Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes> Function(
              Iterable<
                  CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes<
                      Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes>>)
          fn);
  TRes pokemon_v2_pokemonstats(
      Iterable<Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats> Function(
              Iterable<
                  CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats<
                      Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats>>)
          fn);
  TRes pokemon_v2_pokemonabilities(
      Iterable<Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities> Function(
              Iterable<
                  CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities<
                      Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities>>)
          fn);
  CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy<
      TRes> get pokemon_v2_pokemonspecy;
}

class _CopyWithImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk<TRes>
    implements CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk<TRes> {
  _CopyWithImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk _instance;

  final TRes Function(Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? height = _undefined,
    Object? weight = _undefined,
    Object? pokemon_v2_pokemontypes = _undefined,
    Object? pokemon_v2_pokemonstats = _undefined,
    Object? pokemon_v2_pokemonabilities = _undefined,
    Object? pokemon_v2_pokemonspecy = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        height: height == _undefined ? _instance.height : (height as int?),
        weight: weight == _undefined ? _instance.weight : (weight as int?),
        pokemon_v2_pokemontypes: pokemon_v2_pokemontypes == _undefined ||
                pokemon_v2_pokemontypes == null
            ? _instance.pokemon_v2_pokemontypes
            : (pokemon_v2_pokemontypes as List<
                Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes>),
        pokemon_v2_pokemonstats: pokemon_v2_pokemonstats == _undefined ||
                pokemon_v2_pokemonstats == null
            ? _instance.pokemon_v2_pokemonstats
            : (pokemon_v2_pokemonstats as List<
                Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats>),
        pokemon_v2_pokemonabilities: pokemon_v2_pokemonabilities ==
                    _undefined ||
                pokemon_v2_pokemonabilities == null
            ? _instance.pokemon_v2_pokemonabilities
            : (pokemon_v2_pokemonabilities as List<
                Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities>),
        pokemon_v2_pokemonspecy: pokemon_v2_pokemonspecy == _undefined
            ? _instance.pokemon_v2_pokemonspecy
            : (pokemon_v2_pokemonspecy
                as Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  TRes pokemon_v2_pokemontypes(
          Iterable<Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes<
                          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes>>)
              fn) =>
      call(
          pokemon_v2_pokemontypes: fn(_instance.pokemon_v2_pokemontypes.map((e) =>
              CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes(
                e,
                (i) => i,
              ))).toList());

  @override
  TRes pokemon_v2_pokemonstats(
          Iterable<Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats<
                          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats>>)
              fn) =>
      call(
          pokemon_v2_pokemonstats: fn(_instance.pokemon_v2_pokemonstats.map((e) =>
              CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats(
                e,
                (i) => i,
              ))).toList());

  @override
  TRes pokemon_v2_pokemonabilities(
          Iterable<Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities<
                          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities>>)
              fn) =>
      call(
          pokemon_v2_pokemonabilities: fn(_instance.pokemon_v2_pokemonabilities
              .map((e) =>
                  CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities(
                    e,
                    (i) => i,
                  ))).toList());

  @override
  CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy<
      TRes> get pokemon_v2_pokemonspecy {
    final local$pokemonV2Pokemonspecy = _instance.pokemon_v2_pokemonspecy;
    return local$pokemonV2Pokemonspecy == null
        ? CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy(
            local$pokemonV2Pokemonspecy,
            (e) => call(pokemon_v2_pokemonspecy: e));
  }
}

class _CopyWithStubImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk<TRes>
    implements CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk<TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk(this._res);

  final TRes _res;

  @override
  call({
    int? id,
    String? name,
    int? height,
    int? weight,
    List<Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes>?
        pokemon_v2_pokemontypes,
    List<Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats>?
        pokemon_v2_pokemonstats,
    List<Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities>?
        pokemon_v2_pokemonabilities,
    Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy?
        pokemon_v2_pokemonspecy,
    String? $__typename,
  }) =>
      _res;

  @override
  pokemon_v2_pokemontypes(fn) => _res;

  @override
  pokemon_v2_pokemonstats(fn) => _res;

  @override
  pokemon_v2_pokemonabilities(fn) => _res;

  @override
  CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy<
          TRes>
      get pokemon_v2_pokemonspecy =>
          CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy
              .stub(_res);
}

class Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes {
  Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes({
    this.pokemon_v2_type,
    this.$__typename = 'pokemon_v2_pokemontype',
  });

  factory Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes.fromJson(
      Map<String, dynamic> json) {
    final l$pokemonV2Type = json['pokemon_v2_type'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes(
      pokemon_v2_type: l$pokemonV2Type == null
          ? null
          : Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type
              .fromJson((l$pokemonV2Type as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type?
      pokemon_v2_type;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$pokemonV2Type = pokemon_v2_type;
    resultData['pokemon_v2_type'] = l$pokemonV2Type?.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$pokemonV2Type = pokemon_v2_type;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pokemonV2Type,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pokemonV2Type = pokemon_v2_type;
    final lother$pokemonV2Type = other.pokemon_v2_type;
    if (l$pokemonV2Type != lother$pokemonV2Type) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes
    on Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes {
  CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes<
          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes>
      get copyWith =>
          CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes<
    TRes> {
  factory CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes(
    Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes
        instance,
    TRes Function(
            Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes)
        then,
  ) = _CopyWithImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes;

  factory CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes;

  TRes call({
    Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type?
        pokemon_v2_type,
    String? $__typename,
  });
  CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type<
      TRes> get pokemon_v2_type;
}

class _CopyWithImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes<
            TRes> {
  _CopyWithImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes
      _instance;

  final TRes Function(
          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? pokemon_v2_type = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes(
        pokemon_v2_type: pokemon_v2_type == _undefined
            ? _instance.pokemon_v2_type
            : (pokemon_v2_type
                as Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type<
      TRes> get pokemon_v2_type {
    final local$pokemonV2Type = _instance.pokemon_v2_type;
    return local$pokemonV2Type == null
        ? CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type(
            local$pokemonV2Type, (e) => call(pokemon_v2_type: e));
  }
}

class _CopyWithStubImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes(
      this._res);

  final TRes _res;

  @override
  call({
    Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type?
        pokemon_v2_type,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type<
          TRes>
      get pokemon_v2_type =>
          CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type
              .stub(_res);
}

class Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type {
  Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type({
    required this.name,
    this.$__typename = 'pokemon_v2_type',
  });

  factory Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$name = name;
    resultData['name'] = l$name;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type
    on Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type {
  CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type<
          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type>
      get copyWith =>
          CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type<
    TRes> {
  factory CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type(
    Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type
        instance,
    TRes Function(
            Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type)
        then,
  ) = _CopyWithImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type;

  factory CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type<
            TRes> {
  _CopyWithImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type
      _instance;

  final TRes Function(
          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type(
      this._res);

  final TRes _res;

  @override
  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats {
  Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats({
    required this.base_stat,
    this.pokemon_v2_stat,
    this.$__typename = 'pokemon_v2_pokemonstat',
  });

  factory Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats.fromJson(
      Map<String, dynamic> json) {
    final l$baseStat = json['base_stat'];
    final l$pokemonV2Stat = json['pokemon_v2_stat'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats(
      base_stat: (l$baseStat as int),
      pokemon_v2_stat: l$pokemonV2Stat == null
          ? null
          : Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat
              .fromJson((l$pokemonV2Stat as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int base_stat;

  final Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat?
      pokemon_v2_stat;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$baseStat = base_stat;
    resultData['base_stat'] = l$baseStat;
    final l$pokemonV2Stat = pokemon_v2_stat;
    resultData['pokemon_v2_stat'] = l$pokemonV2Stat?.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$baseStat = base_stat;
    final l$pokemonV2Stat = pokemon_v2_stat;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$baseStat,
      l$pokemonV2Stat,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$baseStat = base_stat;
    final lother$baseStat = other.base_stat;
    if (l$baseStat != lother$baseStat) {
      return false;
    }
    final l$pokemonV2Stat = pokemon_v2_stat;
    final lother$pokemonV2Stat = other.pokemon_v2_stat;
    if (l$pokemonV2Stat != lother$pokemonV2Stat) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats
    on Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats {
  CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats<
          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats>
      get copyWith =>
          CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats<
    TRes> {
  factory CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats(
    Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats
        instance,
    TRes Function(
            Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats)
        then,
  ) = _CopyWithImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats;

  factory CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats;

  TRes call({
    int? base_stat,
    Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat?
        pokemon_v2_stat,
    String? $__typename,
  });
  CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat<
      TRes> get pokemon_v2_stat;
}

class _CopyWithImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats<
            TRes> {
  _CopyWithImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats
      _instance;

  final TRes Function(
          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? base_stat = _undefined,
    Object? pokemon_v2_stat = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats(
        base_stat: base_stat == _undefined || base_stat == null
            ? _instance.base_stat
            : (base_stat as int),
        pokemon_v2_stat: pokemon_v2_stat == _undefined
            ? _instance.pokemon_v2_stat
            : (pokemon_v2_stat
                as Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat<
      TRes> get pokemon_v2_stat {
    final local$pokemonV2Stat = _instance.pokemon_v2_stat;
    return local$pokemonV2Stat == null
        ? CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat(
            local$pokemonV2Stat, (e) => call(pokemon_v2_stat: e));
  }
}

class _CopyWithStubImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats(
      this._res);

  final TRes _res;

  @override
  call({
    int? base_stat,
    Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat?
        pokemon_v2_stat,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat<
          TRes>
      get pokemon_v2_stat =>
          CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat
              .stub(_res);
}

class Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat {
  Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat({
    required this.name,
    this.$__typename = 'pokemon_v2_stat',
  });

  factory Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$name = name;
    resultData['name'] = l$name;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat
    on Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat {
  CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat<
          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat>
      get copyWith =>
          CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat<
    TRes> {
  factory CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat(
    Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat
        instance,
    TRes Function(
            Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat)
        then,
  ) = _CopyWithImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat;

  factory CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat<
            TRes> {
  _CopyWithImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat
      _instance;

  final TRes Function(
          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat(
      this._res);

  final TRes _res;

  @override
  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities {
  Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities({
    this.pokemon_v2_ability,
    this.$__typename = 'pokemon_v2_pokemonability',
  });

  factory Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities.fromJson(
      Map<String, dynamic> json) {
    final l$pokemonV2Ability = json['pokemon_v2_ability'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities(
      pokemon_v2_ability: l$pokemonV2Ability == null
          ? null
          : Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability
              .fromJson((l$pokemonV2Ability as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability?
      pokemon_v2_ability;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$pokemonV2Ability = pokemon_v2_ability;
    resultData['pokemon_v2_ability'] = l$pokemonV2Ability?.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$pokemonV2Ability = pokemon_v2_ability;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pokemonV2Ability,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pokemonV2Ability = pokemon_v2_ability;
    final lother$pokemonV2Ability = other.pokemon_v2_ability;
    if (l$pokemonV2Ability != lother$pokemonV2Ability) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities
    on Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities {
  CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities<
          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities>
      get copyWith =>
          CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities<
    TRes> {
  factory CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities(
    Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities
        instance,
    TRes Function(
            Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities)
        then,
  ) = _CopyWithImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities;

  factory CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities;

  TRes call({
    Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability?
        pokemon_v2_ability,
    String? $__typename,
  });
  CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability<
      TRes> get pokemon_v2_ability;
}

class _CopyWithImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities<
            TRes> {
  _CopyWithImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities
      _instance;

  final TRes Function(
          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? pokemon_v2_ability = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities(
        pokemon_v2_ability: pokemon_v2_ability == _undefined
            ? _instance.pokemon_v2_ability
            : (pokemon_v2_ability
                as Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability<
      TRes> get pokemon_v2_ability {
    final local$pokemonV2Ability = _instance.pokemon_v2_ability;
    return local$pokemonV2Ability == null
        ? CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability(
            local$pokemonV2Ability, (e) => call(pokemon_v2_ability: e));
  }
}

class _CopyWithStubImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities(
      this._res);

  final TRes _res;

  @override
  call({
    Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability?
        pokemon_v2_ability,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability<
          TRes>
      get pokemon_v2_ability =>
          CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability
              .stub(_res);
}

class Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability {
  Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability({
    required this.name,
    required this.pokemon_v2_abilityeffecttexts,
    this.$__typename = 'pokemon_v2_ability',
  });

  factory Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$pokemonV2Abilityeffecttexts =
        json['pokemon_v2_abilityeffecttexts'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability(
      name: (l$name as String),
      pokemon_v2_abilityeffecttexts: (l$pokemonV2Abilityeffecttexts
              as List<dynamic>)
          .map((e) =>
              Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final List<
          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts>
      pokemon_v2_abilityeffecttexts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$name = name;
    resultData['name'] = l$name;
    final l$pokemonV2Abilityeffecttexts = pokemon_v2_abilityeffecttexts;
    resultData['pokemon_v2_abilityeffecttexts'] =
        l$pokemonV2Abilityeffecttexts.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$pokemonV2Abilityeffecttexts = pokemon_v2_abilityeffecttexts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      Object.hashAll(l$pokemonV2Abilityeffecttexts.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$pokemonV2Abilityeffecttexts = pokemon_v2_abilityeffecttexts;
    final lother$pokemonV2Abilityeffecttexts =
        other.pokemon_v2_abilityeffecttexts;
    if (l$pokemonV2Abilityeffecttexts.length !=
        lother$pokemonV2Abilityeffecttexts.length) {
      return false;
    }
    for (int i = 0; i < l$pokemonV2Abilityeffecttexts.length; i++) {
      final l$pokemonV2Abilityeffecttexts$entry =
          l$pokemonV2Abilityeffecttexts[i];
      final lother$pokemonV2Abilityeffecttexts$entry =
          lother$pokemonV2Abilityeffecttexts[i];
      if (l$pokemonV2Abilityeffecttexts$entry !=
          lother$pokemonV2Abilityeffecttexts$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability
    on Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability {
  CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability<
          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability>
      get copyWith =>
          CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability<
    TRes> {
  factory CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability(
    Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability
        instance,
    TRes Function(
            Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability)
        then,
  ) = _CopyWithImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability;

  factory CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability;

  TRes call({
    String? name,
    List<Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts>?
        pokemon_v2_abilityeffecttexts,
    String? $__typename,
  });
  TRes pokemon_v2_abilityeffecttexts(
      Iterable<Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts> Function(
              Iterable<
                  CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts<
                      Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts>>)
          fn);
}

class _CopyWithImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability<
            TRes> {
  _CopyWithImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability
      _instance;

  final TRes Function(
          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? name = _undefined,
    Object? pokemon_v2_abilityeffecttexts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        pokemon_v2_abilityeffecttexts: pokemon_v2_abilityeffecttexts ==
                    _undefined ||
                pokemon_v2_abilityeffecttexts == null
            ? _instance.pokemon_v2_abilityeffecttexts
            : (pokemon_v2_abilityeffecttexts as List<
                Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  TRes pokemon_v2_abilityeffecttexts(
          Iterable<Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts<
                          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts>>)
              fn) =>
      call(
          pokemon_v2_abilityeffecttexts: fn(
              _instance.pokemon_v2_abilityeffecttexts.map((e) =>
                  CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability(
      this._res);

  final TRes _res;

  @override
  call({
    String? name,
    List<Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts>?
        pokemon_v2_abilityeffecttexts,
    String? $__typename,
  }) =>
      _res;

  @override
  pokemon_v2_abilityeffecttexts(fn) => _res;
}

class Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts {
  Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts({
    required this.short_effect,
    this.$__typename = 'pokemon_v2_abilityeffecttext',
  });

  factory Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts.fromJson(
      Map<String, dynamic> json) {
    final l$shortEffect = json['short_effect'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts(
      short_effect: (l$shortEffect as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String short_effect;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$shortEffect = short_effect;
    resultData['short_effect'] = l$shortEffect;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$shortEffect = short_effect;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$shortEffect,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$shortEffect = short_effect;
    final lother$shortEffect = other.short_effect;
    if (l$shortEffect != lother$shortEffect) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts
    on Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts {
  CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts<
          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts>
      get copyWith =>
          CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts<
    TRes> {
  factory CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts(
    Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts
        instance,
    TRes Function(
            Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts)
        then,
  ) = _CopyWithImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts;

  factory CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts;

  TRes call({
    String? short_effect,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts<
            TRes> {
  _CopyWithImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts
      _instance;

  final TRes Function(
          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? short_effect = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts(
        short_effect: short_effect == _undefined || short_effect == null
            ? _instance.short_effect
            : (short_effect as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts(
      this._res);

  final TRes _res;

  @override
  call({
    String? short_effect,
    String? $__typename,
  }) =>
      _res;
}

class Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy {
  Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy({
    this.pokemon_v2_evolutionchain,
    this.$__typename = 'pokemon_v2_pokemonspecies',
  });

  factory Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy.fromJson(
      Map<String, dynamic> json) {
    final l$pokemonV2Evolutionchain = json['pokemon_v2_evolutionchain'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy(
      pokemon_v2_evolutionchain: l$pokemonV2Evolutionchain == null
          ? null
          : Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain
              .fromJson((l$pokemonV2Evolutionchain as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain?
      pokemon_v2_evolutionchain;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$pokemonV2Evolutionchain = pokemon_v2_evolutionchain;
    resultData['pokemon_v2_evolutionchain'] =
        l$pokemonV2Evolutionchain?.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$pokemonV2Evolutionchain = pokemon_v2_evolutionchain;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pokemonV2Evolutionchain,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pokemonV2Evolutionchain = pokemon_v2_evolutionchain;
    final lother$pokemonV2Evolutionchain = other.pokemon_v2_evolutionchain;
    if (l$pokemonV2Evolutionchain != lother$pokemonV2Evolutionchain) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy
    on Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy {
  CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy<
          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy>
      get copyWith =>
          CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy<
    TRes> {
  factory CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy(
    Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy
        instance,
    TRes Function(
            Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy)
        then,
  ) = _CopyWithImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy;

  factory CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy;

  TRes call({
    Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain?
        pokemon_v2_evolutionchain,
    String? $__typename,
  });
  CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain<
      TRes> get pokemon_v2_evolutionchain;
}

class _CopyWithImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy<
            TRes> {
  _CopyWithImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy
      _instance;

  final TRes Function(
          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? pokemon_v2_evolutionchain = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy(
        pokemon_v2_evolutionchain: pokemon_v2_evolutionchain == _undefined
            ? _instance.pokemon_v2_evolutionchain
            : (pokemon_v2_evolutionchain
                as Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain<
      TRes> get pokemon_v2_evolutionchain {
    final local$pokemonV2Evolutionchain = _instance.pokemon_v2_evolutionchain;
    return local$pokemonV2Evolutionchain == null
        ? CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain(
            local$pokemonV2Evolutionchain,
            (e) => call(pokemon_v2_evolutionchain: e));
  }
}

class _CopyWithStubImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy(
      this._res);

  final TRes _res;

  @override
  call({
    Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain?
        pokemon_v2_evolutionchain,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain<
          TRes>
      get pokemon_v2_evolutionchain =>
          CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain
              .stub(_res);
}

class Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain {
  Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain({
    required this.pokemon_v2_pokemonspecies,
    this.$__typename = 'pokemon_v2_evolutionchain',
  });

  factory Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain.fromJson(
      Map<String, dynamic> json) {
    final l$pokemonV2Pokemonspecies = json['pokemon_v2_pokemonspecies'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain(
      pokemon_v2_pokemonspecies: (l$pokemonV2Pokemonspecies as List<dynamic>)
          .map((e) =>
              Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies>
      pokemon_v2_pokemonspecies;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$pokemonV2Pokemonspecies = pokemon_v2_pokemonspecies;
    resultData['pokemon_v2_pokemonspecies'] =
        l$pokemonV2Pokemonspecies.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$pokemonV2Pokemonspecies = pokemon_v2_pokemonspecies;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$pokemonV2Pokemonspecies.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pokemonV2Pokemonspecies = pokemon_v2_pokemonspecies;
    final lother$pokemonV2Pokemonspecies = other.pokemon_v2_pokemonspecies;
    if (l$pokemonV2Pokemonspecies.length !=
        lother$pokemonV2Pokemonspecies.length) {
      return false;
    }
    for (int i = 0; i < l$pokemonV2Pokemonspecies.length; i++) {
      final l$pokemonV2Pokemonspecies$entry = l$pokemonV2Pokemonspecies[i];
      final lother$pokemonV2Pokemonspecies$entry =
          lother$pokemonV2Pokemonspecies[i];
      if (l$pokemonV2Pokemonspecies$entry !=
          lother$pokemonV2Pokemonspecies$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain
    on Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain {
  CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain<
          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain>
      get copyWith =>
          CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain<
    TRes> {
  factory CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain(
    Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain
        instance,
    TRes Function(
            Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain)
        then,
  ) = _CopyWithImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain;

  factory CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain;

  TRes call({
    List<Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies>?
        pokemon_v2_pokemonspecies,
    String? $__typename,
  });
  TRes pokemon_v2_pokemonspecies(
      Iterable<Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies> Function(
              Iterable<
                  CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies<
                      Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies>>)
          fn);
}

class _CopyWithImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain<
            TRes> {
  _CopyWithImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain
      _instance;

  final TRes Function(
          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? pokemon_v2_pokemonspecies = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain(
        pokemon_v2_pokemonspecies: pokemon_v2_pokemonspecies == _undefined ||
                pokemon_v2_pokemonspecies == null
            ? _instance.pokemon_v2_pokemonspecies
            : (pokemon_v2_pokemonspecies as List<
                Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  TRes pokemon_v2_pokemonspecies(
          Iterable<Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies<
                          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies>>)
              fn) =>
      call(
          pokemon_v2_pokemonspecies: fn(_instance.pokemon_v2_pokemonspecies
              .map((e) =>
                  CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain(
      this._res);

  final TRes _res;

  @override
  call({
    List<Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies>?
        pokemon_v2_pokemonspecies,
    String? $__typename,
  }) =>
      _res;

  @override
  pokemon_v2_pokemonspecies(fn) => _res;
}

class Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies {
  Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies({
    required this.id,
    required this.name,
    required this.pokemon_v2_pokemons,
    this.$__typename = 'pokemon_v2_pokemonspecies',
  });

  factory Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$pokemonV2Pokemons = json['pokemon_v2_pokemons'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies(
      id: (l$id as int),
      name: (l$name as String),
      pokemon_v2_pokemons: (l$pokemonV2Pokemons as List<dynamic>)
          .map((e) =>
              Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final List<
          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons>
      pokemon_v2_pokemons;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$name = name;
    resultData['name'] = l$name;
    final l$pokemonV2Pokemons = pokemon_v2_pokemons;
    resultData['pokemon_v2_pokemons'] =
        l$pokemonV2Pokemons.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$pokemonV2Pokemons = pokemon_v2_pokemons;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      Object.hashAll(l$pokemonV2Pokemons.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$pokemonV2Pokemons = pokemon_v2_pokemons;
    final lother$pokemonV2Pokemons = other.pokemon_v2_pokemons;
    if (l$pokemonV2Pokemons.length != lother$pokemonV2Pokemons.length) {
      return false;
    }
    for (int i = 0; i < l$pokemonV2Pokemons.length; i++) {
      final l$pokemonV2Pokemons$entry = l$pokemonV2Pokemons[i];
      final lother$pokemonV2Pokemons$entry = lother$pokemonV2Pokemons[i];
      if (l$pokemonV2Pokemons$entry != lother$pokemonV2Pokemons$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies
    on Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies {
  CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies<
          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies>
      get copyWith =>
          CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies<
    TRes> {
  factory CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies(
    Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies
        instance,
    TRes Function(
            Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies)
        then,
  ) = _CopyWithImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies;

  factory CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies;

  TRes call({
    int? id,
    String? name,
    List<Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons>?
        pokemon_v2_pokemons,
    String? $__typename,
  });
  TRes pokemon_v2_pokemons(
      Iterable<Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons> Function(
              Iterable<
                  CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons<
                      Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons>>)
          fn);
}

class _CopyWithImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies<
            TRes> {
  _CopyWithImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies
      _instance;

  final TRes Function(
          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? pokemon_v2_pokemons = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        pokemon_v2_pokemons: pokemon_v2_pokemons == _undefined ||
                pokemon_v2_pokemons == null
            ? _instance.pokemon_v2_pokemons
            : (pokemon_v2_pokemons as List<
                Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  TRes pokemon_v2_pokemons(
          Iterable<Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons<
                          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons>>)
              fn) =>
      call(
          pokemon_v2_pokemons: fn(_instance.pokemon_v2_pokemons.map((e) =>
              CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies(
      this._res);

  final TRes _res;

  @override
  call({
    int? id,
    String? name,
    List<Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons>?
        pokemon_v2_pokemons,
    String? $__typename,
  }) =>
      _res;

  @override
  pokemon_v2_pokemons(fn) => _res;
}

class Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons {
  Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons({
    required this.id,
    this.$__typename = 'pokemon_v2_pokemon',
  });

  factory Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons(
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons
    on Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons {
  CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons<
          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons>
      get copyWith =>
          CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons<
    TRes> {
  factory CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons(
    Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons
        instance,
    TRes Function(
            Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons)
        then,
  ) = _CopyWithImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons;

  factory CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons;

  TRes call({
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons<
            TRes> {
  _CopyWithImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons
      _instance;

  final TRes Function(
          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV2$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons(
      this._res);

  final TRes _res;

  @override
  call({
    int? id,
    String? $__typename,
  }) =>
      _res;
}
