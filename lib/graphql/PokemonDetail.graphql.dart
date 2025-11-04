import 'package:gql/ast.dart';

class Variables$Query$PokemonDetailV3 {
  factory Variables$Query$PokemonDetailV3({
    required int id,
    int? langId,
  }) =>
      Variables$Query$PokemonDetailV3._({
        r'id': id,
        if (langId != null) r'langId': langId,
      });

  Variables$Query$PokemonDetailV3._(this._$data);

  factory Variables$Query$PokemonDetailV3.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    if (data.containsKey('langId')) {
      final l$langId = data['langId'];
      result$data['langId'] = (l$langId as int);
    }
    return Variables$Query$PokemonDetailV3._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  int? get langId => (_$data['langId'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    if (_$data.containsKey('langId')) {
      final l$langId = langId;
      result$data['langId'] = (l$langId as int);
    }
    return result$data;
  }

  CopyWith$Variables$Query$PokemonDetailV3<Variables$Query$PokemonDetailV3>
      get copyWith => CopyWith$Variables$Query$PokemonDetailV3(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$PokemonDetailV3 ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$langId = langId;
    final lOther$langId = other.langId;
    if (_$data.containsKey('langId') != other._$data.containsKey('langId')) {
      return false;
    }
    if (l$langId != lOther$langId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$langId = langId;
    return Object.hashAll([
      l$id,
      _$data.containsKey('langId') ? l$langId : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$PokemonDetailV3<TRes> {
  factory CopyWith$Variables$Query$PokemonDetailV3(
    Variables$Query$PokemonDetailV3 instance,
    TRes Function(Variables$Query$PokemonDetailV3) then,
  ) = _CopyWithImpl$Variables$Query$PokemonDetailV3;

  factory CopyWith$Variables$Query$PokemonDetailV3.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$PokemonDetailV3;

  TRes call({
    int? id,
    int? langId,
  });
}

class _CopyWithImpl$Variables$Query$PokemonDetailV3<TRes>
    implements CopyWith$Variables$Query$PokemonDetailV3<TRes> {
  _CopyWithImpl$Variables$Query$PokemonDetailV3(
    this._instance,
    this._then,
  );

  final Variables$Query$PokemonDetailV3 _instance;

  final TRes Function(Variables$Query$PokemonDetailV3) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? langId = _undefined,
  }) =>
      _then(Variables$Query$PokemonDetailV3._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
        if (langId != _undefined && langId != null) 'langId': (langId as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$PokemonDetailV3<TRes>
    implements CopyWith$Variables$Query$PokemonDetailV3<TRes> {
  _CopyWithStubImpl$Variables$Query$PokemonDetailV3(this._res);

  TRes _res;

  call({
    int? id,
    int? langId,
  }) =>
      _res;
}

class Query$PokemonDetailV3 {
  Query$PokemonDetailV3({
    this.pokemon_v2_pokemon_by_pk,
    this.$__typename = 'query_root',
  });

  factory Query$PokemonDetailV3.fromJson(Map<String, dynamic> json) {
    final l$pokemon_v2_pokemon_by_pk = json['pokemon_v2_pokemon_by_pk'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV3(
      pokemon_v2_pokemon_by_pk: l$pokemon_v2_pokemon_by_pk == null
          ? null
          : Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk.fromJson(
              (l$pokemon_v2_pokemon_by_pk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk?
      pokemon_v2_pokemon_by_pk;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pokemon_v2_pokemon_by_pk = pokemon_v2_pokemon_by_pk;
    _resultData['pokemon_v2_pokemon_by_pk'] =
        l$pokemon_v2_pokemon_by_pk?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pokemon_v2_pokemon_by_pk = pokemon_v2_pokemon_by_pk;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pokemon_v2_pokemon_by_pk,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PokemonDetailV3 || runtimeType != other.runtimeType) {
      return false;
    }
    final l$pokemon_v2_pokemon_by_pk = pokemon_v2_pokemon_by_pk;
    final lOther$pokemon_v2_pokemon_by_pk = other.pokemon_v2_pokemon_by_pk;
    if (l$pokemon_v2_pokemon_by_pk != lOther$pokemon_v2_pokemon_by_pk) {
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

extension UtilityExtension$Query$PokemonDetailV3 on Query$PokemonDetailV3 {
  CopyWith$Query$PokemonDetailV3<Query$PokemonDetailV3> get copyWith =>
      CopyWith$Query$PokemonDetailV3(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PokemonDetailV3<TRes> {
  factory CopyWith$Query$PokemonDetailV3(
    Query$PokemonDetailV3 instance,
    TRes Function(Query$PokemonDetailV3) then,
  ) = _CopyWithImpl$Query$PokemonDetailV3;

  factory CopyWith$Query$PokemonDetailV3.stub(TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV3;

  TRes call({
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk? pokemon_v2_pokemon_by_pk,
    String? $__typename,
  });
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk<TRes>
      get pokemon_v2_pokemon_by_pk;
}

class _CopyWithImpl$Query$PokemonDetailV3<TRes>
    implements CopyWith$Query$PokemonDetailV3<TRes> {
  _CopyWithImpl$Query$PokemonDetailV3(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV3 _instance;

  final TRes Function(Query$PokemonDetailV3) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pokemon_v2_pokemon_by_pk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PokemonDetailV3(
        pokemon_v2_pokemon_by_pk: pokemon_v2_pokemon_by_pk == _undefined
            ? _instance.pokemon_v2_pokemon_by_pk
            : (pokemon_v2_pokemon_by_pk
                as Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk<TRes>
      get pokemon_v2_pokemon_by_pk {
    final local$pokemon_v2_pokemon_by_pk = _instance.pokemon_v2_pokemon_by_pk;
    return local$pokemon_v2_pokemon_by_pk == null
        ? CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk.stub(
            _then(_instance))
        : CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk(
            local$pokemon_v2_pokemon_by_pk,
            (e) => call(pokemon_v2_pokemon_by_pk: e));
  }
}

class _CopyWithStubImpl$Query$PokemonDetailV3<TRes>
    implements CopyWith$Query$PokemonDetailV3<TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV3(this._res);

  TRes _res;

  call({
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk? pokemon_v2_pokemon_by_pk,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk<TRes>
      get pokemon_v2_pokemon_by_pk =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk.stub(_res);
}

const documentNodeQueryPokemonDetailV3 = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'PokemonDetailV3'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'langId')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: IntValueNode(value: '9')),
        directives: [],
      ),
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
                name: NameNode(value: 'is_hidden'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
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
                                value: VariableNode(
                                    name: NameNode(value: 'langId')),
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
                name: NameNode(value: 'gender_rate'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'pokemon_v2_pokemonspeciesflavortexts'),
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
                            value:
                                VariableNode(name: NameNode(value: 'langId')),
                          )
                        ]),
                      )
                    ]),
                  ),
                  ArgumentNode(
                    name: NameNode(value: 'order_by'),
                    value: ObjectValueNode(fields: [
                      ObjectFieldNode(
                        name: NameNode(value: 'version_id'),
                        value: EnumValueNode(name: NameNode(value: 'desc')),
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
                    name: NameNode(value: 'flavor_text'),
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
                name: NameNode(value: 'pokemon_v2_evolutionchain'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'pokemon_v2_pokemonspecies'),
                    alias: null,
                    arguments: [
                      ArgumentNode(
                        name: NameNode(value: 'order_by'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'order'),
                            value: EnumValueNode(name: NameNode(value: 'asc')),
                          )
                        ]),
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
                        name: NameNode(value: 'order'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'evolves_from_species_id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'pokemon_v2_pokemons'),
                        alias: null,
                        arguments: [
                          ArgumentNode(
                            name: NameNode(value: 'limit'),
                            value: IntValueNode(value: '1'),
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
            name: NameNode(value: 'pokemon_v2_pokemonmoves'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'order_by'),
                value: ListValueNode(values: [
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'version_group_id'),
                      value: EnumValueNode(name: NameNode(value: 'desc')),
                    )
                  ]),
                  ObjectValueNode(fields: [
                    ObjectFieldNode(
                      name: NameNode(value: 'level'),
                      value: EnumValueNode(name: NameNode(value: 'asc')),
                    )
                  ]),
                ]),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'level'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'version_group_id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'pokemon_v2_movelearnmethod'),
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
                name: NameNode(value: 'pokemon_v2_move'),
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
                    name: NameNode(value: 'power'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'pp'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'accuracy'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
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
                    name: NameNode(value: 'pokemon_v2_movedamageclass'),
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
                    name: NameNode(value: 'generation_id'),
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
]);

class Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk {
  Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk({
    required this.id,
    required this.name,
    this.height,
    this.weight,
    required this.pokemon_v2_pokemontypes,
    required this.pokemon_v2_pokemonstats,
    required this.pokemon_v2_pokemonabilities,
    this.pokemon_v2_pokemonspecy,
    required this.pokemon_v2_pokemonmoves,
    this.$__typename = 'pokemon_v2_pokemon',
  });

  factory Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$height = json['height'];
    final l$weight = json['weight'];
    final l$pokemon_v2_pokemontypes = json['pokemon_v2_pokemontypes'];
    final l$pokemon_v2_pokemonstats = json['pokemon_v2_pokemonstats'];
    final l$pokemon_v2_pokemonabilities = json['pokemon_v2_pokemonabilities'];
    final l$pokemon_v2_pokemonspecy = json['pokemon_v2_pokemonspecy'];
    final l$pokemon_v2_pokemonmoves = json['pokemon_v2_pokemonmoves'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk(
      id: (l$id as int),
      name: (l$name as String),
      height: (l$height as int?),
      weight: (l$weight as int?),
      pokemon_v2_pokemontypes: (l$pokemon_v2_pokemontypes as List<dynamic>)
          .map((e) =>
              Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      pokemon_v2_pokemonstats: (l$pokemon_v2_pokemonstats as List<dynamic>)
          .map((e) =>
              Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      pokemon_v2_pokemonabilities: (l$pokemon_v2_pokemonabilities
              as List<dynamic>)
          .map((e) =>
              Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      pokemon_v2_pokemonspecy: l$pokemon_v2_pokemonspecy == null
          ? null
          : Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy
              .fromJson((l$pokemon_v2_pokemonspecy as Map<String, dynamic>)),
      pokemon_v2_pokemonmoves: (l$pokemon_v2_pokemonmoves as List<dynamic>)
          .map((e) =>
              Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final int? height;

  final int? weight;

  final List<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes>
      pokemon_v2_pokemontypes;

  final List<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats>
      pokemon_v2_pokemonstats;

  final List<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities>
      pokemon_v2_pokemonabilities;

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy?
      pokemon_v2_pokemonspecy;

  final List<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves>
      pokemon_v2_pokemonmoves;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$height = height;
    _resultData['height'] = l$height;
    final l$weight = weight;
    _resultData['weight'] = l$weight;
    final l$pokemon_v2_pokemontypes = pokemon_v2_pokemontypes;
    _resultData['pokemon_v2_pokemontypes'] =
        l$pokemon_v2_pokemontypes.map((e) => e.toJson()).toList();
    final l$pokemon_v2_pokemonstats = pokemon_v2_pokemonstats;
    _resultData['pokemon_v2_pokemonstats'] =
        l$pokemon_v2_pokemonstats.map((e) => e.toJson()).toList();
    final l$pokemon_v2_pokemonabilities = pokemon_v2_pokemonabilities;
    _resultData['pokemon_v2_pokemonabilities'] =
        l$pokemon_v2_pokemonabilities.map((e) => e.toJson()).toList();
    final l$pokemon_v2_pokemonspecy = pokemon_v2_pokemonspecy;
    _resultData['pokemon_v2_pokemonspecy'] =
        l$pokemon_v2_pokemonspecy?.toJson();
    final l$pokemon_v2_pokemonmoves = pokemon_v2_pokemonmoves;
    _resultData['pokemon_v2_pokemonmoves'] =
        l$pokemon_v2_pokemonmoves.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$height = height;
    final l$weight = weight;
    final l$pokemon_v2_pokemontypes = pokemon_v2_pokemontypes;
    final l$pokemon_v2_pokemonstats = pokemon_v2_pokemonstats;
    final l$pokemon_v2_pokemonabilities = pokemon_v2_pokemonabilities;
    final l$pokemon_v2_pokemonspecy = pokemon_v2_pokemonspecy;
    final l$pokemon_v2_pokemonmoves = pokemon_v2_pokemonmoves;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$height,
      l$weight,
      Object.hashAll(l$pokemon_v2_pokemontypes.map((v) => v)),
      Object.hashAll(l$pokemon_v2_pokemonstats.map((v) => v)),
      Object.hashAll(l$pokemon_v2_pokemonabilities.map((v) => v)),
      l$pokemon_v2_pokemonspecy,
      Object.hashAll(l$pokemon_v2_pokemonmoves.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk ||
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
    final l$pokemon_v2_pokemontypes = pokemon_v2_pokemontypes;
    final lOther$pokemon_v2_pokemontypes = other.pokemon_v2_pokemontypes;
    if (l$pokemon_v2_pokemontypes.length !=
        lOther$pokemon_v2_pokemontypes.length) {
      return false;
    }
    for (int i = 0; i < l$pokemon_v2_pokemontypes.length; i++) {
      final l$pokemon_v2_pokemontypes$entry = l$pokemon_v2_pokemontypes[i];
      final lOther$pokemon_v2_pokemontypes$entry =
          lOther$pokemon_v2_pokemontypes[i];
      if (l$pokemon_v2_pokemontypes$entry !=
          lOther$pokemon_v2_pokemontypes$entry) {
        return false;
      }
    }
    final l$pokemon_v2_pokemonstats = pokemon_v2_pokemonstats;
    final lOther$pokemon_v2_pokemonstats = other.pokemon_v2_pokemonstats;
    if (l$pokemon_v2_pokemonstats.length !=
        lOther$pokemon_v2_pokemonstats.length) {
      return false;
    }
    for (int i = 0; i < l$pokemon_v2_pokemonstats.length; i++) {
      final l$pokemon_v2_pokemonstats$entry = l$pokemon_v2_pokemonstats[i];
      final lOther$pokemon_v2_pokemonstats$entry =
          lOther$pokemon_v2_pokemonstats[i];
      if (l$pokemon_v2_pokemonstats$entry !=
          lOther$pokemon_v2_pokemonstats$entry) {
        return false;
      }
    }
    final l$pokemon_v2_pokemonabilities = pokemon_v2_pokemonabilities;
    final lOther$pokemon_v2_pokemonabilities =
        other.pokemon_v2_pokemonabilities;
    if (l$pokemon_v2_pokemonabilities.length !=
        lOther$pokemon_v2_pokemonabilities.length) {
      return false;
    }
    for (int i = 0; i < l$pokemon_v2_pokemonabilities.length; i++) {
      final l$pokemon_v2_pokemonabilities$entry =
          l$pokemon_v2_pokemonabilities[i];
      final lOther$pokemon_v2_pokemonabilities$entry =
          lOther$pokemon_v2_pokemonabilities[i];
      if (l$pokemon_v2_pokemonabilities$entry !=
          lOther$pokemon_v2_pokemonabilities$entry) {
        return false;
      }
    }
    final l$pokemon_v2_pokemonspecy = pokemon_v2_pokemonspecy;
    final lOther$pokemon_v2_pokemonspecy = other.pokemon_v2_pokemonspecy;
    if (l$pokemon_v2_pokemonspecy != lOther$pokemon_v2_pokemonspecy) {
      return false;
    }
    final l$pokemon_v2_pokemonmoves = pokemon_v2_pokemonmoves;
    final lOther$pokemon_v2_pokemonmoves = other.pokemon_v2_pokemonmoves;
    if (l$pokemon_v2_pokemonmoves.length !=
        lOther$pokemon_v2_pokemonmoves.length) {
      return false;
    }
    for (int i = 0; i < l$pokemon_v2_pokemonmoves.length; i++) {
      final l$pokemon_v2_pokemonmoves$entry = l$pokemon_v2_pokemonmoves[i];
      final lOther$pokemon_v2_pokemonmoves$entry =
          lOther$pokemon_v2_pokemonmoves[i];
      if (l$pokemon_v2_pokemonmoves$entry !=
          lOther$pokemon_v2_pokemonmoves$entry) {
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

extension UtilityExtension$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk
    on Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk {
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk>
      get copyWith => CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk<TRes> {
  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk(
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk instance,
    TRes Function(Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk) then,
  ) = _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk;

  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk;

  TRes call({
    int? id,
    String? name,
    int? height,
    int? weight,
    List<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes>?
        pokemon_v2_pokemontypes,
    List<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats>?
        pokemon_v2_pokemonstats,
    List<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities>?
        pokemon_v2_pokemonabilities,
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy?
        pokemon_v2_pokemonspecy,
    List<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves>?
        pokemon_v2_pokemonmoves,
    String? $__typename,
  });
  TRes pokemon_v2_pokemontypes(
      Iterable<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes> Function(
              Iterable<
                  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes<
                      Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes>>)
          _fn);
  TRes pokemon_v2_pokemonstats(
      Iterable<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats> Function(
              Iterable<
                  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats<
                      Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats>>)
          _fn);
  TRes pokemon_v2_pokemonabilities(
      Iterable<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities> Function(
              Iterable<
                  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities<
                      Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities>>)
          _fn);
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy<
      TRes> get pokemon_v2_pokemonspecy;
  TRes pokemon_v2_pokemonmoves(
      Iterable<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves> Function(
              Iterable<
                  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves<
                      Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves>>)
          _fn);
}

class _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk<TRes>
    implements CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk<TRes> {
  _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk _instance;

  final TRes Function(Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? height = _undefined,
    Object? weight = _undefined,
    Object? pokemon_v2_pokemontypes = _undefined,
    Object? pokemon_v2_pokemonstats = _undefined,
    Object? pokemon_v2_pokemonabilities = _undefined,
    Object? pokemon_v2_pokemonspecy = _undefined,
    Object? pokemon_v2_pokemonmoves = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk(
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
                Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes>),
        pokemon_v2_pokemonstats: pokemon_v2_pokemonstats == _undefined ||
                pokemon_v2_pokemonstats == null
            ? _instance.pokemon_v2_pokemonstats
            : (pokemon_v2_pokemonstats as List<
                Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats>),
        pokemon_v2_pokemonabilities: pokemon_v2_pokemonabilities ==
                    _undefined ||
                pokemon_v2_pokemonabilities == null
            ? _instance.pokemon_v2_pokemonabilities
            : (pokemon_v2_pokemonabilities as List<
                Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities>),
        pokemon_v2_pokemonspecy: pokemon_v2_pokemonspecy == _undefined
            ? _instance.pokemon_v2_pokemonspecy
            : (pokemon_v2_pokemonspecy
                as Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy?),
        pokemon_v2_pokemonmoves: pokemon_v2_pokemonmoves == _undefined ||
                pokemon_v2_pokemonmoves == null
            ? _instance.pokemon_v2_pokemonmoves
            : (pokemon_v2_pokemonmoves as List<
                Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes pokemon_v2_pokemontypes(
          Iterable<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes<
                          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes>>)
              _fn) =>
      call(
          pokemon_v2_pokemontypes: _fn(_instance.pokemon_v2_pokemontypes.map((e) =>
              CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes(
                e,
                (i) => i,
              ))).toList());

  TRes pokemon_v2_pokemonstats(
          Iterable<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats<
                          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats>>)
              _fn) =>
      call(
          pokemon_v2_pokemonstats: _fn(_instance.pokemon_v2_pokemonstats.map((e) =>
              CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats(
                e,
                (i) => i,
              ))).toList());

  TRes pokemon_v2_pokemonabilities(
          Iterable<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities<
                          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities>>)
              _fn) =>
      call(
          pokemon_v2_pokemonabilities: _fn(_instance.pokemon_v2_pokemonabilities
              .map((e) =>
                  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy<
      TRes> get pokemon_v2_pokemonspecy {
    final local$pokemon_v2_pokemonspecy = _instance.pokemon_v2_pokemonspecy;
    return local$pokemon_v2_pokemonspecy == null
        ? CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy(
            local$pokemon_v2_pokemonspecy,
            (e) => call(pokemon_v2_pokemonspecy: e));
  }

  TRes pokemon_v2_pokemonmoves(
          Iterable<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves<
                          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves>>)
              _fn) =>
      call(
          pokemon_v2_pokemonmoves: _fn(_instance.pokemon_v2_pokemonmoves.map((e) =>
              CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk<TRes>
    implements CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk<TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    int? height,
    int? weight,
    List<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes>?
        pokemon_v2_pokemontypes,
    List<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats>?
        pokemon_v2_pokemonstats,
    List<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities>?
        pokemon_v2_pokemonabilities,
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy?
        pokemon_v2_pokemonspecy,
    List<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves>?
        pokemon_v2_pokemonmoves,
    String? $__typename,
  }) =>
      _res;

  pokemon_v2_pokemontypes(_fn) => _res;

  pokemon_v2_pokemonstats(_fn) => _res;

  pokemon_v2_pokemonabilities(_fn) => _res;

  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy<
          TRes>
      get pokemon_v2_pokemonspecy =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy
              .stub(_res);

  pokemon_v2_pokemonmoves(_fn) => _res;
}

class Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes {
  Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes({
    this.pokemon_v2_type,
    this.$__typename = 'pokemon_v2_pokemontype',
  });

  factory Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes.fromJson(
      Map<String, dynamic> json) {
    final l$pokemon_v2_type = json['pokemon_v2_type'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes(
      pokemon_v2_type: l$pokemon_v2_type == null
          ? null
          : Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type
              .fromJson((l$pokemon_v2_type as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type?
      pokemon_v2_type;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pokemon_v2_type = pokemon_v2_type;
    _resultData['pokemon_v2_type'] = l$pokemon_v2_type?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pokemon_v2_type = pokemon_v2_type;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pokemon_v2_type,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pokemon_v2_type = pokemon_v2_type;
    final lOther$pokemon_v2_type = other.pokemon_v2_type;
    if (l$pokemon_v2_type != lOther$pokemon_v2_type) {
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

extension UtilityExtension$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes
    on Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes {
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes>
      get copyWith =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes<
    TRes> {
  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes(
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes
        instance,
    TRes Function(
            Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes)
        then,
  ) = _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes;

  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes;

  TRes call({
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type?
        pokemon_v2_type,
    String? $__typename,
  });
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type<
      TRes> get pokemon_v2_type;
}

class _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes<
            TRes> {
  _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes
      _instance;

  final TRes Function(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pokemon_v2_type = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes(
        pokemon_v2_type: pokemon_v2_type == _undefined
            ? _instance.pokemon_v2_type
            : (pokemon_v2_type
                as Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type<
      TRes> get pokemon_v2_type {
    final local$pokemon_v2_type = _instance.pokemon_v2_type;
    return local$pokemon_v2_type == null
        ? CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type(
            local$pokemon_v2_type, (e) => call(pokemon_v2_type: e));
  }
}

class _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes(
      this._res);

  TRes _res;

  call({
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type?
        pokemon_v2_type,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type<
          TRes>
      get pokemon_v2_type =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type
              .stub(_res);
}

class Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type {
  Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type({
    required this.name,
    this.$__typename = 'pokemon_v2_type',
  });

  factory Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
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
            is! Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type ||
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

extension UtilityExtension$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type
    on Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type {
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type>
      get copyWith =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type<
    TRes> {
  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type(
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type
        instance,
    TRes Function(
            Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type)
        then,
  ) = _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type;

  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type<
            TRes> {
  _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type
      _instance;

  final TRes Function(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats {
  Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats({
    required this.base_stat,
    this.pokemon_v2_stat,
    this.$__typename = 'pokemon_v2_pokemonstat',
  });

  factory Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats.fromJson(
      Map<String, dynamic> json) {
    final l$base_stat = json['base_stat'];
    final l$pokemon_v2_stat = json['pokemon_v2_stat'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats(
      base_stat: (l$base_stat as int),
      pokemon_v2_stat: l$pokemon_v2_stat == null
          ? null
          : Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat
              .fromJson((l$pokemon_v2_stat as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int base_stat;

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat?
      pokemon_v2_stat;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$base_stat = base_stat;
    _resultData['base_stat'] = l$base_stat;
    final l$pokemon_v2_stat = pokemon_v2_stat;
    _resultData['pokemon_v2_stat'] = l$pokemon_v2_stat?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$base_stat = base_stat;
    final l$pokemon_v2_stat = pokemon_v2_stat;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$base_stat,
      l$pokemon_v2_stat,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$base_stat = base_stat;
    final lOther$base_stat = other.base_stat;
    if (l$base_stat != lOther$base_stat) {
      return false;
    }
    final l$pokemon_v2_stat = pokemon_v2_stat;
    final lOther$pokemon_v2_stat = other.pokemon_v2_stat;
    if (l$pokemon_v2_stat != lOther$pokemon_v2_stat) {
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

extension UtilityExtension$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats
    on Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats {
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats>
      get copyWith =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats<
    TRes> {
  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats(
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats
        instance,
    TRes Function(
            Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats)
        then,
  ) = _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats;

  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats;

  TRes call({
    int? base_stat,
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat?
        pokemon_v2_stat,
    String? $__typename,
  });
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat<
      TRes> get pokemon_v2_stat;
}

class _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats<
            TRes> {
  _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats
      _instance;

  final TRes Function(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? base_stat = _undefined,
    Object? pokemon_v2_stat = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats(
        base_stat: base_stat == _undefined || base_stat == null
            ? _instance.base_stat
            : (base_stat as int),
        pokemon_v2_stat: pokemon_v2_stat == _undefined
            ? _instance.pokemon_v2_stat
            : (pokemon_v2_stat
                as Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat<
      TRes> get pokemon_v2_stat {
    final local$pokemon_v2_stat = _instance.pokemon_v2_stat;
    return local$pokemon_v2_stat == null
        ? CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat(
            local$pokemon_v2_stat, (e) => call(pokemon_v2_stat: e));
  }
}

class _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats(
      this._res);

  TRes _res;

  call({
    int? base_stat,
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat?
        pokemon_v2_stat,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat<
          TRes>
      get pokemon_v2_stat =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat
              .stub(_res);
}

class Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat {
  Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat({
    required this.name,
    this.$__typename = 'pokemon_v2_stat',
  });

  factory Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
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
            is! Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat ||
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

extension UtilityExtension$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat
    on Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat {
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat>
      get copyWith =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat<
    TRes> {
  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat(
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat
        instance,
    TRes Function(
            Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat)
        then,
  ) = _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat;

  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat<
            TRes> {
  _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat
      _instance;

  final TRes Function(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities {
  Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities({
    required this.is_hidden,
    this.pokemon_v2_ability,
    this.$__typename = 'pokemon_v2_pokemonability',
  });

  factory Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities.fromJson(
      Map<String, dynamic> json) {
    final l$is_hidden = json['is_hidden'];
    final l$pokemon_v2_ability = json['pokemon_v2_ability'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities(
      is_hidden: (l$is_hidden as bool),
      pokemon_v2_ability: l$pokemon_v2_ability == null
          ? null
          : Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability
              .fromJson((l$pokemon_v2_ability as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final bool is_hidden;

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability?
      pokemon_v2_ability;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$is_hidden = is_hidden;
    _resultData['is_hidden'] = l$is_hidden;
    final l$pokemon_v2_ability = pokemon_v2_ability;
    _resultData['pokemon_v2_ability'] = l$pokemon_v2_ability?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$is_hidden = is_hidden;
    final l$pokemon_v2_ability = pokemon_v2_ability;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$is_hidden,
      l$pokemon_v2_ability,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$is_hidden = is_hidden;
    final lOther$is_hidden = other.is_hidden;
    if (l$is_hidden != lOther$is_hidden) {
      return false;
    }
    final l$pokemon_v2_ability = pokemon_v2_ability;
    final lOther$pokemon_v2_ability = other.pokemon_v2_ability;
    if (l$pokemon_v2_ability != lOther$pokemon_v2_ability) {
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

extension UtilityExtension$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities
    on Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities {
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities>
      get copyWith =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities<
    TRes> {
  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities(
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities
        instance,
    TRes Function(
            Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities)
        then,
  ) = _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities;

  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities;

  TRes call({
    bool? is_hidden,
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability?
        pokemon_v2_ability,
    String? $__typename,
  });
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability<
      TRes> get pokemon_v2_ability;
}

class _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities<
            TRes> {
  _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities
      _instance;

  final TRes Function(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? is_hidden = _undefined,
    Object? pokemon_v2_ability = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities(
        is_hidden: is_hidden == _undefined || is_hidden == null
            ? _instance.is_hidden
            : (is_hidden as bool),
        pokemon_v2_ability: pokemon_v2_ability == _undefined
            ? _instance.pokemon_v2_ability
            : (pokemon_v2_ability
                as Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability<
      TRes> get pokemon_v2_ability {
    final local$pokemon_v2_ability = _instance.pokemon_v2_ability;
    return local$pokemon_v2_ability == null
        ? CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability(
            local$pokemon_v2_ability, (e) => call(pokemon_v2_ability: e));
  }
}

class _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities(
      this._res);

  TRes _res;

  call({
    bool? is_hidden,
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability?
        pokemon_v2_ability,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability<
          TRes>
      get pokemon_v2_ability =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability
              .stub(_res);
}

class Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability {
  Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability({
    required this.name,
    required this.pokemon_v2_abilityeffecttexts,
    this.$__typename = 'pokemon_v2_ability',
  });

  factory Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$pokemon_v2_abilityeffecttexts =
        json['pokemon_v2_abilityeffecttexts'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability(
      name: (l$name as String),
      pokemon_v2_abilityeffecttexts: (l$pokemon_v2_abilityeffecttexts
              as List<dynamic>)
          .map((e) =>
              Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final List<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts>
      pokemon_v2_abilityeffecttexts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$pokemon_v2_abilityeffecttexts = pokemon_v2_abilityeffecttexts;
    _resultData['pokemon_v2_abilityeffecttexts'] =
        l$pokemon_v2_abilityeffecttexts.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$pokemon_v2_abilityeffecttexts = pokemon_v2_abilityeffecttexts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      Object.hashAll(l$pokemon_v2_abilityeffecttexts.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$pokemon_v2_abilityeffecttexts = pokemon_v2_abilityeffecttexts;
    final lOther$pokemon_v2_abilityeffecttexts =
        other.pokemon_v2_abilityeffecttexts;
    if (l$pokemon_v2_abilityeffecttexts.length !=
        lOther$pokemon_v2_abilityeffecttexts.length) {
      return false;
    }
    for (int i = 0; i < l$pokemon_v2_abilityeffecttexts.length; i++) {
      final l$pokemon_v2_abilityeffecttexts$entry =
          l$pokemon_v2_abilityeffecttexts[i];
      final lOther$pokemon_v2_abilityeffecttexts$entry =
          lOther$pokemon_v2_abilityeffecttexts[i];
      if (l$pokemon_v2_abilityeffecttexts$entry !=
          lOther$pokemon_v2_abilityeffecttexts$entry) {
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

extension UtilityExtension$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability
    on Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability {
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability>
      get copyWith =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability<
    TRes> {
  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability(
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability
        instance,
    TRes Function(
            Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability)
        then,
  ) = _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability;

  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability;

  TRes call({
    String? name,
    List<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts>?
        pokemon_v2_abilityeffecttexts,
    String? $__typename,
  });
  TRes pokemon_v2_abilityeffecttexts(
      Iterable<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts> Function(
              Iterable<
                  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts<
                      Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts>>)
          _fn);
}

class _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability<
            TRes> {
  _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability
      _instance;

  final TRes Function(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? pokemon_v2_abilityeffecttexts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        pokemon_v2_abilityeffecttexts: pokemon_v2_abilityeffecttexts ==
                    _undefined ||
                pokemon_v2_abilityeffecttexts == null
            ? _instance.pokemon_v2_abilityeffecttexts
            : (pokemon_v2_abilityeffecttexts as List<
                Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes pokemon_v2_abilityeffecttexts(
          Iterable<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts<
                          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts>>)
              _fn) =>
      call(
          pokemon_v2_abilityeffecttexts: _fn(
              _instance.pokemon_v2_abilityeffecttexts.map((e) =>
                  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability(
      this._res);

  TRes _res;

  call({
    String? name,
    List<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts>?
        pokemon_v2_abilityeffecttexts,
    String? $__typename,
  }) =>
      _res;

  pokemon_v2_abilityeffecttexts(_fn) => _res;
}

class Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts {
  Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts({
    required this.short_effect,
    this.$__typename = 'pokemon_v2_abilityeffecttext',
  });

  factory Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts.fromJson(
      Map<String, dynamic> json) {
    final l$short_effect = json['short_effect'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts(
      short_effect: (l$short_effect as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String short_effect;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$short_effect = short_effect;
    _resultData['short_effect'] = l$short_effect;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$short_effect = short_effect;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$short_effect,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$short_effect = short_effect;
    final lOther$short_effect = other.short_effect;
    if (l$short_effect != lOther$short_effect) {
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

extension UtilityExtension$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts
    on Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts {
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts>
      get copyWith =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts<
    TRes> {
  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts(
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts
        instance,
    TRes Function(
            Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts)
        then,
  ) = _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts;

  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts;

  TRes call({
    String? short_effect,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts<
            TRes> {
  _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts
      _instance;

  final TRes Function(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? short_effect = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts(
        short_effect: short_effect == _undefined || short_effect == null
            ? _instance.short_effect
            : (short_effect as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts(
      this._res);

  TRes _res;

  call({
    String? short_effect,
    String? $__typename,
  }) =>
      _res;
}

class Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy {
  Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy({
    this.gender_rate,
    required this.pokemon_v2_pokemonspeciesflavortexts,
    this.pokemon_v2_evolutionchain,
    this.$__typename = 'pokemon_v2_pokemonspecies',
  });

  factory Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy.fromJson(
      Map<String, dynamic> json) {
    final l$gender_rate = json['gender_rate'];
    final l$pokemon_v2_pokemonspeciesflavortexts =
        json['pokemon_v2_pokemonspeciesflavortexts'];
    final l$pokemon_v2_evolutionchain = json['pokemon_v2_evolutionchain'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy(
      gender_rate: (l$gender_rate as int?),
      pokemon_v2_pokemonspeciesflavortexts: (l$pokemon_v2_pokemonspeciesflavortexts
              as List<dynamic>)
          .map((e) =>
              Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      pokemon_v2_evolutionchain: l$pokemon_v2_evolutionchain == null
          ? null
          : Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain
              .fromJson((l$pokemon_v2_evolutionchain as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? gender_rate;

  final List<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts>
      pokemon_v2_pokemonspeciesflavortexts;

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain?
      pokemon_v2_evolutionchain;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$gender_rate = gender_rate;
    _resultData['gender_rate'] = l$gender_rate;
    final l$pokemon_v2_pokemonspeciesflavortexts =
        pokemon_v2_pokemonspeciesflavortexts;
    _resultData['pokemon_v2_pokemonspeciesflavortexts'] =
        l$pokemon_v2_pokemonspeciesflavortexts.map((e) => e.toJson()).toList();
    final l$pokemon_v2_evolutionchain = pokemon_v2_evolutionchain;
    _resultData['pokemon_v2_evolutionchain'] =
        l$pokemon_v2_evolutionchain?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$gender_rate = gender_rate;
    final l$pokemon_v2_pokemonspeciesflavortexts =
        pokemon_v2_pokemonspeciesflavortexts;
    final l$pokemon_v2_evolutionchain = pokemon_v2_evolutionchain;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$gender_rate,
      Object.hashAll(l$pokemon_v2_pokemonspeciesflavortexts.map((v) => v)),
      l$pokemon_v2_evolutionchain,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$gender_rate = gender_rate;
    final lOther$gender_rate = other.gender_rate;
    if (l$gender_rate != lOther$gender_rate) {
      return false;
    }
    final l$pokemon_v2_pokemonspeciesflavortexts =
        pokemon_v2_pokemonspeciesflavortexts;
    final lOther$pokemon_v2_pokemonspeciesflavortexts =
        other.pokemon_v2_pokemonspeciesflavortexts;
    if (l$pokemon_v2_pokemonspeciesflavortexts.length !=
        lOther$pokemon_v2_pokemonspeciesflavortexts.length) {
      return false;
    }
    for (int i = 0; i < l$pokemon_v2_pokemonspeciesflavortexts.length; i++) {
      final l$pokemon_v2_pokemonspeciesflavortexts$entry =
          l$pokemon_v2_pokemonspeciesflavortexts[i];
      final lOther$pokemon_v2_pokemonspeciesflavortexts$entry =
          lOther$pokemon_v2_pokemonspeciesflavortexts[i];
      if (l$pokemon_v2_pokemonspeciesflavortexts$entry !=
          lOther$pokemon_v2_pokemonspeciesflavortexts$entry) {
        return false;
      }
    }
    final l$pokemon_v2_evolutionchain = pokemon_v2_evolutionchain;
    final lOther$pokemon_v2_evolutionchain = other.pokemon_v2_evolutionchain;
    if (l$pokemon_v2_evolutionchain != lOther$pokemon_v2_evolutionchain) {
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

extension UtilityExtension$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy
    on Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy {
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy>
      get copyWith =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy<
    TRes> {
  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy(
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy
        instance,
    TRes Function(
            Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy)
        then,
  ) = _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy;

  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy;

  TRes call({
    int? gender_rate,
    List<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts>?
        pokemon_v2_pokemonspeciesflavortexts,
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain?
        pokemon_v2_evolutionchain,
    String? $__typename,
  });
  TRes pokemon_v2_pokemonspeciesflavortexts(
      Iterable<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts> Function(
              Iterable<
                  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts<
                      Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts>>)
          _fn);
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain<
      TRes> get pokemon_v2_evolutionchain;
}

class _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy<
            TRes> {
  _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy
      _instance;

  final TRes Function(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? gender_rate = _undefined,
    Object? pokemon_v2_pokemonspeciesflavortexts = _undefined,
    Object? pokemon_v2_evolutionchain = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy(
        gender_rate: gender_rate == _undefined
            ? _instance.gender_rate
            : (gender_rate as int?),
        pokemon_v2_pokemonspeciesflavortexts:
            pokemon_v2_pokemonspeciesflavortexts == _undefined ||
                    pokemon_v2_pokemonspeciesflavortexts == null
                ? _instance.pokemon_v2_pokemonspeciesflavortexts
                : (pokemon_v2_pokemonspeciesflavortexts as List<
                    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts>),
        pokemon_v2_evolutionchain: pokemon_v2_evolutionchain == _undefined
            ? _instance.pokemon_v2_evolutionchain
            : (pokemon_v2_evolutionchain
                as Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes pokemon_v2_pokemonspeciesflavortexts(
          Iterable<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts<
                          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts>>)
              _fn) =>
      call(
          pokemon_v2_pokemonspeciesflavortexts: _fn(
              _instance.pokemon_v2_pokemonspeciesflavortexts.map((e) =>
                  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain<
      TRes> get pokemon_v2_evolutionchain {
    final local$pokemon_v2_evolutionchain = _instance.pokemon_v2_evolutionchain;
    return local$pokemon_v2_evolutionchain == null
        ? CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain(
            local$pokemon_v2_evolutionchain,
            (e) => call(pokemon_v2_evolutionchain: e));
  }
}

class _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy(
      this._res);

  TRes _res;

  call({
    int? gender_rate,
    List<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts>?
        pokemon_v2_pokemonspeciesflavortexts,
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain?
        pokemon_v2_evolutionchain,
    String? $__typename,
  }) =>
      _res;

  pokemon_v2_pokemonspeciesflavortexts(_fn) => _res;

  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain<
          TRes>
      get pokemon_v2_evolutionchain =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain
              .stub(_res);
}

class Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts {
  Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts({
    required this.flavor_text,
    this.$__typename = 'pokemon_v2_pokemonspeciesflavortext',
  });

  factory Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts.fromJson(
      Map<String, dynamic> json) {
    final l$flavor_text = json['flavor_text'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts(
      flavor_text: (l$flavor_text as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String flavor_text;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$flavor_text = flavor_text;
    _resultData['flavor_text'] = l$flavor_text;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$flavor_text = flavor_text;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$flavor_text,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$flavor_text = flavor_text;
    final lOther$flavor_text = other.flavor_text;
    if (l$flavor_text != lOther$flavor_text) {
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

extension UtilityExtension$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts
    on Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts {
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts>
      get copyWith =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts<
    TRes> {
  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts(
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts
        instance,
    TRes Function(
            Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts)
        then,
  ) = _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts;

  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts;

  TRes call({
    String? flavor_text,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts<
            TRes> {
  _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts
      _instance;

  final TRes Function(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? flavor_text = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts(
        flavor_text: flavor_text == _undefined || flavor_text == null
            ? _instance.flavor_text
            : (flavor_text as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts(
      this._res);

  TRes _res;

  call({
    String? flavor_text,
    String? $__typename,
  }) =>
      _res;
}

class Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain {
  Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain({
    required this.pokemon_v2_pokemonspecies,
    this.$__typename = 'pokemon_v2_evolutionchain',
  });

  factory Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain.fromJson(
      Map<String, dynamic> json) {
    final l$pokemon_v2_pokemonspecies = json['pokemon_v2_pokemonspecies'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain(
      pokemon_v2_pokemonspecies: (l$pokemon_v2_pokemonspecies as List<dynamic>)
          .map((e) =>
              Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies>
      pokemon_v2_pokemonspecies;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pokemon_v2_pokemonspecies = pokemon_v2_pokemonspecies;
    _resultData['pokemon_v2_pokemonspecies'] =
        l$pokemon_v2_pokemonspecies.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pokemon_v2_pokemonspecies = pokemon_v2_pokemonspecies;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$pokemon_v2_pokemonspecies.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pokemon_v2_pokemonspecies = pokemon_v2_pokemonspecies;
    final lOther$pokemon_v2_pokemonspecies = other.pokemon_v2_pokemonspecies;
    if (l$pokemon_v2_pokemonspecies.length !=
        lOther$pokemon_v2_pokemonspecies.length) {
      return false;
    }
    for (int i = 0; i < l$pokemon_v2_pokemonspecies.length; i++) {
      final l$pokemon_v2_pokemonspecies$entry = l$pokemon_v2_pokemonspecies[i];
      final lOther$pokemon_v2_pokemonspecies$entry =
          lOther$pokemon_v2_pokemonspecies[i];
      if (l$pokemon_v2_pokemonspecies$entry !=
          lOther$pokemon_v2_pokemonspecies$entry) {
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

extension UtilityExtension$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain
    on Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain {
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain>
      get copyWith =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain<
    TRes> {
  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain(
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain
        instance,
    TRes Function(
            Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain)
        then,
  ) = _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain;

  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain;

  TRes call({
    List<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies>?
        pokemon_v2_pokemonspecies,
    String? $__typename,
  });
  TRes pokemon_v2_pokemonspecies(
      Iterable<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies> Function(
              Iterable<
                  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies<
                      Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies>>)
          _fn);
}

class _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain<
            TRes> {
  _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain
      _instance;

  final TRes Function(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pokemon_v2_pokemonspecies = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain(
        pokemon_v2_pokemonspecies: pokemon_v2_pokemonspecies == _undefined ||
                pokemon_v2_pokemonspecies == null
            ? _instance.pokemon_v2_pokemonspecies
            : (pokemon_v2_pokemonspecies as List<
                Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes pokemon_v2_pokemonspecies(
          Iterable<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies<
                          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies>>)
              _fn) =>
      call(
          pokemon_v2_pokemonspecies: _fn(_instance.pokemon_v2_pokemonspecies
              .map((e) =>
                  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain(
      this._res);

  TRes _res;

  call({
    List<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies>?
        pokemon_v2_pokemonspecies,
    String? $__typename,
  }) =>
      _res;

  pokemon_v2_pokemonspecies(_fn) => _res;
}

class Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies {
  Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies({
    required this.id,
    required this.name,
    this.order,
    this.evolves_from_species_id,
    required this.pokemon_v2_pokemons,
    this.$__typename = 'pokemon_v2_pokemonspecies',
  });

  factory Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$order = json['order'];
    final l$evolves_from_species_id = json['evolves_from_species_id'];
    final l$pokemon_v2_pokemons = json['pokemon_v2_pokemons'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies(
      id: (l$id as int),
      name: (l$name as String),
      order: (l$order as int?),
      evolves_from_species_id: (l$evolves_from_species_id as int?),
      pokemon_v2_pokemons: (l$pokemon_v2_pokemons as List<dynamic>)
          .map((e) =>
              Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final int? order;

  final int? evolves_from_species_id;

  final List<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons>
      pokemon_v2_pokemons;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$order = order;
    _resultData['order'] = l$order;
    final l$evolves_from_species_id = evolves_from_species_id;
    _resultData['evolves_from_species_id'] = l$evolves_from_species_id;
    final l$pokemon_v2_pokemons = pokemon_v2_pokemons;
    _resultData['pokemon_v2_pokemons'] =
        l$pokemon_v2_pokemons.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$order = order;
    final l$evolves_from_species_id = evolves_from_species_id;
    final l$pokemon_v2_pokemons = pokemon_v2_pokemons;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$order,
      l$evolves_from_species_id,
      Object.hashAll(l$pokemon_v2_pokemons.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies ||
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
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
      return false;
    }
    final l$evolves_from_species_id = evolves_from_species_id;
    final lOther$evolves_from_species_id = other.evolves_from_species_id;
    if (l$evolves_from_species_id != lOther$evolves_from_species_id) {
      return false;
    }
    final l$pokemon_v2_pokemons = pokemon_v2_pokemons;
    final lOther$pokemon_v2_pokemons = other.pokemon_v2_pokemons;
    if (l$pokemon_v2_pokemons.length != lOther$pokemon_v2_pokemons.length) {
      return false;
    }
    for (int i = 0; i < l$pokemon_v2_pokemons.length; i++) {
      final l$pokemon_v2_pokemons$entry = l$pokemon_v2_pokemons[i];
      final lOther$pokemon_v2_pokemons$entry = lOther$pokemon_v2_pokemons[i];
      if (l$pokemon_v2_pokemons$entry != lOther$pokemon_v2_pokemons$entry) {
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

extension UtilityExtension$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies
    on Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies {
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies>
      get copyWith =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies<
    TRes> {
  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies(
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies
        instance,
    TRes Function(
            Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies)
        then,
  ) = _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies;

  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies;

  TRes call({
    int? id,
    String? name,
    int? order,
    int? evolves_from_species_id,
    List<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons>?
        pokemon_v2_pokemons,
    String? $__typename,
  });
  TRes pokemon_v2_pokemons(
      Iterable<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons> Function(
              Iterable<
                  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons<
                      Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons>>)
          _fn);
}

class _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies<
            TRes> {
  _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies
      _instance;

  final TRes Function(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? order = _undefined,
    Object? evolves_from_species_id = _undefined,
    Object? pokemon_v2_pokemons = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        order: order == _undefined ? _instance.order : (order as int?),
        evolves_from_species_id: evolves_from_species_id == _undefined
            ? _instance.evolves_from_species_id
            : (evolves_from_species_id as int?),
        pokemon_v2_pokemons: pokemon_v2_pokemons == _undefined ||
                pokemon_v2_pokemons == null
            ? _instance.pokemon_v2_pokemons
            : (pokemon_v2_pokemons as List<
                Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes pokemon_v2_pokemons(
          Iterable<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons<
                          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons>>)
              _fn) =>
      call(
          pokemon_v2_pokemons: _fn(_instance.pokemon_v2_pokemons.map((e) =>
              CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    int? order,
    int? evolves_from_species_id,
    List<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons>?
        pokemon_v2_pokemons,
    String? $__typename,
  }) =>
      _res;

  pokemon_v2_pokemons(_fn) => _res;
}

class Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons {
  Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons({
    required this.id,
    this.$__typename = 'pokemon_v2_pokemon',
  });

  factory Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons(
      id: (l$id as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
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
            is! Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons ||
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

extension UtilityExtension$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons
    on Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons {
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons>
      get copyWith =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons<
    TRes> {
  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons(
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons
        instance,
    TRes Function(
            Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons)
        then,
  ) = _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons;

  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons;

  TRes call({
    int? id,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons<
            TRes> {
  _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons
      _instance;

  final TRes Function(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons(
      this._res);

  TRes _res;

  call({
    int? id,
    String? $__typename,
  }) =>
      _res;
}

class Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves {
  Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves({
    required this.level,
    this.version_group_id,
    this.pokemon_v2_movelearnmethod,
    this.pokemon_v2_move,
    this.$__typename = 'pokemon_v2_pokemonmove',
  });

  factory Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves.fromJson(
      Map<String, dynamic> json) {
    final l$level = json['level'];
    final l$version_group_id = json['version_group_id'];
    final l$pokemon_v2_movelearnmethod = json['pokemon_v2_movelearnmethod'];
    final l$pokemon_v2_move = json['pokemon_v2_move'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves(
      level: (l$level as int),
      version_group_id: (l$version_group_id as int?),
      pokemon_v2_movelearnmethod: l$pokemon_v2_movelearnmethod == null
          ? null
          : Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod
              .fromJson((l$pokemon_v2_movelearnmethod as Map<String, dynamic>)),
      pokemon_v2_move: l$pokemon_v2_move == null
          ? null
          : Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move
              .fromJson((l$pokemon_v2_move as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int level;

  final int? version_group_id;

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod?
      pokemon_v2_movelearnmethod;

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move?
      pokemon_v2_move;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$level = level;
    _resultData['level'] = l$level;
    final l$version_group_id = version_group_id;
    _resultData['version_group_id'] = l$version_group_id;
    final l$pokemon_v2_movelearnmethod = pokemon_v2_movelearnmethod;
    _resultData['pokemon_v2_movelearnmethod'] =
        l$pokemon_v2_movelearnmethod?.toJson();
    final l$pokemon_v2_move = pokemon_v2_move;
    _resultData['pokemon_v2_move'] = l$pokemon_v2_move?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$level = level;
    final l$version_group_id = version_group_id;
    final l$pokemon_v2_movelearnmethod = pokemon_v2_movelearnmethod;
    final l$pokemon_v2_move = pokemon_v2_move;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$level,
      l$version_group_id,
      l$pokemon_v2_movelearnmethod,
      l$pokemon_v2_move,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$level = level;
    final lOther$level = other.level;
    if (l$level != lOther$level) {
      return false;
    }
    final l$version_group_id = version_group_id;
    final lOther$version_group_id = other.version_group_id;
    if (l$version_group_id != lOther$version_group_id) {
      return false;
    }
    final l$pokemon_v2_movelearnmethod = pokemon_v2_movelearnmethod;
    final lOther$pokemon_v2_movelearnmethod = other.pokemon_v2_movelearnmethod;
    if (l$pokemon_v2_movelearnmethod != lOther$pokemon_v2_movelearnmethod) {
      return false;
    }
    final l$pokemon_v2_move = pokemon_v2_move;
    final lOther$pokemon_v2_move = other.pokemon_v2_move;
    if (l$pokemon_v2_move != lOther$pokemon_v2_move) {
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

extension UtilityExtension$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves
    on Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves {
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves>
      get copyWith =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves<
    TRes> {
  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves(
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves
        instance,
    TRes Function(
            Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves)
        then,
  ) = _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves;

  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves;

  TRes call({
    int? level,
    int? version_group_id,
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod?
        pokemon_v2_movelearnmethod,
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move?
        pokemon_v2_move,
    String? $__typename,
  });
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod<
      TRes> get pokemon_v2_movelearnmethod;
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move<
      TRes> get pokemon_v2_move;
}

class _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves<
            TRes> {
  _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves
      _instance;

  final TRes Function(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? level = _undefined,
    Object? version_group_id = _undefined,
    Object? pokemon_v2_movelearnmethod = _undefined,
    Object? pokemon_v2_move = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves(
        level: level == _undefined || level == null
            ? _instance.level
            : (level as int),
        version_group_id: version_group_id == _undefined
            ? _instance.version_group_id
            : (version_group_id as int?),
        pokemon_v2_movelearnmethod: pokemon_v2_movelearnmethod == _undefined
            ? _instance.pokemon_v2_movelearnmethod
            : (pokemon_v2_movelearnmethod
                as Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod?),
        pokemon_v2_move: pokemon_v2_move == _undefined
            ? _instance.pokemon_v2_move
            : (pokemon_v2_move
                as Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod<
      TRes> get pokemon_v2_movelearnmethod {
    final local$pokemon_v2_movelearnmethod =
        _instance.pokemon_v2_movelearnmethod;
    return local$pokemon_v2_movelearnmethod == null
        ? CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod(
            local$pokemon_v2_movelearnmethod,
            (e) => call(pokemon_v2_movelearnmethod: e));
  }

  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move<
      TRes> get pokemon_v2_move {
    final local$pokemon_v2_move = _instance.pokemon_v2_move;
    return local$pokemon_v2_move == null
        ? CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move(
            local$pokemon_v2_move, (e) => call(pokemon_v2_move: e));
  }
}

class _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves(
      this._res);

  TRes _res;

  call({
    int? level,
    int? version_group_id,
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod?
        pokemon_v2_movelearnmethod,
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move?
        pokemon_v2_move,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod<
          TRes>
      get pokemon_v2_movelearnmethod =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod
              .stub(_res);

  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move<
          TRes>
      get pokemon_v2_move =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move
              .stub(_res);
}

class Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod {
  Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod({
    required this.name,
    this.$__typename = 'pokemon_v2_movelearnmethod',
  });

  factory Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
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
            is! Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod ||
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

extension UtilityExtension$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod
    on Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod {
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod>
      get copyWith =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod<
    TRes> {
  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod(
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod
        instance,
    TRes Function(
            Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod)
        then,
  ) = _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod;

  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod<
            TRes> {
  _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod
      _instance;

  final TRes Function(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move {
  Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move({
    required this.name,
    this.power,
    this.pp,
    this.accuracy,
    this.pokemon_v2_type,
    this.pokemon_v2_movedamageclass,
    this.generation_id,
    this.$__typename = 'pokemon_v2_move',
  });

  factory Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$power = json['power'];
    final l$pp = json['pp'];
    final l$accuracy = json['accuracy'];
    final l$pokemon_v2_type = json['pokemon_v2_type'];
    final l$pokemon_v2_movedamageclass = json['pokemon_v2_movedamageclass'];
    final l$generation_id = json['generation_id'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move(
      name: (l$name as String),
      power: (l$power as int?),
      pp: (l$pp as int?),
      accuracy: (l$accuracy as int?),
      pokemon_v2_type: l$pokemon_v2_type == null
          ? null
          : Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type
              .fromJson((l$pokemon_v2_type as Map<String, dynamic>)),
      pokemon_v2_movedamageclass: l$pokemon_v2_movedamageclass == null
          ? null
          : Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass
              .fromJson((l$pokemon_v2_movedamageclass as Map<String, dynamic>)),
      generation_id: (l$generation_id as int?),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final int? power;

  final int? pp;

  final int? accuracy;

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type?
      pokemon_v2_type;

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass?
      pokemon_v2_movedamageclass;

  final int? generation_id;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$power = power;
    _resultData['power'] = l$power;
    final l$pp = pp;
    _resultData['pp'] = l$pp;
    final l$accuracy = accuracy;
    _resultData['accuracy'] = l$accuracy;
    final l$pokemon_v2_type = pokemon_v2_type;
    _resultData['pokemon_v2_type'] = l$pokemon_v2_type?.toJson();
    final l$pokemon_v2_movedamageclass = pokemon_v2_movedamageclass;
    _resultData['pokemon_v2_movedamageclass'] =
        l$pokemon_v2_movedamageclass?.toJson();
    final l$generation_id = generation_id;
    _resultData['generation_id'] = l$generation_id;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$power = power;
    final l$pp = pp;
    final l$accuracy = accuracy;
    final l$pokemon_v2_type = pokemon_v2_type;
    final l$pokemon_v2_movedamageclass = pokemon_v2_movedamageclass;
    final l$generation_id = generation_id;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$power,
      l$pp,
      l$accuracy,
      l$pokemon_v2_type,
      l$pokemon_v2_movedamageclass,
      l$generation_id,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$power = power;
    final lOther$power = other.power;
    if (l$power != lOther$power) {
      return false;
    }
    final l$pp = pp;
    final lOther$pp = other.pp;
    if (l$pp != lOther$pp) {
      return false;
    }
    final l$accuracy = accuracy;
    final lOther$accuracy = other.accuracy;
    if (l$accuracy != lOther$accuracy) {
      return false;
    }
    final l$pokemon_v2_type = pokemon_v2_type;
    final lOther$pokemon_v2_type = other.pokemon_v2_type;
    if (l$pokemon_v2_type != lOther$pokemon_v2_type) {
      return false;
    }
    final l$pokemon_v2_movedamageclass = pokemon_v2_movedamageclass;
    final lOther$pokemon_v2_movedamageclass = other.pokemon_v2_movedamageclass;
    if (l$pokemon_v2_movedamageclass != lOther$pokemon_v2_movedamageclass) {
      return false;
    }
    final l$generation_id = generation_id;
    final lOther$generation_id = other.generation_id;
    if (l$generation_id != lOther$generation_id) {
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

extension UtilityExtension$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move
    on Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move {
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move>
      get copyWith =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move<
    TRes> {
  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move(
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move
        instance,
    TRes Function(
            Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move)
        then,
  ) = _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move;

  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move;

  TRes call({
    String? name,
    int? power,
    int? pp,
    int? accuracy,
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type?
        pokemon_v2_type,
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass?
        pokemon_v2_movedamageclass,
    int? generation_id,
    String? $__typename,
  });
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type<
      TRes> get pokemon_v2_type;
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass<
      TRes> get pokemon_v2_movedamageclass;
}

class _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move<
            TRes> {
  _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move
      _instance;

  final TRes Function(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? power = _undefined,
    Object? pp = _undefined,
    Object? accuracy = _undefined,
    Object? pokemon_v2_type = _undefined,
    Object? pokemon_v2_movedamageclass = _undefined,
    Object? generation_id = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        power: power == _undefined ? _instance.power : (power as int?),
        pp: pp == _undefined ? _instance.pp : (pp as int?),
        accuracy:
            accuracy == _undefined ? _instance.accuracy : (accuracy as int?),
        pokemon_v2_type: pokemon_v2_type == _undefined
            ? _instance.pokemon_v2_type
            : (pokemon_v2_type
                as Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type?),
        pokemon_v2_movedamageclass: pokemon_v2_movedamageclass == _undefined
            ? _instance.pokemon_v2_movedamageclass
            : (pokemon_v2_movedamageclass
                as Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass?),
        generation_id: generation_id == _undefined
            ? _instance.generation_id
            : (generation_id as int?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type<
      TRes> get pokemon_v2_type {
    final local$pokemon_v2_type = _instance.pokemon_v2_type;
    return local$pokemon_v2_type == null
        ? CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type(
            local$pokemon_v2_type, (e) => call(pokemon_v2_type: e));
  }

  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass<
      TRes> get pokemon_v2_movedamageclass {
    final local$pokemon_v2_movedamageclass =
        _instance.pokemon_v2_movedamageclass;
    return local$pokemon_v2_movedamageclass == null
        ? CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass(
            local$pokemon_v2_movedamageclass,
            (e) => call(pokemon_v2_movedamageclass: e));
  }
}

class _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move(
      this._res);

  TRes _res;

  call({
    String? name,
    int? power,
    int? pp,
    int? accuracy,
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type?
        pokemon_v2_type,
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass?
        pokemon_v2_movedamageclass,
    int? generation_id,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type<
          TRes>
      get pokemon_v2_type =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type
              .stub(_res);

  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass<
          TRes>
      get pokemon_v2_movedamageclass =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass
              .stub(_res);
}

class Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type {
  Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type({
    required this.name,
    this.$__typename = 'pokemon_v2_type',
  });

  factory Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
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
            is! Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type ||
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

extension UtilityExtension$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type
    on Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type {
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type>
      get copyWith =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type<
    TRes> {
  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type(
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type
        instance,
    TRes Function(
            Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type)
        then,
  ) = _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type;

  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type<
            TRes> {
  _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type
      _instance;

  final TRes Function(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass {
  Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass({
    required this.name,
    this.$__typename = 'pokemon_v2_movedamageclass',
  });

  factory Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass(
      name: (l$name as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
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
            is! Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass ||
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

extension UtilityExtension$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass
    on Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass {
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass>
      get copyWith =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass<
    TRes> {
  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass(
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass
        instance,
    TRes Function(
            Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass)
        then,
  ) = _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass;

  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass<
            TRes> {
  _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass
      _instance;

  final TRes Function(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}
