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
                        name: NameNode(value: 'pokemon_v2_pokemonevolutions'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'min_level'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'time_of_day'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'min_happiness'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'min_beauty'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'min_affection'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'needs_overworld_rain'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'turn_upside_down'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'trade_species_id'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name:
                                NameNode(value: 'pokemon_v2_evolutiontrigger'),
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
                            name: NameNode(value: 'pokemon_v2_item'),
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
                                name: NameNode(value: '__typename'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null,
                              ),
                            ]),
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
                            name: NameNode(value: 'pokemon_v2_location'),
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
                    name: NameNode(value: 'name'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                  FieldNode(
                    name: NameNode(value: 'pokemon_v2_pokemonforms'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'is_mega'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'is_battle_only'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'form_name'),
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
                        name: NameNode(value: 'pokemon_v2_pokemonformtypes'),
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
                        name: NameNode(value: 'pokemon_v2_pokemonformsprites'),
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
                            name: NameNode(value: 'sprites'),
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
                    name: NameNode(value: 'generation_id'),
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
    required this.pokemon_v2_pokemons,
    this.$__typename = 'pokemon_v2_pokemonspecies',
  });

  factory Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy.fromJson(
      Map<String, dynamic> json) {
    final l$gender_rate = json['gender_rate'];
    final l$pokemon_v2_pokemonspeciesflavortexts =
        json['pokemon_v2_pokemonspeciesflavortexts'];
    final l$pokemon_v2_evolutionchain = json['pokemon_v2_evolutionchain'];
    final l$pokemon_v2_pokemons = json['pokemon_v2_pokemons'];
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
      pokemon_v2_pokemons: (l$pokemon_v2_pokemons as List<dynamic>)
          .map((e) =>
              Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int? gender_rate;

  final List<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts>
      pokemon_v2_pokemonspeciesflavortexts;

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain?
      pokemon_v2_evolutionchain;

  final List<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons>
      pokemon_v2_pokemons;

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
    final l$pokemon_v2_pokemons = pokemon_v2_pokemons;
    _resultData['pokemon_v2_pokemons'] =
        l$pokemon_v2_pokemons.map((e) => e.toJson()).toList();
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
    final l$pokemon_v2_pokemons = pokemon_v2_pokemons;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$gender_rate,
      Object.hashAll(l$pokemon_v2_pokemonspeciesflavortexts.map((v) => v)),
      l$pokemon_v2_evolutionchain,
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
    List<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons>?
        pokemon_v2_pokemons,
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
  TRes pokemon_v2_pokemons(
      Iterable<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons> Function(
              Iterable<
                  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons<
                      Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons>>)
          _fn);
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
    Object? pokemon_v2_pokemons = _undefined,
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
        pokemon_v2_pokemons: pokemon_v2_pokemons == _undefined ||
                pokemon_v2_pokemons == null
            ? _instance.pokemon_v2_pokemons
            : (pokemon_v2_pokemons as List<
                Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons>),
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

  TRes pokemon_v2_pokemons(
          Iterable<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons<
                          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons>>)
              _fn) =>
      call(
          pokemon_v2_pokemons: _fn(_instance.pokemon_v2_pokemons.map((e) =>
              CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons(
                e,
                (i) => i,
              ))).toList());
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
    List<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons>?
        pokemon_v2_pokemons,
    String? $__typename,
  }) =>
      _res;

  pokemon_v2_pokemonspeciesflavortexts(_fn) => _res;

  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain<
          TRes>
      get pokemon_v2_evolutionchain =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain
              .stub(_res);

  pokemon_v2_pokemons(_fn) => _res;
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
    required this.pokemon_v2_pokemonevolutions,
    this.$__typename = 'pokemon_v2_pokemonspecies',
  });

  factory Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$order = json['order'];
    final l$evolves_from_species_id = json['evolves_from_species_id'];
    final l$pokemon_v2_pokemons = json['pokemon_v2_pokemons'];
    final l$pokemon_v2_pokemonevolutions = json['pokemon_v2_pokemonevolutions'];
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
      pokemon_v2_pokemonevolutions: (l$pokemon_v2_pokemonevolutions
              as List<dynamic>)
          .map((e) =>
              Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions
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

  final List<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions>
      pokemon_v2_pokemonevolutions;

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
    final l$pokemon_v2_pokemonevolutions = pokemon_v2_pokemonevolutions;
    _resultData['pokemon_v2_pokemonevolutions'] =
        l$pokemon_v2_pokemonevolutions.map((e) => e.toJson()).toList();
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
    final l$pokemon_v2_pokemonevolutions = pokemon_v2_pokemonevolutions;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$order,
      l$evolves_from_species_id,
      Object.hashAll(l$pokemon_v2_pokemons.map((v) => v)),
      Object.hashAll(l$pokemon_v2_pokemonevolutions.map((v) => v)),
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
    final l$pokemon_v2_pokemonevolutions = pokemon_v2_pokemonevolutions;
    final lOther$pokemon_v2_pokemonevolutions =
        other.pokemon_v2_pokemonevolutions;
    if (l$pokemon_v2_pokemonevolutions.length !=
        lOther$pokemon_v2_pokemonevolutions.length) {
      return false;
    }
    for (int i = 0; i < l$pokemon_v2_pokemonevolutions.length; i++) {
      final l$pokemon_v2_pokemonevolutions$entry =
          l$pokemon_v2_pokemonevolutions[i];
      final lOther$pokemon_v2_pokemonevolutions$entry =
          lOther$pokemon_v2_pokemonevolutions[i];
      if (l$pokemon_v2_pokemonevolutions$entry !=
          lOther$pokemon_v2_pokemonevolutions$entry) {
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
    List<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions>?
        pokemon_v2_pokemonevolutions,
    String? $__typename,
  });
  TRes pokemon_v2_pokemons(
      Iterable<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons> Function(
              Iterable<
                  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons<
                      Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons>>)
          _fn);
  TRes pokemon_v2_pokemonevolutions(
      Iterable<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions> Function(
              Iterable<
                  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions<
                      Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions>>)
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
    Object? pokemon_v2_pokemonevolutions = _undefined,
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
        pokemon_v2_pokemonevolutions: pokemon_v2_pokemonevolutions ==
                    _undefined ||
                pokemon_v2_pokemonevolutions == null
            ? _instance.pokemon_v2_pokemonevolutions
            : (pokemon_v2_pokemonevolutions as List<
                Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions>),
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

  TRes pokemon_v2_pokemonevolutions(
          Iterable<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions<
                          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions>>)
              _fn) =>
      call(
          pokemon_v2_pokemonevolutions: _fn(
              _instance.pokemon_v2_pokemonevolutions.map((e) =>
                  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions(
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
    List<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions>?
        pokemon_v2_pokemonevolutions,
    String? $__typename,
  }) =>
      _res;

  pokemon_v2_pokemons(_fn) => _res;

  pokemon_v2_pokemonevolutions(_fn) => _res;
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

class Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions {
  Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions({
    this.min_level,
    this.time_of_day,
    this.min_happiness,
    this.min_beauty,
    this.min_affection,
    required this.needs_overworld_rain,
    required this.turn_upside_down,
    this.trade_species_id,
    this.pokemon_v2_evolutiontrigger,
    this.pokemon_v2_item,
    this.pokemon_v2_move,
    this.pokemon_v2_type,
    this.pokemon_v2_location,
    this.$__typename = 'pokemon_v2_pokemonevolution',
  });

  factory Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions.fromJson(
      Map<String, dynamic> json) {
    final l$min_level = json['min_level'];
    final l$time_of_day = json['time_of_day'];
    final l$min_happiness = json['min_happiness'];
    final l$min_beauty = json['min_beauty'];
    final l$min_affection = json['min_affection'];
    final l$needs_overworld_rain = json['needs_overworld_rain'];
    final l$turn_upside_down = json['turn_upside_down'];
    final l$trade_species_id = json['trade_species_id'];
    final l$pokemon_v2_evolutiontrigger = json['pokemon_v2_evolutiontrigger'];
    final l$pokemon_v2_item = json['pokemon_v2_item'];
    final l$pokemon_v2_move = json['pokemon_v2_move'];
    final l$pokemon_v2_type = json['pokemon_v2_type'];
    final l$pokemon_v2_location = json['pokemon_v2_location'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions(
      min_level: (l$min_level as int?),
      time_of_day: (l$time_of_day as String?),
      min_happiness: (l$min_happiness as int?),
      min_beauty: (l$min_beauty as int?),
      min_affection: (l$min_affection as int?),
      needs_overworld_rain: (l$needs_overworld_rain as bool),
      turn_upside_down: (l$turn_upside_down as bool),
      trade_species_id: (l$trade_species_id as int?),
      pokemon_v2_evolutiontrigger: l$pokemon_v2_evolutiontrigger == null
          ? null
          : Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger
              .fromJson(
                  (l$pokemon_v2_evolutiontrigger as Map<String, dynamic>)),
      pokemon_v2_item: l$pokemon_v2_item == null
          ? null
          : Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item
              .fromJson((l$pokemon_v2_item as Map<String, dynamic>)),
      pokemon_v2_move: l$pokemon_v2_move == null
          ? null
          : Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move
              .fromJson((l$pokemon_v2_move as Map<String, dynamic>)),
      pokemon_v2_type: l$pokemon_v2_type == null
          ? null
          : Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type
              .fromJson((l$pokemon_v2_type as Map<String, dynamic>)),
      pokemon_v2_location: l$pokemon_v2_location == null
          ? null
          : Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location
              .fromJson((l$pokemon_v2_location as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? min_level;

  final String? time_of_day;

  final int? min_happiness;

  final int? min_beauty;

  final int? min_affection;

  final bool needs_overworld_rain;

  final bool turn_upside_down;

  final int? trade_species_id;

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger?
      pokemon_v2_evolutiontrigger;

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item?
      pokemon_v2_item;

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move?
      pokemon_v2_move;

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type?
      pokemon_v2_type;

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location?
      pokemon_v2_location;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$min_level = min_level;
    _resultData['min_level'] = l$min_level;
    final l$time_of_day = time_of_day;
    _resultData['time_of_day'] = l$time_of_day;
    final l$min_happiness = min_happiness;
    _resultData['min_happiness'] = l$min_happiness;
    final l$min_beauty = min_beauty;
    _resultData['min_beauty'] = l$min_beauty;
    final l$min_affection = min_affection;
    _resultData['min_affection'] = l$min_affection;
    final l$needs_overworld_rain = needs_overworld_rain;
    _resultData['needs_overworld_rain'] = l$needs_overworld_rain;
    final l$turn_upside_down = turn_upside_down;
    _resultData['turn_upside_down'] = l$turn_upside_down;
    final l$trade_species_id = trade_species_id;
    _resultData['trade_species_id'] = l$trade_species_id;
    final l$pokemon_v2_evolutiontrigger = pokemon_v2_evolutiontrigger;
    _resultData['pokemon_v2_evolutiontrigger'] =
        l$pokemon_v2_evolutiontrigger?.toJson();
    final l$pokemon_v2_item = pokemon_v2_item;
    _resultData['pokemon_v2_item'] = l$pokemon_v2_item?.toJson();
    final l$pokemon_v2_move = pokemon_v2_move;
    _resultData['pokemon_v2_move'] = l$pokemon_v2_move?.toJson();
    final l$pokemon_v2_type = pokemon_v2_type;
    _resultData['pokemon_v2_type'] = l$pokemon_v2_type?.toJson();
    final l$pokemon_v2_location = pokemon_v2_location;
    _resultData['pokemon_v2_location'] = l$pokemon_v2_location?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$min_level = min_level;
    final l$time_of_day = time_of_day;
    final l$min_happiness = min_happiness;
    final l$min_beauty = min_beauty;
    final l$min_affection = min_affection;
    final l$needs_overworld_rain = needs_overworld_rain;
    final l$turn_upside_down = turn_upside_down;
    final l$trade_species_id = trade_species_id;
    final l$pokemon_v2_evolutiontrigger = pokemon_v2_evolutiontrigger;
    final l$pokemon_v2_item = pokemon_v2_item;
    final l$pokemon_v2_move = pokemon_v2_move;
    final l$pokemon_v2_type = pokemon_v2_type;
    final l$pokemon_v2_location = pokemon_v2_location;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$min_level,
      l$time_of_day,
      l$min_happiness,
      l$min_beauty,
      l$min_affection,
      l$needs_overworld_rain,
      l$turn_upside_down,
      l$trade_species_id,
      l$pokemon_v2_evolutiontrigger,
      l$pokemon_v2_item,
      l$pokemon_v2_move,
      l$pokemon_v2_type,
      l$pokemon_v2_location,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$min_level = min_level;
    final lOther$min_level = other.min_level;
    if (l$min_level != lOther$min_level) {
      return false;
    }
    final l$time_of_day = time_of_day;
    final lOther$time_of_day = other.time_of_day;
    if (l$time_of_day != lOther$time_of_day) {
      return false;
    }
    final l$min_happiness = min_happiness;
    final lOther$min_happiness = other.min_happiness;
    if (l$min_happiness != lOther$min_happiness) {
      return false;
    }
    final l$min_beauty = min_beauty;
    final lOther$min_beauty = other.min_beauty;
    if (l$min_beauty != lOther$min_beauty) {
      return false;
    }
    final l$min_affection = min_affection;
    final lOther$min_affection = other.min_affection;
    if (l$min_affection != lOther$min_affection) {
      return false;
    }
    final l$needs_overworld_rain = needs_overworld_rain;
    final lOther$needs_overworld_rain = other.needs_overworld_rain;
    if (l$needs_overworld_rain != lOther$needs_overworld_rain) {
      return false;
    }
    final l$turn_upside_down = turn_upside_down;
    final lOther$turn_upside_down = other.turn_upside_down;
    if (l$turn_upside_down != lOther$turn_upside_down) {
      return false;
    }
    final l$trade_species_id = trade_species_id;
    final lOther$trade_species_id = other.trade_species_id;
    if (l$trade_species_id != lOther$trade_species_id) {
      return false;
    }
    final l$pokemon_v2_evolutiontrigger = pokemon_v2_evolutiontrigger;
    final lOther$pokemon_v2_evolutiontrigger =
        other.pokemon_v2_evolutiontrigger;
    if (l$pokemon_v2_evolutiontrigger != lOther$pokemon_v2_evolutiontrigger) {
      return false;
    }
    final l$pokemon_v2_item = pokemon_v2_item;
    final lOther$pokemon_v2_item = other.pokemon_v2_item;
    if (l$pokemon_v2_item != lOther$pokemon_v2_item) {
      return false;
    }
    final l$pokemon_v2_move = pokemon_v2_move;
    final lOther$pokemon_v2_move = other.pokemon_v2_move;
    if (l$pokemon_v2_move != lOther$pokemon_v2_move) {
      return false;
    }
    final l$pokemon_v2_type = pokemon_v2_type;
    final lOther$pokemon_v2_type = other.pokemon_v2_type;
    if (l$pokemon_v2_type != lOther$pokemon_v2_type) {
      return false;
    }
    final l$pokemon_v2_location = pokemon_v2_location;
    final lOther$pokemon_v2_location = other.pokemon_v2_location;
    if (l$pokemon_v2_location != lOther$pokemon_v2_location) {
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

extension UtilityExtension$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions
    on Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions {
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions>
      get copyWith =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions<
    TRes> {
  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions(
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions
        instance,
    TRes Function(
            Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions)
        then,
  ) = _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions;

  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions;

  TRes call({
    int? min_level,
    String? time_of_day,
    int? min_happiness,
    int? min_beauty,
    int? min_affection,
    bool? needs_overworld_rain,
    bool? turn_upside_down,
    int? trade_species_id,
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger?
        pokemon_v2_evolutiontrigger,
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item?
        pokemon_v2_item,
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move?
        pokemon_v2_move,
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type?
        pokemon_v2_type,
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location?
        pokemon_v2_location,
    String? $__typename,
  });
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger<
      TRes> get pokemon_v2_evolutiontrigger;
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item<
      TRes> get pokemon_v2_item;
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move<
      TRes> get pokemon_v2_move;
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type<
      TRes> get pokemon_v2_type;
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location<
      TRes> get pokemon_v2_location;
}

class _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions<
            TRes> {
  _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions
      _instance;

  final TRes Function(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? min_level = _undefined,
    Object? time_of_day = _undefined,
    Object? min_happiness = _undefined,
    Object? min_beauty = _undefined,
    Object? min_affection = _undefined,
    Object? needs_overworld_rain = _undefined,
    Object? turn_upside_down = _undefined,
    Object? trade_species_id = _undefined,
    Object? pokemon_v2_evolutiontrigger = _undefined,
    Object? pokemon_v2_item = _undefined,
    Object? pokemon_v2_move = _undefined,
    Object? pokemon_v2_type = _undefined,
    Object? pokemon_v2_location = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions(
        min_level:
            min_level == _undefined ? _instance.min_level : (min_level as int?),
        time_of_day: time_of_day == _undefined
            ? _instance.time_of_day
            : (time_of_day as String?),
        min_happiness: min_happiness == _undefined
            ? _instance.min_happiness
            : (min_happiness as int?),
        min_beauty: min_beauty == _undefined
            ? _instance.min_beauty
            : (min_beauty as int?),
        min_affection: min_affection == _undefined
            ? _instance.min_affection
            : (min_affection as int?),
        needs_overworld_rain:
            needs_overworld_rain == _undefined || needs_overworld_rain == null
                ? _instance.needs_overworld_rain
                : (needs_overworld_rain as bool),
        turn_upside_down:
            turn_upside_down == _undefined || turn_upside_down == null
                ? _instance.turn_upside_down
                : (turn_upside_down as bool),
        trade_species_id: trade_species_id == _undefined
            ? _instance.trade_species_id
            : (trade_species_id as int?),
        pokemon_v2_evolutiontrigger: pokemon_v2_evolutiontrigger == _undefined
            ? _instance.pokemon_v2_evolutiontrigger
            : (pokemon_v2_evolutiontrigger
                as Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger?),
        pokemon_v2_item: pokemon_v2_item == _undefined
            ? _instance.pokemon_v2_item
            : (pokemon_v2_item
                as Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item?),
        pokemon_v2_move: pokemon_v2_move == _undefined
            ? _instance.pokemon_v2_move
            : (pokemon_v2_move
                as Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move?),
        pokemon_v2_type: pokemon_v2_type == _undefined
            ? _instance.pokemon_v2_type
            : (pokemon_v2_type
                as Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type?),
        pokemon_v2_location: pokemon_v2_location == _undefined
            ? _instance.pokemon_v2_location
            : (pokemon_v2_location
                as Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger<
      TRes> get pokemon_v2_evolutiontrigger {
    final local$pokemon_v2_evolutiontrigger =
        _instance.pokemon_v2_evolutiontrigger;
    return local$pokemon_v2_evolutiontrigger == null
        ? CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger(
            local$pokemon_v2_evolutiontrigger,
            (e) => call(pokemon_v2_evolutiontrigger: e));
  }

  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item<
      TRes> get pokemon_v2_item {
    final local$pokemon_v2_item = _instance.pokemon_v2_item;
    return local$pokemon_v2_item == null
        ? CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item(
            local$pokemon_v2_item, (e) => call(pokemon_v2_item: e));
  }

  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move<
      TRes> get pokemon_v2_move {
    final local$pokemon_v2_move = _instance.pokemon_v2_move;
    return local$pokemon_v2_move == null
        ? CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move(
            local$pokemon_v2_move, (e) => call(pokemon_v2_move: e));
  }

  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type<
      TRes> get pokemon_v2_type {
    final local$pokemon_v2_type = _instance.pokemon_v2_type;
    return local$pokemon_v2_type == null
        ? CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type(
            local$pokemon_v2_type, (e) => call(pokemon_v2_type: e));
  }

  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location<
      TRes> get pokemon_v2_location {
    final local$pokemon_v2_location = _instance.pokemon_v2_location;
    return local$pokemon_v2_location == null
        ? CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location(
            local$pokemon_v2_location, (e) => call(pokemon_v2_location: e));
  }
}

class _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions(
      this._res);

  TRes _res;

  call({
    int? min_level,
    String? time_of_day,
    int? min_happiness,
    int? min_beauty,
    int? min_affection,
    bool? needs_overworld_rain,
    bool? turn_upside_down,
    int? trade_species_id,
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger?
        pokemon_v2_evolutiontrigger,
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item?
        pokemon_v2_item,
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move?
        pokemon_v2_move,
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type?
        pokemon_v2_type,
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location?
        pokemon_v2_location,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger<
          TRes>
      get pokemon_v2_evolutiontrigger =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger
              .stub(_res);

  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item<
          TRes>
      get pokemon_v2_item =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item
              .stub(_res);

  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move<
          TRes>
      get pokemon_v2_move =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move
              .stub(_res);

  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type<
          TRes>
      get pokemon_v2_type =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type
              .stub(_res);

  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location<
          TRes>
      get pokemon_v2_location =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location
              .stub(_res);
}

class Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger {
  Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger({
    required this.name,
    this.$__typename = 'pokemon_v2_evolutiontrigger',
  });

  factory Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger(
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
            is! Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger ||
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

extension UtilityExtension$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger
    on Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger {
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger>
      get copyWith =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger<
    TRes> {
  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger(
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger
        instance,
    TRes Function(
            Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger)
        then,
  ) = _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger;

  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger<
            TRes> {
  _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger
      _instance;

  final TRes Function(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item {
  Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item({
    required this.name,
    this.$__typename = 'pokemon_v2_item',
  });

  factory Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item(
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
            is! Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item ||
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

extension UtilityExtension$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item
    on Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item {
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item>
      get copyWith =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item<
    TRes> {
  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item(
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item
        instance,
    TRes Function(
            Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item)
        then,
  ) = _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item;

  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item<
            TRes> {
  _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item
      _instance;

  final TRes Function(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move {
  Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move({
    required this.name,
    this.$__typename = 'pokemon_v2_move',
  });

  factory Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move(
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
            is! Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move ||
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

extension UtilityExtension$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move
    on Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move {
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move>
      get copyWith =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move<
    TRes> {
  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move(
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move
        instance,
    TRes Function(
            Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move)
        then,
  ) = _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move;

  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move<
            TRes> {
  _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move
      _instance;

  final TRes Function(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type {
  Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type({
    required this.name,
    this.$__typename = 'pokemon_v2_type',
  });

  factory Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type(
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
            is! Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type ||
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

extension UtilityExtension$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type
    on Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type {
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type>
      get copyWith =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type<
    TRes> {
  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type(
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type
        instance,
    TRes Function(
            Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type)
        then,
  ) = _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type;

  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type<
            TRes> {
  _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type
      _instance;

  final TRes Function(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location {
  Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location({
    required this.name,
    this.$__typename = 'pokemon_v2_location',
  });

  factory Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location(
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
            is! Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location ||
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

extension UtilityExtension$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location
    on Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location {
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location>
      get copyWith =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location<
    TRes> {
  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location(
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location
        instance,
    TRes Function(
            Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location)
        then,
  ) = _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location;

  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location<
            TRes> {
  _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location
      _instance;

  final TRes Function(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons {
  Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons({
    required this.id,
    required this.name,
    required this.pokemon_v2_pokemonforms,
    this.$__typename = 'pokemon_v2_pokemon',
  });

  factory Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$pokemon_v2_pokemonforms = json['pokemon_v2_pokemonforms'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons(
      id: (l$id as int),
      name: (l$name as String),
      pokemon_v2_pokemonforms: (l$pokemon_v2_pokemonforms as List<dynamic>)
          .map((e) =>
              Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final List<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms>
      pokemon_v2_pokemonforms;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$pokemon_v2_pokemonforms = pokemon_v2_pokemonforms;
    _resultData['pokemon_v2_pokemonforms'] =
        l$pokemon_v2_pokemonforms.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$pokemon_v2_pokemonforms = pokemon_v2_pokemonforms;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      Object.hashAll(l$pokemon_v2_pokemonforms.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons ||
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
    final l$pokemon_v2_pokemonforms = pokemon_v2_pokemonforms;
    final lOther$pokemon_v2_pokemonforms = other.pokemon_v2_pokemonforms;
    if (l$pokemon_v2_pokemonforms.length !=
        lOther$pokemon_v2_pokemonforms.length) {
      return false;
    }
    for (int i = 0; i < l$pokemon_v2_pokemonforms.length; i++) {
      final l$pokemon_v2_pokemonforms$entry = l$pokemon_v2_pokemonforms[i];
      final lOther$pokemon_v2_pokemonforms$entry =
          lOther$pokemon_v2_pokemonforms[i];
      if (l$pokemon_v2_pokemonforms$entry !=
          lOther$pokemon_v2_pokemonforms$entry) {
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

extension UtilityExtension$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons
    on Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons {
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons>
      get copyWith =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons<
    TRes> {
  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons(
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons
        instance,
    TRes Function(
            Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons)
        then,
  ) = _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons;

  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons;

  TRes call({
    int? id,
    String? name,
    List<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms>?
        pokemon_v2_pokemonforms,
    String? $__typename,
  });
  TRes pokemon_v2_pokemonforms(
      Iterable<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms> Function(
              Iterable<
                  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms<
                      Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms>>)
          _fn);
}

class _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons<
            TRes> {
  _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons
      _instance;

  final TRes Function(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? pokemon_v2_pokemonforms = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        pokemon_v2_pokemonforms: pokemon_v2_pokemonforms == _undefined ||
                pokemon_v2_pokemonforms == null
            ? _instance.pokemon_v2_pokemonforms
            : (pokemon_v2_pokemonforms as List<
                Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes pokemon_v2_pokemonforms(
          Iterable<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms<
                          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms>>)
              _fn) =>
      call(
          pokemon_v2_pokemonforms: _fn(_instance.pokemon_v2_pokemonforms.map((e) =>
              CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    List<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms>?
        pokemon_v2_pokemonforms,
    String? $__typename,
  }) =>
      _res;

  pokemon_v2_pokemonforms(_fn) => _res;
}

class Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms {
  Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms({
    required this.is_mega,
    required this.is_battle_only,
    required this.form_name,
    required this.name,
    required this.pokemon_v2_pokemonformtypes,
    required this.pokemon_v2_pokemonformsprites,
    this.$__typename = 'pokemon_v2_pokemonform',
  });

  factory Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms.fromJson(
      Map<String, dynamic> json) {
    final l$is_mega = json['is_mega'];
    final l$is_battle_only = json['is_battle_only'];
    final l$form_name = json['form_name'];
    final l$name = json['name'];
    final l$pokemon_v2_pokemonformtypes = json['pokemon_v2_pokemonformtypes'];
    final l$pokemon_v2_pokemonformsprites =
        json['pokemon_v2_pokemonformsprites'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms(
      is_mega: (l$is_mega as bool),
      is_battle_only: (l$is_battle_only as bool),
      form_name: (l$form_name as String),
      name: (l$name as String),
      pokemon_v2_pokemonformtypes: (l$pokemon_v2_pokemonformtypes
              as List<dynamic>)
          .map((e) =>
              Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      pokemon_v2_pokemonformsprites: (l$pokemon_v2_pokemonformsprites
              as List<dynamic>)
          .map((e) =>
              Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformsprites
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final bool is_mega;

  final bool is_battle_only;

  final String form_name;

  final String name;

  final List<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes>
      pokemon_v2_pokemonformtypes;

  final List<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformsprites>
      pokemon_v2_pokemonformsprites;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$is_mega = is_mega;
    _resultData['is_mega'] = l$is_mega;
    final l$is_battle_only = is_battle_only;
    _resultData['is_battle_only'] = l$is_battle_only;
    final l$form_name = form_name;
    _resultData['form_name'] = l$form_name;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$pokemon_v2_pokemonformtypes = pokemon_v2_pokemonformtypes;
    _resultData['pokemon_v2_pokemonformtypes'] =
        l$pokemon_v2_pokemonformtypes.map((e) => e.toJson()).toList();
    final l$pokemon_v2_pokemonformsprites = pokemon_v2_pokemonformsprites;
    _resultData['pokemon_v2_pokemonformsprites'] =
        l$pokemon_v2_pokemonformsprites.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$is_mega = is_mega;
    final l$is_battle_only = is_battle_only;
    final l$form_name = form_name;
    final l$name = name;
    final l$pokemon_v2_pokemonformtypes = pokemon_v2_pokemonformtypes;
    final l$pokemon_v2_pokemonformsprites = pokemon_v2_pokemonformsprites;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$is_mega,
      l$is_battle_only,
      l$form_name,
      l$name,
      Object.hashAll(l$pokemon_v2_pokemonformtypes.map((v) => v)),
      Object.hashAll(l$pokemon_v2_pokemonformsprites.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$is_mega = is_mega;
    final lOther$is_mega = other.is_mega;
    if (l$is_mega != lOther$is_mega) {
      return false;
    }
    final l$is_battle_only = is_battle_only;
    final lOther$is_battle_only = other.is_battle_only;
    if (l$is_battle_only != lOther$is_battle_only) {
      return false;
    }
    final l$form_name = form_name;
    final lOther$form_name = other.form_name;
    if (l$form_name != lOther$form_name) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$pokemon_v2_pokemonformtypes = pokemon_v2_pokemonformtypes;
    final lOther$pokemon_v2_pokemonformtypes =
        other.pokemon_v2_pokemonformtypes;
    if (l$pokemon_v2_pokemonformtypes.length !=
        lOther$pokemon_v2_pokemonformtypes.length) {
      return false;
    }
    for (int i = 0; i < l$pokemon_v2_pokemonformtypes.length; i++) {
      final l$pokemon_v2_pokemonformtypes$entry =
          l$pokemon_v2_pokemonformtypes[i];
      final lOther$pokemon_v2_pokemonformtypes$entry =
          lOther$pokemon_v2_pokemonformtypes[i];
      if (l$pokemon_v2_pokemonformtypes$entry !=
          lOther$pokemon_v2_pokemonformtypes$entry) {
        return false;
      }
    }
    final l$pokemon_v2_pokemonformsprites = pokemon_v2_pokemonformsprites;
    final lOther$pokemon_v2_pokemonformsprites =
        other.pokemon_v2_pokemonformsprites;
    if (l$pokemon_v2_pokemonformsprites.length !=
        lOther$pokemon_v2_pokemonformsprites.length) {
      return false;
    }
    for (int i = 0; i < l$pokemon_v2_pokemonformsprites.length; i++) {
      final l$pokemon_v2_pokemonformsprites$entry =
          l$pokemon_v2_pokemonformsprites[i];
      final lOther$pokemon_v2_pokemonformsprites$entry =
          lOther$pokemon_v2_pokemonformsprites[i];
      if (l$pokemon_v2_pokemonformsprites$entry !=
          lOther$pokemon_v2_pokemonformsprites$entry) {
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

extension UtilityExtension$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms
    on Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms {
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms>
      get copyWith =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms<
    TRes> {
  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms(
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms
        instance,
    TRes Function(
            Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms)
        then,
  ) = _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms;

  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms;

  TRes call({
    bool? is_mega,
    bool? is_battle_only,
    String? form_name,
    String? name,
    List<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes>?
        pokemon_v2_pokemonformtypes,
    List<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformsprites>?
        pokemon_v2_pokemonformsprites,
    String? $__typename,
  });
  TRes pokemon_v2_pokemonformtypes(
      Iterable<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes> Function(
              Iterable<
                  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes<
                      Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes>>)
          _fn);
  TRes pokemon_v2_pokemonformsprites(
      Iterable<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformsprites> Function(
              Iterable<
                  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformsprites<
                      Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformsprites>>)
          _fn);
}

class _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms<
            TRes> {
  _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms
      _instance;

  final TRes Function(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? is_mega = _undefined,
    Object? is_battle_only = _undefined,
    Object? form_name = _undefined,
    Object? name = _undefined,
    Object? pokemon_v2_pokemonformtypes = _undefined,
    Object? pokemon_v2_pokemonformsprites = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms(
        is_mega: is_mega == _undefined || is_mega == null
            ? _instance.is_mega
            : (is_mega as bool),
        is_battle_only: is_battle_only == _undefined || is_battle_only == null
            ? _instance.is_battle_only
            : (is_battle_only as bool),
        form_name: form_name == _undefined || form_name == null
            ? _instance.form_name
            : (form_name as String),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        pokemon_v2_pokemonformtypes: pokemon_v2_pokemonformtypes ==
                    _undefined ||
                pokemon_v2_pokemonformtypes == null
            ? _instance.pokemon_v2_pokemonformtypes
            : (pokemon_v2_pokemonformtypes as List<
                Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes>),
        pokemon_v2_pokemonformsprites: pokemon_v2_pokemonformsprites ==
                    _undefined ||
                pokemon_v2_pokemonformsprites == null
            ? _instance.pokemon_v2_pokemonformsprites
            : (pokemon_v2_pokemonformsprites as List<
                Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformsprites>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes pokemon_v2_pokemonformtypes(
          Iterable<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes<
                          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes>>)
              _fn) =>
      call(
          pokemon_v2_pokemonformtypes: _fn(_instance.pokemon_v2_pokemonformtypes
              .map((e) =>
                  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes(
                    e,
                    (i) => i,
                  ))).toList());

  TRes pokemon_v2_pokemonformsprites(
          Iterable<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformsprites> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformsprites<
                          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformsprites>>)
              _fn) =>
      call(
          pokemon_v2_pokemonformsprites: _fn(
              _instance.pokemon_v2_pokemonformsprites.map((e) =>
                  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformsprites(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms(
      this._res);

  TRes _res;

  call({
    bool? is_mega,
    bool? is_battle_only,
    String? form_name,
    String? name,
    List<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes>?
        pokemon_v2_pokemonformtypes,
    List<Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformsprites>?
        pokemon_v2_pokemonformsprites,
    String? $__typename,
  }) =>
      _res;

  pokemon_v2_pokemonformtypes(_fn) => _res;

  pokemon_v2_pokemonformsprites(_fn) => _res;
}

class Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes {
  Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes({
    this.pokemon_v2_type,
    this.$__typename = 'pokemon_v2_pokemonformtype',
  });

  factory Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes.fromJson(
      Map<String, dynamic> json) {
    final l$pokemon_v2_type = json['pokemon_v2_type'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes(
      pokemon_v2_type: l$pokemon_v2_type == null
          ? null
          : Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type
              .fromJson((l$pokemon_v2_type as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type?
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
            is! Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes ||
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

extension UtilityExtension$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes
    on Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes {
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes>
      get copyWith =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes<
    TRes> {
  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes(
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes
        instance,
    TRes Function(
            Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes)
        then,
  ) = _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes;

  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes;

  TRes call({
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type?
        pokemon_v2_type,
    String? $__typename,
  });
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type<
      TRes> get pokemon_v2_type;
}

class _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes<
            TRes> {
  _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes
      _instance;

  final TRes Function(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pokemon_v2_type = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes(
        pokemon_v2_type: pokemon_v2_type == _undefined
            ? _instance.pokemon_v2_type
            : (pokemon_v2_type
                as Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type<
      TRes> get pokemon_v2_type {
    final local$pokemon_v2_type = _instance.pokemon_v2_type;
    return local$pokemon_v2_type == null
        ? CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type(
            local$pokemon_v2_type, (e) => call(pokemon_v2_type: e));
  }
}

class _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes(
      this._res);

  TRes _res;

  call({
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type?
        pokemon_v2_type,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type<
          TRes>
      get pokemon_v2_type =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type
              .stub(_res);
}

class Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type {
  Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type({
    required this.name,
    this.$__typename = 'pokemon_v2_type',
  });

  factory Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type(
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
            is! Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type ||
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

extension UtilityExtension$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type
    on Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type {
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type>
      get copyWith =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type<
    TRes> {
  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type(
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type
        instance,
    TRes Function(
            Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type)
        then,
  ) = _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type;

  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type<
            TRes> {
  _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type
      _instance;

  final TRes Function(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformsprites {
  Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformsprites({
    required this.sprites,
    this.$__typename = 'pokemon_v2_pokemonformsprites',
  });

  factory Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformsprites.fromJson(
      Map<String, dynamic> json) {
    final l$sprites = json['sprites'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformsprites(
      sprites: (l$sprites as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String sprites;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$sprites = sprites;
    _resultData['sprites'] = l$sprites;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$sprites = sprites;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$sprites,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformsprites ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$sprites = sprites;
    final lOther$sprites = other.sprites;
    if (l$sprites != lOther$sprites) {
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

extension UtilityExtension$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformsprites
    on Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformsprites {
  CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformsprites<
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformsprites>
      get copyWith =>
          CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformsprites(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformsprites<
    TRes> {
  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformsprites(
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformsprites
        instance,
    TRes Function(
            Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformsprites)
        then,
  ) = _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformsprites;

  factory CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformsprites.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformsprites;

  TRes call({
    String? sprites,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformsprites<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformsprites<
            TRes> {
  _CopyWithImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformsprites(
    this._instance,
    this._then,
  );

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformsprites
      _instance;

  final TRes Function(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformsprites)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? sprites = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformsprites(
        sprites: sprites == _undefined || sprites == null
            ? _instance.sprites
            : (sprites as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformsprites<
        TRes>
    implements
        CopyWith$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformsprites<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformsprites(
      this._res);

  TRes _res;

  call({
    String? sprites,
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
    this.generation_id,
    this.pokemon_v2_type,
    this.pokemon_v2_movedamageclass,
    this.$__typename = 'pokemon_v2_move',
  });

  factory Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$power = json['power'];
    final l$pp = json['pp'];
    final l$accuracy = json['accuracy'];
    final l$generation_id = json['generation_id'];
    final l$pokemon_v2_type = json['pokemon_v2_type'];
    final l$pokemon_v2_movedamageclass = json['pokemon_v2_movedamageclass'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move(
      name: (l$name as String),
      power: (l$power as int?),
      pp: (l$pp as int?),
      accuracy: (l$accuracy as int?),
      generation_id: (l$generation_id as int?),
      pokemon_v2_type: l$pokemon_v2_type == null
          ? null
          : Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type
              .fromJson((l$pokemon_v2_type as Map<String, dynamic>)),
      pokemon_v2_movedamageclass: l$pokemon_v2_movedamageclass == null
          ? null
          : Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass
              .fromJson((l$pokemon_v2_movedamageclass as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final int? power;

  final int? pp;

  final int? accuracy;

  final int? generation_id;

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type?
      pokemon_v2_type;

  final Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass?
      pokemon_v2_movedamageclass;

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
    final l$generation_id = generation_id;
    _resultData['generation_id'] = l$generation_id;
    final l$pokemon_v2_type = pokemon_v2_type;
    _resultData['pokemon_v2_type'] = l$pokemon_v2_type?.toJson();
    final l$pokemon_v2_movedamageclass = pokemon_v2_movedamageclass;
    _resultData['pokemon_v2_movedamageclass'] =
        l$pokemon_v2_movedamageclass?.toJson();
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
    final l$generation_id = generation_id;
    final l$pokemon_v2_type = pokemon_v2_type;
    final l$pokemon_v2_movedamageclass = pokemon_v2_movedamageclass;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      l$power,
      l$pp,
      l$accuracy,
      l$generation_id,
      l$pokemon_v2_type,
      l$pokemon_v2_movedamageclass,
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
    final l$generation_id = generation_id;
    final lOther$generation_id = other.generation_id;
    if (l$generation_id != lOther$generation_id) {
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
    int? generation_id,
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type?
        pokemon_v2_type,
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass?
        pokemon_v2_movedamageclass,
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
    Object? generation_id = _undefined,
    Object? pokemon_v2_type = _undefined,
    Object? pokemon_v2_movedamageclass = _undefined,
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
        generation_id: generation_id == _undefined
            ? _instance.generation_id
            : (generation_id as int?),
        pokemon_v2_type: pokemon_v2_type == _undefined
            ? _instance.pokemon_v2_type
            : (pokemon_v2_type
                as Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type?),
        pokemon_v2_movedamageclass: pokemon_v2_movedamageclass == _undefined
            ? _instance.pokemon_v2_movedamageclass
            : (pokemon_v2_movedamageclass
                as Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass?),
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
    int? generation_id,
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type?
        pokemon_v2_type,
    Query$PokemonDetailV3$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass?
        pokemon_v2_movedamageclass,
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
