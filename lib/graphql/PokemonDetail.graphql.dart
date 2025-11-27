import 'package:gql/ast.dart';

class Variables$Query$PokemonDetail {
  factory Variables$Query$PokemonDetail({
    required int id,
    required int langId,
  }) =>
      Variables$Query$PokemonDetail._({
        r'id': id,
        r'langId': langId,
      });

  Variables$Query$PokemonDetail._(this._$data);

  factory Variables$Query$PokemonDetail.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as int);
    final l$langId = data['langId'];
    result$data['langId'] = (l$langId as int);
    return Variables$Query$PokemonDetail._(result$data);
  }

  Map<String, dynamic> _$data;

  int get id => (_$data['id'] as int);

  int get langId => (_$data['langId'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    final l$langId = langId;
    result$data['langId'] = l$langId;
    return result$data;
  }

  CopyWith$Variables$Query$PokemonDetail<Variables$Query$PokemonDetail>
      get copyWith => CopyWith$Variables$Query$PokemonDetail(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$PokemonDetail ||
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
      l$langId,
    ]);
  }
}

abstract class CopyWith$Variables$Query$PokemonDetail<TRes> {
  factory CopyWith$Variables$Query$PokemonDetail(
    Variables$Query$PokemonDetail instance,
    TRes Function(Variables$Query$PokemonDetail) then,
  ) = _CopyWithImpl$Variables$Query$PokemonDetail;

  factory CopyWith$Variables$Query$PokemonDetail.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$PokemonDetail;

  TRes call({
    int? id,
    int? langId,
  });
}

class _CopyWithImpl$Variables$Query$PokemonDetail<TRes>
    implements CopyWith$Variables$Query$PokemonDetail<TRes> {
  _CopyWithImpl$Variables$Query$PokemonDetail(
    this._instance,
    this._then,
  );

  final Variables$Query$PokemonDetail _instance;

  final TRes Function(Variables$Query$PokemonDetail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? langId = _undefined,
  }) =>
      _then(Variables$Query$PokemonDetail._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as int),
        if (langId != _undefined && langId != null) 'langId': (langId as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$PokemonDetail<TRes>
    implements CopyWith$Variables$Query$PokemonDetail<TRes> {
  _CopyWithStubImpl$Variables$Query$PokemonDetail(this._res);

  TRes _res;

  call({
    int? id,
    int? langId,
  }) =>
      _res;
}

class Query$PokemonDetail {
  Query$PokemonDetail({
    this.pokemon_v2_pokemon_by_pk,
    this.$__typename = 'query_root',
  });

  factory Query$PokemonDetail.fromJson(Map<String, dynamic> json) {
    final l$pokemon_v2_pokemon_by_pk = json['pokemon_v2_pokemon_by_pk'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail(
      pokemon_v2_pokemon_by_pk: l$pokemon_v2_pokemon_by_pk == null
          ? null
          : Query$PokemonDetail$pokemon_v2_pokemon_by_pk.fromJson(
              (l$pokemon_v2_pokemon_by_pk as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk? pokemon_v2_pokemon_by_pk;

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
    if (other is! Query$PokemonDetail || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$PokemonDetail on Query$PokemonDetail {
  CopyWith$Query$PokemonDetail<Query$PokemonDetail> get copyWith =>
      CopyWith$Query$PokemonDetail(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PokemonDetail<TRes> {
  factory CopyWith$Query$PokemonDetail(
    Query$PokemonDetail instance,
    TRes Function(Query$PokemonDetail) then,
  ) = _CopyWithImpl$Query$PokemonDetail;

  factory CopyWith$Query$PokemonDetail.stub(TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail;

  TRes call({
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk? pokemon_v2_pokemon_by_pk,
    String? $__typename,
  });
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk<TRes>
      get pokemon_v2_pokemon_by_pk;
}

class _CopyWithImpl$Query$PokemonDetail<TRes>
    implements CopyWith$Query$PokemonDetail<TRes> {
  _CopyWithImpl$Query$PokemonDetail(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail _instance;

  final TRes Function(Query$PokemonDetail) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pokemon_v2_pokemon_by_pk = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PokemonDetail(
        pokemon_v2_pokemon_by_pk: pokemon_v2_pokemon_by_pk == _undefined
            ? _instance.pokemon_v2_pokemon_by_pk
            : (pokemon_v2_pokemon_by_pk
                as Query$PokemonDetail$pokemon_v2_pokemon_by_pk?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk<TRes>
      get pokemon_v2_pokemon_by_pk {
    final local$pokemon_v2_pokemon_by_pk = _instance.pokemon_v2_pokemon_by_pk;
    return local$pokemon_v2_pokemon_by_pk == null
        ? CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk.stub(
            _then(_instance))
        : CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk(
            local$pokemon_v2_pokemon_by_pk,
            (e) => call(pokemon_v2_pokemon_by_pk: e));
  }
}

class _CopyWithStubImpl$Query$PokemonDetail<TRes>
    implements CopyWith$Query$PokemonDetail<TRes> {
  _CopyWithStubImpl$Query$PokemonDetail(this._res);

  TRes _res;

  call({
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk? pokemon_v2_pokemon_by_pk,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk<TRes>
      get pokemon_v2_pokemon_by_pk =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk.stub(_res);
}

const documentNodeQueryPokemonDetail = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'PokemonDetail'),
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
        defaultValue: DefaultValueNode(value: null),
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
                    name: NameNode(value: 'pokemon_v2_abilitynames'),
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
                      )
                    ],
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
                    name: NameNode(value: 'pokemon_v2_abilityflavortexts'),
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
                      ArgumentNode(
                        name: NameNode(value: 'order_by'),
                        value: ObjectValueNode(fields: [
                          ObjectFieldNode(
                            name: NameNode(value: 'version_group_id'),
                            value: EnumValueNode(name: NameNode(value: 'desc')),
                          )
                        ]),
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
                      )
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
                name: NameNode(value: 'gender_rate'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'is_legendary'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'is_mythical'),
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
                name: NameNode(value: 'pokemon_v2_generation'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'pokemon_v2_region'),
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
                name: NameNode(value: 'pokemon_v2_pokemonegggroups'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  FieldNode(
                    name: NameNode(value: 'pokemon_v2_egggroup'),
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
                        name: NameNode(value: 'evolves_from_species_id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
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
                            name: NameNode(value: 'time_of_day'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'gender_id'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'relative_physical_stats'),
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
                        name: NameNode(value: 'pokemon_v2_pokemons'),
                        alias: null,
                        arguments: [
                          ArgumentNode(
                            name: NameNode(value: 'limit'),
                            value: IntValueNode(value: '1'),
                          ),
                          ArgumentNode(
                            name: NameNode(value: 'where'),
                            value: ObjectValueNode(fields: [
                              ObjectFieldNode(
                                name: NameNode(value: 'is_default'),
                                value: ObjectValueNode(fields: [
                                  ObjectFieldNode(
                                    name: NameNode(value: '_eq'),
                                    value: BooleanValueNode(value: true),
                                  )
                                ]),
                              )
                            ]),
                          ),
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
                            name: NameNode(value: 'pokemon_v2_pokemonforms'),
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
                                name: NameNode(value: 'form_name'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null,
                              ),
                              FieldNode(
                                name: NameNode(value: 'is_mega'),
                                alias: null,
                                arguments: [],
                                directives: [],
                                selectionSet: null,
                              ),
                              FieldNode(
                                name: NameNode(
                                    value: 'pokemon_v2_pokemonformtypes'),
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
                        name: NameNode(value: 'form_name'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'is_mega'),
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
            arguments: [],
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
                name: NameNode(value: 'move_id'),
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
                name: NameNode(value: 'version_group_id'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
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
                    name: NameNode(value: 'pokemon_v2_movenames'),
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
                      )
                    ],
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
                    name: NameNode(value: 'power'),
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
                    name: NameNode(value: 'pp'),
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
                    name: NameNode(value: 'pokemon_v2_moveflavortexts'),
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
            name: NameNode(value: 'pokemon_v2_encounters'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'distinct_on'),
                value: EnumValueNode(name: NameNode(value: 'location_area_id')),
              )
            ],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'pokemon_v2_locationarea'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
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
                        name: NameNode(value: 'pokemon_v2_locationnames'),
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
                          )
                        ],
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
                        name: NameNode(value: 'pokemon_v2_region'),
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
                            name: NameNode(value: 'pokemon_v2_regionnames'),
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
                              )
                            ],
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
                name: NameNode(value: 'pokemon_v2_version'),
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
                    name: NameNode(value: 'pokemon_v2_versionnames'),
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
                      )
                    ],
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

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk({
    required this.id,
    required this.name,
    this.height,
    this.weight,
    required this.pokemon_v2_pokemontypes,
    required this.pokemon_v2_pokemonstats,
    required this.pokemon_v2_pokemonabilities,
    this.pokemon_v2_pokemonspecy,
    required this.pokemon_v2_pokemonmoves,
    required this.pokemon_v2_encounters,
    this.$__typename = 'pokemon_v2_pokemon',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk.fromJson(
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
    final l$pokemon_v2_encounters = json['pokemon_v2_encounters'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk(
      id: (l$id as int),
      name: (l$name as String),
      height: (l$height as int?),
      weight: (l$weight as int?),
      pokemon_v2_pokemontypes: (l$pokemon_v2_pokemontypes as List<dynamic>)
          .map((e) =>
              Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      pokemon_v2_pokemonstats: (l$pokemon_v2_pokemonstats as List<dynamic>)
          .map((e) =>
              Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      pokemon_v2_pokemonabilities: (l$pokemon_v2_pokemonabilities
              as List<dynamic>)
          .map((e) =>
              Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      pokemon_v2_pokemonspecy: l$pokemon_v2_pokemonspecy == null
          ? null
          : Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy
              .fromJson((l$pokemon_v2_pokemonspecy as Map<String, dynamic>)),
      pokemon_v2_pokemonmoves: (l$pokemon_v2_pokemonmoves as List<dynamic>)
          .map((e) =>
              Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      pokemon_v2_encounters: (l$pokemon_v2_encounters as List<dynamic>)
          .map((e) =>
              Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters
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
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes>
      pokemon_v2_pokemontypes;

  final List<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats>
      pokemon_v2_pokemonstats;

  final List<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities>
      pokemon_v2_pokemonabilities;

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy?
      pokemon_v2_pokemonspecy;

  final List<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves>
      pokemon_v2_pokemonmoves;

  final List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters>
      pokemon_v2_encounters;

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
    final l$pokemon_v2_encounters = pokemon_v2_encounters;
    _resultData['pokemon_v2_encounters'] =
        l$pokemon_v2_encounters.map((e) => e.toJson()).toList();
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
    final l$pokemon_v2_encounters = pokemon_v2_encounters;
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
      Object.hashAll(l$pokemon_v2_encounters.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk ||
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
    final l$pokemon_v2_encounters = pokemon_v2_encounters;
    final lOther$pokemon_v2_encounters = other.pokemon_v2_encounters;
    if (l$pokemon_v2_encounters.length != lOther$pokemon_v2_encounters.length) {
      return false;
    }
    for (int i = 0; i < l$pokemon_v2_encounters.length; i++) {
      final l$pokemon_v2_encounters$entry = l$pokemon_v2_encounters[i];
      final lOther$pokemon_v2_encounters$entry =
          lOther$pokemon_v2_encounters[i];
      if (l$pokemon_v2_encounters$entry != lOther$pokemon_v2_encounters$entry) {
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk>
      get copyWith => CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk<TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk instance,
    TRes Function(Query$PokemonDetail$pokemon_v2_pokemon_by_pk) then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk.stub(TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk;

  TRes call({
    int? id,
    String? name,
    int? height,
    int? weight,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes>?
        pokemon_v2_pokemontypes,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats>?
        pokemon_v2_pokemonstats,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities>?
        pokemon_v2_pokemonabilities,
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy?
        pokemon_v2_pokemonspecy,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves>?
        pokemon_v2_pokemonmoves,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters>?
        pokemon_v2_encounters,
    String? $__typename,
  });
  TRes pokemon_v2_pokemontypes(
      Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes> Function(
              Iterable<
                  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes<
                      Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes>>)
          _fn);
  TRes pokemon_v2_pokemonstats(
      Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats> Function(
              Iterable<
                  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats<
                      Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats>>)
          _fn);
  TRes pokemon_v2_pokemonabilities(
      Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities> Function(
              Iterable<
                  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities<
                      Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities>>)
          _fn);
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy<
      TRes> get pokemon_v2_pokemonspecy;
  TRes pokemon_v2_pokemonmoves(
      Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves> Function(
              Iterable<
                  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves<
                      Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves>>)
          _fn);
  TRes pokemon_v2_encounters(
      Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters> Function(
              Iterable<
                  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters<
                      Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters>>)
          _fn);
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk<TRes>
    implements CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk<TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk _instance;

  final TRes Function(Query$PokemonDetail$pokemon_v2_pokemon_by_pk) _then;

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
    Object? pokemon_v2_encounters = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PokemonDetail$pokemon_v2_pokemon_by_pk(
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
                Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes>),
        pokemon_v2_pokemonstats: pokemon_v2_pokemonstats == _undefined ||
                pokemon_v2_pokemonstats == null
            ? _instance.pokemon_v2_pokemonstats
            : (pokemon_v2_pokemonstats as List<
                Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats>),
        pokemon_v2_pokemonabilities: pokemon_v2_pokemonabilities ==
                    _undefined ||
                pokemon_v2_pokemonabilities == null
            ? _instance.pokemon_v2_pokemonabilities
            : (pokemon_v2_pokemonabilities as List<
                Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities>),
        pokemon_v2_pokemonspecy: pokemon_v2_pokemonspecy == _undefined
            ? _instance.pokemon_v2_pokemonspecy
            : (pokemon_v2_pokemonspecy
                as Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy?),
        pokemon_v2_pokemonmoves: pokemon_v2_pokemonmoves == _undefined ||
                pokemon_v2_pokemonmoves == null
            ? _instance.pokemon_v2_pokemonmoves
            : (pokemon_v2_pokemonmoves as List<
                Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves>),
        pokemon_v2_encounters: pokemon_v2_encounters == _undefined ||
                pokemon_v2_encounters == null
            ? _instance.pokemon_v2_encounters
            : (pokemon_v2_encounters as List<
                Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes pokemon_v2_pokemontypes(
          Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes<
                          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes>>)
              _fn) =>
      call(
          pokemon_v2_pokemontypes: _fn(_instance.pokemon_v2_pokemontypes.map((e) =>
              CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes(
                e,
                (i) => i,
              ))).toList());

  TRes pokemon_v2_pokemonstats(
          Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats<
                          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats>>)
              _fn) =>
      call(
          pokemon_v2_pokemonstats: _fn(_instance.pokemon_v2_pokemonstats.map((e) =>
              CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats(
                e,
                (i) => i,
              ))).toList());

  TRes pokemon_v2_pokemonabilities(
          Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities<
                          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities>>)
              _fn) =>
      call(
          pokemon_v2_pokemonabilities: _fn(_instance.pokemon_v2_pokemonabilities
              .map((e) =>
                  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy<
      TRes> get pokemon_v2_pokemonspecy {
    final local$pokemon_v2_pokemonspecy = _instance.pokemon_v2_pokemonspecy;
    return local$pokemon_v2_pokemonspecy == null
        ? CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy(
            local$pokemon_v2_pokemonspecy,
            (e) => call(pokemon_v2_pokemonspecy: e));
  }

  TRes pokemon_v2_pokemonmoves(
          Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves<
                          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves>>)
              _fn) =>
      call(
          pokemon_v2_pokemonmoves: _fn(_instance.pokemon_v2_pokemonmoves.map((e) =>
              CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves(
                e,
                (i) => i,
              ))).toList());

  TRes pokemon_v2_encounters(
          Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters<
                          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters>>)
              _fn) =>
      call(
          pokemon_v2_encounters: _fn(_instance.pokemon_v2_encounters.map((e) =>
              CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk<TRes>
    implements CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk<TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk(this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    int? height,
    int? weight,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes>?
        pokemon_v2_pokemontypes,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats>?
        pokemon_v2_pokemonstats,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities>?
        pokemon_v2_pokemonabilities,
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy?
        pokemon_v2_pokemonspecy,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves>?
        pokemon_v2_pokemonmoves,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters>?
        pokemon_v2_encounters,
    String? $__typename,
  }) =>
      _res;

  pokemon_v2_pokemontypes(_fn) => _res;

  pokemon_v2_pokemonstats(_fn) => _res;

  pokemon_v2_pokemonabilities(_fn) => _res;

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy<
          TRes>
      get pokemon_v2_pokemonspecy =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy
              .stub(_res);

  pokemon_v2_pokemonmoves(_fn) => _res;

  pokemon_v2_encounters(_fn) => _res;
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes({
    this.pokemon_v2_type,
    this.$__typename = 'pokemon_v2_pokemontype',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes.fromJson(
      Map<String, dynamic> json) {
    final l$pokemon_v2_type = json['pokemon_v2_type'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes(
      pokemon_v2_type: l$pokemon_v2_type == null
          ? null
          : Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type
              .fromJson((l$pokemon_v2_type as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type?
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
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes ||
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes;

  TRes call({
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type?
        pokemon_v2_type,
    String? $__typename,
  });
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type<
      TRes> get pokemon_v2_type;
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pokemon_v2_type = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes(
        pokemon_v2_type: pokemon_v2_type == _undefined
            ? _instance.pokemon_v2_type
            : (pokemon_v2_type
                as Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type<
      TRes> get pokemon_v2_type {
    final local$pokemon_v2_type = _instance.pokemon_v2_type;
    return local$pokemon_v2_type == null
        ? CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type(
            local$pokemon_v2_type, (e) => call(pokemon_v2_type: e));
  }
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes(
      this._res);

  TRes _res;

  call({
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type?
        pokemon_v2_type,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type<
          TRes>
      get pokemon_v2_type =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type
              .stub(_res);
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type({
    required this.name,
    this.$__typename = 'pokemon_v2_type',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type(
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
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type ||
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemontypes$pokemon_v2_type(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats({
    required this.base_stat,
    this.pokemon_v2_stat,
    this.$__typename = 'pokemon_v2_pokemonstat',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats.fromJson(
      Map<String, dynamic> json) {
    final l$base_stat = json['base_stat'];
    final l$pokemon_v2_stat = json['pokemon_v2_stat'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats(
      base_stat: (l$base_stat as int),
      pokemon_v2_stat: l$pokemon_v2_stat == null
          ? null
          : Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat
              .fromJson((l$pokemon_v2_stat as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int base_stat;

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat?
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
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats ||
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats;

  TRes call({
    int? base_stat,
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat?
        pokemon_v2_stat,
    String? $__typename,
  });
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat<
      TRes> get pokemon_v2_stat;
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? base_stat = _undefined,
    Object? pokemon_v2_stat = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats(
        base_stat: base_stat == _undefined || base_stat == null
            ? _instance.base_stat
            : (base_stat as int),
        pokemon_v2_stat: pokemon_v2_stat == _undefined
            ? _instance.pokemon_v2_stat
            : (pokemon_v2_stat
                as Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat<
      TRes> get pokemon_v2_stat {
    final local$pokemon_v2_stat = _instance.pokemon_v2_stat;
    return local$pokemon_v2_stat == null
        ? CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat(
            local$pokemon_v2_stat, (e) => call(pokemon_v2_stat: e));
  }
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats(
      this._res);

  TRes _res;

  call({
    int? base_stat,
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat?
        pokemon_v2_stat,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat<
          TRes>
      get pokemon_v2_stat =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat
              .stub(_res);
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat({
    required this.name,
    this.$__typename = 'pokemon_v2_stat',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat(
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
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat ||
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonstats$pokemon_v2_stat(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities({
    required this.is_hidden,
    this.pokemon_v2_ability,
    this.$__typename = 'pokemon_v2_pokemonability',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities.fromJson(
      Map<String, dynamic> json) {
    final l$is_hidden = json['is_hidden'];
    final l$pokemon_v2_ability = json['pokemon_v2_ability'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities(
      is_hidden: (l$is_hidden as bool),
      pokemon_v2_ability: l$pokemon_v2_ability == null
          ? null
          : Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability
              .fromJson((l$pokemon_v2_ability as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final bool is_hidden;

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability?
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
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities ||
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities;

  TRes call({
    bool? is_hidden,
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability?
        pokemon_v2_ability,
    String? $__typename,
  });
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability<
      TRes> get pokemon_v2_ability;
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? is_hidden = _undefined,
    Object? pokemon_v2_ability = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities(
        is_hidden: is_hidden == _undefined || is_hidden == null
            ? _instance.is_hidden
            : (is_hidden as bool),
        pokemon_v2_ability: pokemon_v2_ability == _undefined
            ? _instance.pokemon_v2_ability
            : (pokemon_v2_ability
                as Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability<
      TRes> get pokemon_v2_ability {
    final local$pokemon_v2_ability = _instance.pokemon_v2_ability;
    return local$pokemon_v2_ability == null
        ? CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability(
            local$pokemon_v2_ability, (e) => call(pokemon_v2_ability: e));
  }
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities(
      this._res);

  TRes _res;

  call({
    bool? is_hidden,
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability?
        pokemon_v2_ability,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability<
          TRes>
      get pokemon_v2_ability =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability
              .stub(_res);
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability({
    required this.name,
    required this.pokemon_v2_abilitynames,
    required this.pokemon_v2_abilityflavortexts,
    required this.pokemon_v2_abilityeffecttexts,
    this.$__typename = 'pokemon_v2_ability',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$pokemon_v2_abilitynames = json['pokemon_v2_abilitynames'];
    final l$pokemon_v2_abilityflavortexts =
        json['pokemon_v2_abilityflavortexts'];
    final l$pokemon_v2_abilityeffecttexts =
        json['pokemon_v2_abilityeffecttexts'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability(
      name: (l$name as String),
      pokemon_v2_abilitynames: (l$pokemon_v2_abilitynames as List<dynamic>)
          .map((e) =>
              Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilitynames
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      pokemon_v2_abilityflavortexts: (l$pokemon_v2_abilityflavortexts
              as List<dynamic>)
          .map((e) =>
              Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityflavortexts
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      pokemon_v2_abilityeffecttexts: (l$pokemon_v2_abilityeffecttexts
              as List<dynamic>)
          .map((e) =>
              Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final List<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilitynames>
      pokemon_v2_abilitynames;

  final List<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityflavortexts>
      pokemon_v2_abilityflavortexts;

  final List<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts>
      pokemon_v2_abilityeffecttexts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$pokemon_v2_abilitynames = pokemon_v2_abilitynames;
    _resultData['pokemon_v2_abilitynames'] =
        l$pokemon_v2_abilitynames.map((e) => e.toJson()).toList();
    final l$pokemon_v2_abilityflavortexts = pokemon_v2_abilityflavortexts;
    _resultData['pokemon_v2_abilityflavortexts'] =
        l$pokemon_v2_abilityflavortexts.map((e) => e.toJson()).toList();
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
    final l$pokemon_v2_abilitynames = pokemon_v2_abilitynames;
    final l$pokemon_v2_abilityflavortexts = pokemon_v2_abilityflavortexts;
    final l$pokemon_v2_abilityeffecttexts = pokemon_v2_abilityeffecttexts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      Object.hashAll(l$pokemon_v2_abilitynames.map((v) => v)),
      Object.hashAll(l$pokemon_v2_abilityflavortexts.map((v) => v)),
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
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$pokemon_v2_abilitynames = pokemon_v2_abilitynames;
    final lOther$pokemon_v2_abilitynames = other.pokemon_v2_abilitynames;
    if (l$pokemon_v2_abilitynames.length !=
        lOther$pokemon_v2_abilitynames.length) {
      return false;
    }
    for (int i = 0; i < l$pokemon_v2_abilitynames.length; i++) {
      final l$pokemon_v2_abilitynames$entry = l$pokemon_v2_abilitynames[i];
      final lOther$pokemon_v2_abilitynames$entry =
          lOther$pokemon_v2_abilitynames[i];
      if (l$pokemon_v2_abilitynames$entry !=
          lOther$pokemon_v2_abilitynames$entry) {
        return false;
      }
    }
    final l$pokemon_v2_abilityflavortexts = pokemon_v2_abilityflavortexts;
    final lOther$pokemon_v2_abilityflavortexts =
        other.pokemon_v2_abilityflavortexts;
    if (l$pokemon_v2_abilityflavortexts.length !=
        lOther$pokemon_v2_abilityflavortexts.length) {
      return false;
    }
    for (int i = 0; i < l$pokemon_v2_abilityflavortexts.length; i++) {
      final l$pokemon_v2_abilityflavortexts$entry =
          l$pokemon_v2_abilityflavortexts[i];
      final lOther$pokemon_v2_abilityflavortexts$entry =
          lOther$pokemon_v2_abilityflavortexts[i];
      if (l$pokemon_v2_abilityflavortexts$entry !=
          lOther$pokemon_v2_abilityflavortexts$entry) {
        return false;
      }
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability;

  TRes call({
    String? name,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilitynames>?
        pokemon_v2_abilitynames,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityflavortexts>?
        pokemon_v2_abilityflavortexts,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts>?
        pokemon_v2_abilityeffecttexts,
    String? $__typename,
  });
  TRes pokemon_v2_abilitynames(
      Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilitynames> Function(
              Iterable<
                  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilitynames<
                      Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilitynames>>)
          _fn);
  TRes pokemon_v2_abilityflavortexts(
      Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityflavortexts> Function(
              Iterable<
                  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityflavortexts<
                      Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityflavortexts>>)
          _fn);
  TRes pokemon_v2_abilityeffecttexts(
      Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts> Function(
              Iterable<
                  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts<
                      Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts>>)
          _fn);
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? pokemon_v2_abilitynames = _undefined,
    Object? pokemon_v2_abilityflavortexts = _undefined,
    Object? pokemon_v2_abilityeffecttexts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        pokemon_v2_abilitynames: pokemon_v2_abilitynames == _undefined ||
                pokemon_v2_abilitynames == null
            ? _instance.pokemon_v2_abilitynames
            : (pokemon_v2_abilitynames as List<
                Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilitynames>),
        pokemon_v2_abilityflavortexts: pokemon_v2_abilityflavortexts ==
                    _undefined ||
                pokemon_v2_abilityflavortexts == null
            ? _instance.pokemon_v2_abilityflavortexts
            : (pokemon_v2_abilityflavortexts as List<
                Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityflavortexts>),
        pokemon_v2_abilityeffecttexts: pokemon_v2_abilityeffecttexts ==
                    _undefined ||
                pokemon_v2_abilityeffecttexts == null
            ? _instance.pokemon_v2_abilityeffecttexts
            : (pokemon_v2_abilityeffecttexts as List<
                Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes pokemon_v2_abilitynames(
          Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilitynames> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilitynames<
                          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilitynames>>)
              _fn) =>
      call(
          pokemon_v2_abilitynames: _fn(_instance.pokemon_v2_abilitynames.map((e) =>
              CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilitynames(
                e,
                (i) => i,
              ))).toList());

  TRes pokemon_v2_abilityflavortexts(
          Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityflavortexts> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityflavortexts<
                          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityflavortexts>>)
              _fn) =>
      call(
          pokemon_v2_abilityflavortexts: _fn(
              _instance.pokemon_v2_abilityflavortexts.map((e) =>
                  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityflavortexts(
                    e,
                    (i) => i,
                  ))).toList());

  TRes pokemon_v2_abilityeffecttexts(
          Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts<
                          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts>>)
              _fn) =>
      call(
          pokemon_v2_abilityeffecttexts: _fn(
              _instance.pokemon_v2_abilityeffecttexts.map((e) =>
                  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability(
      this._res);

  TRes _res;

  call({
    String? name,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilitynames>?
        pokemon_v2_abilitynames,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityflavortexts>?
        pokemon_v2_abilityflavortexts,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts>?
        pokemon_v2_abilityeffecttexts,
    String? $__typename,
  }) =>
      _res;

  pokemon_v2_abilitynames(_fn) => _res;

  pokemon_v2_abilityflavortexts(_fn) => _res;

  pokemon_v2_abilityeffecttexts(_fn) => _res;
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilitynames {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilitynames({
    required this.name,
    this.$__typename = 'pokemon_v2_abilityname',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilitynames.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilitynames(
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
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilitynames ||
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilitynames
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilitynames {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilitynames<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilitynames>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilitynames(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilitynames<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilitynames(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilitynames
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilitynames)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilitynames;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilitynames.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilitynames;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilitynames<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilitynames<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilitynames(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilitynames
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilitynames)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilitynames(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilitynames<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilitynames<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilitynames(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityflavortexts {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityflavortexts({
    required this.flavor_text,
    this.$__typename = 'pokemon_v2_abilityflavortext',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityflavortexts.fromJson(
      Map<String, dynamic> json) {
    final l$flavor_text = json['flavor_text'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityflavortexts(
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
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityflavortexts ||
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityflavortexts
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityflavortexts {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityflavortexts<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityflavortexts>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityflavortexts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityflavortexts<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityflavortexts(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityflavortexts
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityflavortexts)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityflavortexts;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityflavortexts.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityflavortexts;

  TRes call({
    String? flavor_text,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityflavortexts<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityflavortexts<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityflavortexts(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityflavortexts
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityflavortexts)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? flavor_text = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityflavortexts(
        flavor_text: flavor_text == _undefined || flavor_text == null
            ? _instance.flavor_text
            : (flavor_text as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityflavortexts<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityflavortexts<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityflavortexts(
      this._res);

  TRes _res;

  call({
    String? flavor_text,
    String? $__typename,
  }) =>
      _res;
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts({
    required this.short_effect,
    this.$__typename = 'pokemon_v2_abilityeffecttext',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts.fromJson(
      Map<String, dynamic> json) {
    final l$short_effect = json['short_effect'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts(
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
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts ||
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts;

  TRes call({
    String? short_effect,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? short_effect = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts(
        short_effect: short_effect == _undefined || short_effect == null
            ? _instance.short_effect
            : (short_effect as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonabilities$pokemon_v2_ability$pokemon_v2_abilityeffecttexts(
      this._res);

  TRes _res;

  call({
    String? short_effect,
    String? $__typename,
  }) =>
      _res;
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy({
    required this.id,
    required this.name,
    this.gender_rate,
    required this.is_legendary,
    required this.is_mythical,
    this.generation_id,
    this.pokemon_v2_generation,
    required this.pokemon_v2_pokemonegggroups,
    required this.pokemon_v2_pokemonspeciesflavortexts,
    this.pokemon_v2_evolutionchain,
    required this.pokemon_v2_pokemons,
    this.$__typename = 'pokemon_v2_pokemonspecies',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$gender_rate = json['gender_rate'];
    final l$is_legendary = json['is_legendary'];
    final l$is_mythical = json['is_mythical'];
    final l$generation_id = json['generation_id'];
    final l$pokemon_v2_generation = json['pokemon_v2_generation'];
    final l$pokemon_v2_pokemonegggroups = json['pokemon_v2_pokemonegggroups'];
    final l$pokemon_v2_pokemonspeciesflavortexts =
        json['pokemon_v2_pokemonspeciesflavortexts'];
    final l$pokemon_v2_evolutionchain = json['pokemon_v2_evolutionchain'];
    final l$pokemon_v2_pokemons = json['pokemon_v2_pokemons'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy(
      id: (l$id as int),
      name: (l$name as String),
      gender_rate: (l$gender_rate as int?),
      is_legendary: (l$is_legendary as bool),
      is_mythical: (l$is_mythical as bool),
      generation_id: (l$generation_id as int?),
      pokemon_v2_generation: l$pokemon_v2_generation == null
          ? null
          : Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation
              .fromJson((l$pokemon_v2_generation as Map<String, dynamic>)),
      pokemon_v2_pokemonegggroups: (l$pokemon_v2_pokemonegggroups
              as List<dynamic>)
          .map((e) =>
              Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      pokemon_v2_pokemonspeciesflavortexts: (l$pokemon_v2_pokemonspeciesflavortexts
              as List<dynamic>)
          .map((e) =>
              Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      pokemon_v2_evolutionchain: l$pokemon_v2_evolutionchain == null
          ? null
          : Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain
              .fromJson((l$pokemon_v2_evolutionchain as Map<String, dynamic>)),
      pokemon_v2_pokemons: (l$pokemon_v2_pokemons as List<dynamic>)
          .map((e) =>
              Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final int? gender_rate;

  final bool is_legendary;

  final bool is_mythical;

  final int? generation_id;

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation?
      pokemon_v2_generation;

  final List<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups>
      pokemon_v2_pokemonegggroups;

  final List<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts>
      pokemon_v2_pokemonspeciesflavortexts;

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain?
      pokemon_v2_evolutionchain;

  final List<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons>
      pokemon_v2_pokemons;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$gender_rate = gender_rate;
    _resultData['gender_rate'] = l$gender_rate;
    final l$is_legendary = is_legendary;
    _resultData['is_legendary'] = l$is_legendary;
    final l$is_mythical = is_mythical;
    _resultData['is_mythical'] = l$is_mythical;
    final l$generation_id = generation_id;
    _resultData['generation_id'] = l$generation_id;
    final l$pokemon_v2_generation = pokemon_v2_generation;
    _resultData['pokemon_v2_generation'] = l$pokemon_v2_generation?.toJson();
    final l$pokemon_v2_pokemonegggroups = pokemon_v2_pokemonegggroups;
    _resultData['pokemon_v2_pokemonegggroups'] =
        l$pokemon_v2_pokemonegggroups.map((e) => e.toJson()).toList();
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
    final l$id = id;
    final l$name = name;
    final l$gender_rate = gender_rate;
    final l$is_legendary = is_legendary;
    final l$is_mythical = is_mythical;
    final l$generation_id = generation_id;
    final l$pokemon_v2_generation = pokemon_v2_generation;
    final l$pokemon_v2_pokemonegggroups = pokemon_v2_pokemonegggroups;
    final l$pokemon_v2_pokemonspeciesflavortexts =
        pokemon_v2_pokemonspeciesflavortexts;
    final l$pokemon_v2_evolutionchain = pokemon_v2_evolutionchain;
    final l$pokemon_v2_pokemons = pokemon_v2_pokemons;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$gender_rate,
      l$is_legendary,
      l$is_mythical,
      l$generation_id,
      l$pokemon_v2_generation,
      Object.hashAll(l$pokemon_v2_pokemonegggroups.map((v) => v)),
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
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy ||
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
    final l$gender_rate = gender_rate;
    final lOther$gender_rate = other.gender_rate;
    if (l$gender_rate != lOther$gender_rate) {
      return false;
    }
    final l$is_legendary = is_legendary;
    final lOther$is_legendary = other.is_legendary;
    if (l$is_legendary != lOther$is_legendary) {
      return false;
    }
    final l$is_mythical = is_mythical;
    final lOther$is_mythical = other.is_mythical;
    if (l$is_mythical != lOther$is_mythical) {
      return false;
    }
    final l$generation_id = generation_id;
    final lOther$generation_id = other.generation_id;
    if (l$generation_id != lOther$generation_id) {
      return false;
    }
    final l$pokemon_v2_generation = pokemon_v2_generation;
    final lOther$pokemon_v2_generation = other.pokemon_v2_generation;
    if (l$pokemon_v2_generation != lOther$pokemon_v2_generation) {
      return false;
    }
    final l$pokemon_v2_pokemonegggroups = pokemon_v2_pokemonegggroups;
    final lOther$pokemon_v2_pokemonegggroups =
        other.pokemon_v2_pokemonegggroups;
    if (l$pokemon_v2_pokemonegggroups.length !=
        lOther$pokemon_v2_pokemonegggroups.length) {
      return false;
    }
    for (int i = 0; i < l$pokemon_v2_pokemonegggroups.length; i++) {
      final l$pokemon_v2_pokemonegggroups$entry =
          l$pokemon_v2_pokemonegggroups[i];
      final lOther$pokemon_v2_pokemonegggroups$entry =
          lOther$pokemon_v2_pokemonegggroups[i];
      if (l$pokemon_v2_pokemonegggroups$entry !=
          lOther$pokemon_v2_pokemonegggroups$entry) {
        return false;
      }
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy;

  TRes call({
    int? id,
    String? name,
    int? gender_rate,
    bool? is_legendary,
    bool? is_mythical,
    int? generation_id,
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation?
        pokemon_v2_generation,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups>?
        pokemon_v2_pokemonegggroups,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts>?
        pokemon_v2_pokemonspeciesflavortexts,
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain?
        pokemon_v2_evolutionchain,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons>?
        pokemon_v2_pokemons,
    String? $__typename,
  });
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation<
      TRes> get pokemon_v2_generation;
  TRes pokemon_v2_pokemonegggroups(
      Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups> Function(
              Iterable<
                  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups<
                      Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups>>)
          _fn);
  TRes pokemon_v2_pokemonspeciesflavortexts(
      Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts> Function(
              Iterable<
                  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts<
                      Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts>>)
          _fn);
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain<
      TRes> get pokemon_v2_evolutionchain;
  TRes pokemon_v2_pokemons(
      Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons> Function(
              Iterable<
                  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons<
                      Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons>>)
          _fn);
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? gender_rate = _undefined,
    Object? is_legendary = _undefined,
    Object? is_mythical = _undefined,
    Object? generation_id = _undefined,
    Object? pokemon_v2_generation = _undefined,
    Object? pokemon_v2_pokemonegggroups = _undefined,
    Object? pokemon_v2_pokemonspeciesflavortexts = _undefined,
    Object? pokemon_v2_evolutionchain = _undefined,
    Object? pokemon_v2_pokemons = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        gender_rate: gender_rate == _undefined
            ? _instance.gender_rate
            : (gender_rate as int?),
        is_legendary: is_legendary == _undefined || is_legendary == null
            ? _instance.is_legendary
            : (is_legendary as bool),
        is_mythical: is_mythical == _undefined || is_mythical == null
            ? _instance.is_mythical
            : (is_mythical as bool),
        generation_id: generation_id == _undefined
            ? _instance.generation_id
            : (generation_id as int?),
        pokemon_v2_generation: pokemon_v2_generation == _undefined
            ? _instance.pokemon_v2_generation
            : (pokemon_v2_generation
                as Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation?),
        pokemon_v2_pokemonegggroups: pokemon_v2_pokemonegggroups ==
                    _undefined ||
                pokemon_v2_pokemonegggroups == null
            ? _instance.pokemon_v2_pokemonegggroups
            : (pokemon_v2_pokemonegggroups as List<
                Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups>),
        pokemon_v2_pokemonspeciesflavortexts:
            pokemon_v2_pokemonspeciesflavortexts == _undefined ||
                    pokemon_v2_pokemonspeciesflavortexts == null
                ? _instance.pokemon_v2_pokemonspeciesflavortexts
                : (pokemon_v2_pokemonspeciesflavortexts as List<
                    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts>),
        pokemon_v2_evolutionchain: pokemon_v2_evolutionchain == _undefined
            ? _instance.pokemon_v2_evolutionchain
            : (pokemon_v2_evolutionchain
                as Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain?),
        pokemon_v2_pokemons: pokemon_v2_pokemons == _undefined ||
                pokemon_v2_pokemons == null
            ? _instance.pokemon_v2_pokemons
            : (pokemon_v2_pokemons as List<
                Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation<
      TRes> get pokemon_v2_generation {
    final local$pokemon_v2_generation = _instance.pokemon_v2_generation;
    return local$pokemon_v2_generation == null
        ? CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation(
            local$pokemon_v2_generation, (e) => call(pokemon_v2_generation: e));
  }

  TRes pokemon_v2_pokemonegggroups(
          Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups<
                          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups>>)
              _fn) =>
      call(
          pokemon_v2_pokemonegggroups: _fn(_instance.pokemon_v2_pokemonegggroups
              .map((e) =>
                  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups(
                    e,
                    (i) => i,
                  ))).toList());

  TRes pokemon_v2_pokemonspeciesflavortexts(
          Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts<
                          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts>>)
              _fn) =>
      call(
          pokemon_v2_pokemonspeciesflavortexts: _fn(
              _instance.pokemon_v2_pokemonspeciesflavortexts.map((e) =>
                  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain<
      TRes> get pokemon_v2_evolutionchain {
    final local$pokemon_v2_evolutionchain = _instance.pokemon_v2_evolutionchain;
    return local$pokemon_v2_evolutionchain == null
        ? CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain(
            local$pokemon_v2_evolutionchain,
            (e) => call(pokemon_v2_evolutionchain: e));
  }

  TRes pokemon_v2_pokemons(
          Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons<
                          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons>>)
              _fn) =>
      call(
          pokemon_v2_pokemons: _fn(_instance.pokemon_v2_pokemons.map((e) =>
              CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    int? gender_rate,
    bool? is_legendary,
    bool? is_mythical,
    int? generation_id,
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation?
        pokemon_v2_generation,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups>?
        pokemon_v2_pokemonegggroups,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts>?
        pokemon_v2_pokemonspeciesflavortexts,
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain?
        pokemon_v2_evolutionchain,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons>?
        pokemon_v2_pokemons,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation<
          TRes>
      get pokemon_v2_generation =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation
              .stub(_res);

  pokemon_v2_pokemonegggroups(_fn) => _res;

  pokemon_v2_pokemonspeciesflavortexts(_fn) => _res;

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain<
          TRes>
      get pokemon_v2_evolutionchain =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain
              .stub(_res);

  pokemon_v2_pokemons(_fn) => _res;
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation({
    this.pokemon_v2_region,
    this.$__typename = 'pokemon_v2_generation',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation.fromJson(
      Map<String, dynamic> json) {
    final l$pokemon_v2_region = json['pokemon_v2_region'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation(
      pokemon_v2_region: l$pokemon_v2_region == null
          ? null
          : Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation$pokemon_v2_region
              .fromJson((l$pokemon_v2_region as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation$pokemon_v2_region?
      pokemon_v2_region;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pokemon_v2_region = pokemon_v2_region;
    _resultData['pokemon_v2_region'] = l$pokemon_v2_region?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pokemon_v2_region = pokemon_v2_region;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pokemon_v2_region,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pokemon_v2_region = pokemon_v2_region;
    final lOther$pokemon_v2_region = other.pokemon_v2_region;
    if (l$pokemon_v2_region != lOther$pokemon_v2_region) {
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation;

  TRes call({
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation$pokemon_v2_region?
        pokemon_v2_region,
    String? $__typename,
  });
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation$pokemon_v2_region<
      TRes> get pokemon_v2_region;
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pokemon_v2_region = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation(
        pokemon_v2_region: pokemon_v2_region == _undefined
            ? _instance.pokemon_v2_region
            : (pokemon_v2_region
                as Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation$pokemon_v2_region?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation$pokemon_v2_region<
      TRes> get pokemon_v2_region {
    final local$pokemon_v2_region = _instance.pokemon_v2_region;
    return local$pokemon_v2_region == null
        ? CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation$pokemon_v2_region
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation$pokemon_v2_region(
            local$pokemon_v2_region, (e) => call(pokemon_v2_region: e));
  }
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation(
      this._res);

  TRes _res;

  call({
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation$pokemon_v2_region?
        pokemon_v2_region,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation$pokemon_v2_region<
          TRes>
      get pokemon_v2_region =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation$pokemon_v2_region
              .stub(_res);
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation$pokemon_v2_region {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation$pokemon_v2_region({
    required this.name,
    this.$__typename = 'pokemon_v2_region',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation$pokemon_v2_region.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation$pokemon_v2_region(
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
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation$pokemon_v2_region ||
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation$pokemon_v2_region
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation$pokemon_v2_region {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation$pokemon_v2_region<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation$pokemon_v2_region>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation$pokemon_v2_region(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation$pokemon_v2_region<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation$pokemon_v2_region(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation$pokemon_v2_region
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation$pokemon_v2_region)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation$pokemon_v2_region;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation$pokemon_v2_region.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation$pokemon_v2_region;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation$pokemon_v2_region<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation$pokemon_v2_region<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation$pokemon_v2_region(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation$pokemon_v2_region
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation$pokemon_v2_region)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation$pokemon_v2_region(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation$pokemon_v2_region<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation$pokemon_v2_region<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_generation$pokemon_v2_region(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups({
    this.pokemon_v2_egggroup,
    this.$__typename = 'pokemon_v2_pokemonegggroup',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups.fromJson(
      Map<String, dynamic> json) {
    final l$pokemon_v2_egggroup = json['pokemon_v2_egggroup'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups(
      pokemon_v2_egggroup: l$pokemon_v2_egggroup == null
          ? null
          : Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups$pokemon_v2_egggroup
              .fromJson((l$pokemon_v2_egggroup as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups$pokemon_v2_egggroup?
      pokemon_v2_egggroup;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pokemon_v2_egggroup = pokemon_v2_egggroup;
    _resultData['pokemon_v2_egggroup'] = l$pokemon_v2_egggroup?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pokemon_v2_egggroup = pokemon_v2_egggroup;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pokemon_v2_egggroup,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pokemon_v2_egggroup = pokemon_v2_egggroup;
    final lOther$pokemon_v2_egggroup = other.pokemon_v2_egggroup;
    if (l$pokemon_v2_egggroup != lOther$pokemon_v2_egggroup) {
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups;

  TRes call({
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups$pokemon_v2_egggroup?
        pokemon_v2_egggroup,
    String? $__typename,
  });
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups$pokemon_v2_egggroup<
      TRes> get pokemon_v2_egggroup;
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pokemon_v2_egggroup = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups(
        pokemon_v2_egggroup: pokemon_v2_egggroup == _undefined
            ? _instance.pokemon_v2_egggroup
            : (pokemon_v2_egggroup
                as Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups$pokemon_v2_egggroup?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups$pokemon_v2_egggroup<
      TRes> get pokemon_v2_egggroup {
    final local$pokemon_v2_egggroup = _instance.pokemon_v2_egggroup;
    return local$pokemon_v2_egggroup == null
        ? CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups$pokemon_v2_egggroup
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups$pokemon_v2_egggroup(
            local$pokemon_v2_egggroup, (e) => call(pokemon_v2_egggroup: e));
  }
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups(
      this._res);

  TRes _res;

  call({
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups$pokemon_v2_egggroup?
        pokemon_v2_egggroup,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups$pokemon_v2_egggroup<
          TRes>
      get pokemon_v2_egggroup =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups$pokemon_v2_egggroup
              .stub(_res);
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups$pokemon_v2_egggroup {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups$pokemon_v2_egggroup({
    required this.name,
    this.$__typename = 'pokemon_v2_egggroup',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups$pokemon_v2_egggroup.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups$pokemon_v2_egggroup(
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
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups$pokemon_v2_egggroup ||
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups$pokemon_v2_egggroup
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups$pokemon_v2_egggroup {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups$pokemon_v2_egggroup<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups$pokemon_v2_egggroup>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups$pokemon_v2_egggroup(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups$pokemon_v2_egggroup<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups$pokemon_v2_egggroup(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups$pokemon_v2_egggroup
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups$pokemon_v2_egggroup)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups$pokemon_v2_egggroup;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups$pokemon_v2_egggroup.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups$pokemon_v2_egggroup;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups$pokemon_v2_egggroup<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups$pokemon_v2_egggroup<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups$pokemon_v2_egggroup(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups$pokemon_v2_egggroup
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups$pokemon_v2_egggroup)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups$pokemon_v2_egggroup(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups$pokemon_v2_egggroup<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups$pokemon_v2_egggroup<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonegggroups$pokemon_v2_egggroup(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts({
    required this.flavor_text,
    this.$__typename = 'pokemon_v2_pokemonspeciesflavortext',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts.fromJson(
      Map<String, dynamic> json) {
    final l$flavor_text = json['flavor_text'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts(
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
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts ||
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts;

  TRes call({
    String? flavor_text,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? flavor_text = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts(
        flavor_text: flavor_text == _undefined || flavor_text == null
            ? _instance.flavor_text
            : (flavor_text as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemonspeciesflavortexts(
      this._res);

  TRes _res;

  call({
    String? flavor_text,
    String? $__typename,
  }) =>
      _res;
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain({
    required this.pokemon_v2_pokemonspecies,
    this.$__typename = 'pokemon_v2_evolutionchain',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain.fromJson(
      Map<String, dynamic> json) {
    final l$pokemon_v2_pokemonspecies = json['pokemon_v2_pokemonspecies'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain(
      pokemon_v2_pokemonspecies: (l$pokemon_v2_pokemonspecies as List<dynamic>)
          .map((e) =>
              Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies>
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
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain ||
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain;

  TRes call({
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies>?
        pokemon_v2_pokemonspecies,
    String? $__typename,
  });
  TRes pokemon_v2_pokemonspecies(
      Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies> Function(
              Iterable<
                  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies<
                      Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies>>)
          _fn);
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pokemon_v2_pokemonspecies = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain(
        pokemon_v2_pokemonspecies: pokemon_v2_pokemonspecies == _undefined ||
                pokemon_v2_pokemonspecies == null
            ? _instance.pokemon_v2_pokemonspecies
            : (pokemon_v2_pokemonspecies as List<
                Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes pokemon_v2_pokemonspecies(
          Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies<
                          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies>>)
              _fn) =>
      call(
          pokemon_v2_pokemonspecies: _fn(_instance.pokemon_v2_pokemonspecies
              .map((e) =>
                  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain(
      this._res);

  TRes _res;

  call({
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies>?
        pokemon_v2_pokemonspecies,
    String? $__typename,
  }) =>
      _res;

  pokemon_v2_pokemonspecies(_fn) => _res;
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies({
    required this.id,
    required this.name,
    this.evolves_from_species_id,
    required this.pokemon_v2_pokemonevolutions,
    required this.pokemon_v2_pokemons,
    this.$__typename = 'pokemon_v2_pokemonspecies',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$evolves_from_species_id = json['evolves_from_species_id'];
    final l$pokemon_v2_pokemonevolutions = json['pokemon_v2_pokemonevolutions'];
    final l$pokemon_v2_pokemons = json['pokemon_v2_pokemons'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies(
      id: (l$id as int),
      name: (l$name as String),
      evolves_from_species_id: (l$evolves_from_species_id as int?),
      pokemon_v2_pokemonevolutions: (l$pokemon_v2_pokemonevolutions
              as List<dynamic>)
          .map((e) =>
              Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      pokemon_v2_pokemons: (l$pokemon_v2_pokemons as List<dynamic>)
          .map((e) =>
              Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final int? evolves_from_species_id;

  final List<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions>
      pokemon_v2_pokemonevolutions;

  final List<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons>
      pokemon_v2_pokemons;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$evolves_from_species_id = evolves_from_species_id;
    _resultData['evolves_from_species_id'] = l$evolves_from_species_id;
    final l$pokemon_v2_pokemonevolutions = pokemon_v2_pokemonevolutions;
    _resultData['pokemon_v2_pokemonevolutions'] =
        l$pokemon_v2_pokemonevolutions.map((e) => e.toJson()).toList();
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
    final l$evolves_from_species_id = evolves_from_species_id;
    final l$pokemon_v2_pokemonevolutions = pokemon_v2_pokemonevolutions;
    final l$pokemon_v2_pokemons = pokemon_v2_pokemons;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      l$evolves_from_species_id,
      Object.hashAll(l$pokemon_v2_pokemonevolutions.map((v) => v)),
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
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies ||
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
    final l$evolves_from_species_id = evolves_from_species_id;
    final lOther$evolves_from_species_id = other.evolves_from_species_id;
    if (l$evolves_from_species_id != lOther$evolves_from_species_id) {
      return false;
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies;

  TRes call({
    int? id,
    String? name,
    int? evolves_from_species_id,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions>?
        pokemon_v2_pokemonevolutions,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons>?
        pokemon_v2_pokemons,
    String? $__typename,
  });
  TRes pokemon_v2_pokemonevolutions(
      Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions> Function(
              Iterable<
                  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions<
                      Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions>>)
          _fn);
  TRes pokemon_v2_pokemons(
      Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons> Function(
              Iterable<
                  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons<
                      Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons>>)
          _fn);
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? evolves_from_species_id = _undefined,
    Object? pokemon_v2_pokemonevolutions = _undefined,
    Object? pokemon_v2_pokemons = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        evolves_from_species_id: evolves_from_species_id == _undefined
            ? _instance.evolves_from_species_id
            : (evolves_from_species_id as int?),
        pokemon_v2_pokemonevolutions: pokemon_v2_pokemonevolutions ==
                    _undefined ||
                pokemon_v2_pokemonevolutions == null
            ? _instance.pokemon_v2_pokemonevolutions
            : (pokemon_v2_pokemonevolutions as List<
                Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions>),
        pokemon_v2_pokemons: pokemon_v2_pokemons == _undefined ||
                pokemon_v2_pokemons == null
            ? _instance.pokemon_v2_pokemons
            : (pokemon_v2_pokemons as List<
                Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes pokemon_v2_pokemonevolutions(
          Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions<
                          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions>>)
              _fn) =>
      call(
          pokemon_v2_pokemonevolutions: _fn(
              _instance.pokemon_v2_pokemonevolutions.map((e) =>
                  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions(
                    e,
                    (i) => i,
                  ))).toList());

  TRes pokemon_v2_pokemons(
          Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons<
                          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons>>)
              _fn) =>
      call(
          pokemon_v2_pokemons: _fn(_instance.pokemon_v2_pokemons.map((e) =>
              CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    int? evolves_from_species_id,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions>?
        pokemon_v2_pokemonevolutions,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons>?
        pokemon_v2_pokemons,
    String? $__typename,
  }) =>
      _res;

  pokemon_v2_pokemonevolutions(_fn) => _res;

  pokemon_v2_pokemons(_fn) => _res;
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions({
    this.min_level,
    this.min_happiness,
    this.min_beauty,
    this.min_affection,
    required this.needs_overworld_rain,
    required this.turn_upside_down,
    this.time_of_day,
    this.gender_id,
    this.relative_physical_stats,
    this.pokemon_v2_evolutiontrigger,
    this.pokemon_v2_item,
    this.pokemon_v2_move,
    this.pokemon_v2_location,
    this.pokemon_v2_type,
    this.$__typename = 'pokemon_v2_pokemonevolution',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions.fromJson(
      Map<String, dynamic> json) {
    final l$min_level = json['min_level'];
    final l$min_happiness = json['min_happiness'];
    final l$min_beauty = json['min_beauty'];
    final l$min_affection = json['min_affection'];
    final l$needs_overworld_rain = json['needs_overworld_rain'];
    final l$turn_upside_down = json['turn_upside_down'];
    final l$time_of_day = json['time_of_day'];
    final l$gender_id = json['gender_id'];
    final l$relative_physical_stats = json['relative_physical_stats'];
    final l$pokemon_v2_evolutiontrigger = json['pokemon_v2_evolutiontrigger'];
    final l$pokemon_v2_item = json['pokemon_v2_item'];
    final l$pokemon_v2_move = json['pokemon_v2_move'];
    final l$pokemon_v2_location = json['pokemon_v2_location'];
    final l$pokemon_v2_type = json['pokemon_v2_type'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions(
      min_level: (l$min_level as int?),
      min_happiness: (l$min_happiness as int?),
      min_beauty: (l$min_beauty as int?),
      min_affection: (l$min_affection as int?),
      needs_overworld_rain: (l$needs_overworld_rain as bool),
      turn_upside_down: (l$turn_upside_down as bool),
      time_of_day: (l$time_of_day as String?),
      gender_id: (l$gender_id as int?),
      relative_physical_stats: (l$relative_physical_stats as int?),
      pokemon_v2_evolutiontrigger: l$pokemon_v2_evolutiontrigger == null
          ? null
          : Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger
              .fromJson(
                  (l$pokemon_v2_evolutiontrigger as Map<String, dynamic>)),
      pokemon_v2_item: l$pokemon_v2_item == null
          ? null
          : Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item
              .fromJson((l$pokemon_v2_item as Map<String, dynamic>)),
      pokemon_v2_move: l$pokemon_v2_move == null
          ? null
          : Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move
              .fromJson((l$pokemon_v2_move as Map<String, dynamic>)),
      pokemon_v2_location: l$pokemon_v2_location == null
          ? null
          : Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location
              .fromJson((l$pokemon_v2_location as Map<String, dynamic>)),
      pokemon_v2_type: l$pokemon_v2_type == null
          ? null
          : Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type
              .fromJson((l$pokemon_v2_type as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int? min_level;

  final int? min_happiness;

  final int? min_beauty;

  final int? min_affection;

  final bool needs_overworld_rain;

  final bool turn_upside_down;

  final String? time_of_day;

  final int? gender_id;

  final int? relative_physical_stats;

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger?
      pokemon_v2_evolutiontrigger;

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item?
      pokemon_v2_item;

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move?
      pokemon_v2_move;

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location?
      pokemon_v2_location;

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type?
      pokemon_v2_type;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$min_level = min_level;
    _resultData['min_level'] = l$min_level;
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
    final l$time_of_day = time_of_day;
    _resultData['time_of_day'] = l$time_of_day;
    final l$gender_id = gender_id;
    _resultData['gender_id'] = l$gender_id;
    final l$relative_physical_stats = relative_physical_stats;
    _resultData['relative_physical_stats'] = l$relative_physical_stats;
    final l$pokemon_v2_evolutiontrigger = pokemon_v2_evolutiontrigger;
    _resultData['pokemon_v2_evolutiontrigger'] =
        l$pokemon_v2_evolutiontrigger?.toJson();
    final l$pokemon_v2_item = pokemon_v2_item;
    _resultData['pokemon_v2_item'] = l$pokemon_v2_item?.toJson();
    final l$pokemon_v2_move = pokemon_v2_move;
    _resultData['pokemon_v2_move'] = l$pokemon_v2_move?.toJson();
    final l$pokemon_v2_location = pokemon_v2_location;
    _resultData['pokemon_v2_location'] = l$pokemon_v2_location?.toJson();
    final l$pokemon_v2_type = pokemon_v2_type;
    _resultData['pokemon_v2_type'] = l$pokemon_v2_type?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$min_level = min_level;
    final l$min_happiness = min_happiness;
    final l$min_beauty = min_beauty;
    final l$min_affection = min_affection;
    final l$needs_overworld_rain = needs_overworld_rain;
    final l$turn_upside_down = turn_upside_down;
    final l$time_of_day = time_of_day;
    final l$gender_id = gender_id;
    final l$relative_physical_stats = relative_physical_stats;
    final l$pokemon_v2_evolutiontrigger = pokemon_v2_evolutiontrigger;
    final l$pokemon_v2_item = pokemon_v2_item;
    final l$pokemon_v2_move = pokemon_v2_move;
    final l$pokemon_v2_location = pokemon_v2_location;
    final l$pokemon_v2_type = pokemon_v2_type;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$min_level,
      l$min_happiness,
      l$min_beauty,
      l$min_affection,
      l$needs_overworld_rain,
      l$turn_upside_down,
      l$time_of_day,
      l$gender_id,
      l$relative_physical_stats,
      l$pokemon_v2_evolutiontrigger,
      l$pokemon_v2_item,
      l$pokemon_v2_move,
      l$pokemon_v2_location,
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
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$min_level = min_level;
    final lOther$min_level = other.min_level;
    if (l$min_level != lOther$min_level) {
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
    final l$time_of_day = time_of_day;
    final lOther$time_of_day = other.time_of_day;
    if (l$time_of_day != lOther$time_of_day) {
      return false;
    }
    final l$gender_id = gender_id;
    final lOther$gender_id = other.gender_id;
    if (l$gender_id != lOther$gender_id) {
      return false;
    }
    final l$relative_physical_stats = relative_physical_stats;
    final lOther$relative_physical_stats = other.relative_physical_stats;
    if (l$relative_physical_stats != lOther$relative_physical_stats) {
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
    final l$pokemon_v2_location = pokemon_v2_location;
    final lOther$pokemon_v2_location = other.pokemon_v2_location;
    if (l$pokemon_v2_location != lOther$pokemon_v2_location) {
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions;

  TRes call({
    int? min_level,
    int? min_happiness,
    int? min_beauty,
    int? min_affection,
    bool? needs_overworld_rain,
    bool? turn_upside_down,
    String? time_of_day,
    int? gender_id,
    int? relative_physical_stats,
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger?
        pokemon_v2_evolutiontrigger,
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item?
        pokemon_v2_item,
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move?
        pokemon_v2_move,
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location?
        pokemon_v2_location,
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type?
        pokemon_v2_type,
    String? $__typename,
  });
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger<
      TRes> get pokemon_v2_evolutiontrigger;
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item<
      TRes> get pokemon_v2_item;
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move<
      TRes> get pokemon_v2_move;
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location<
      TRes> get pokemon_v2_location;
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type<
      TRes> get pokemon_v2_type;
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? min_level = _undefined,
    Object? min_happiness = _undefined,
    Object? min_beauty = _undefined,
    Object? min_affection = _undefined,
    Object? needs_overworld_rain = _undefined,
    Object? turn_upside_down = _undefined,
    Object? time_of_day = _undefined,
    Object? gender_id = _undefined,
    Object? relative_physical_stats = _undefined,
    Object? pokemon_v2_evolutiontrigger = _undefined,
    Object? pokemon_v2_item = _undefined,
    Object? pokemon_v2_move = _undefined,
    Object? pokemon_v2_location = _undefined,
    Object? pokemon_v2_type = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions(
        min_level:
            min_level == _undefined ? _instance.min_level : (min_level as int?),
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
        time_of_day: time_of_day == _undefined
            ? _instance.time_of_day
            : (time_of_day as String?),
        gender_id:
            gender_id == _undefined ? _instance.gender_id : (gender_id as int?),
        relative_physical_stats: relative_physical_stats == _undefined
            ? _instance.relative_physical_stats
            : (relative_physical_stats as int?),
        pokemon_v2_evolutiontrigger: pokemon_v2_evolutiontrigger == _undefined
            ? _instance.pokemon_v2_evolutiontrigger
            : (pokemon_v2_evolutiontrigger
                as Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger?),
        pokemon_v2_item: pokemon_v2_item == _undefined
            ? _instance.pokemon_v2_item
            : (pokemon_v2_item
                as Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item?),
        pokemon_v2_move: pokemon_v2_move == _undefined
            ? _instance.pokemon_v2_move
            : (pokemon_v2_move
                as Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move?),
        pokemon_v2_location: pokemon_v2_location == _undefined
            ? _instance.pokemon_v2_location
            : (pokemon_v2_location
                as Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location?),
        pokemon_v2_type: pokemon_v2_type == _undefined
            ? _instance.pokemon_v2_type
            : (pokemon_v2_type
                as Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger<
      TRes> get pokemon_v2_evolutiontrigger {
    final local$pokemon_v2_evolutiontrigger =
        _instance.pokemon_v2_evolutiontrigger;
    return local$pokemon_v2_evolutiontrigger == null
        ? CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger(
            local$pokemon_v2_evolutiontrigger,
            (e) => call(pokemon_v2_evolutiontrigger: e));
  }

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item<
      TRes> get pokemon_v2_item {
    final local$pokemon_v2_item = _instance.pokemon_v2_item;
    return local$pokemon_v2_item == null
        ? CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item(
            local$pokemon_v2_item, (e) => call(pokemon_v2_item: e));
  }

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move<
      TRes> get pokemon_v2_move {
    final local$pokemon_v2_move = _instance.pokemon_v2_move;
    return local$pokemon_v2_move == null
        ? CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move(
            local$pokemon_v2_move, (e) => call(pokemon_v2_move: e));
  }

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location<
      TRes> get pokemon_v2_location {
    final local$pokemon_v2_location = _instance.pokemon_v2_location;
    return local$pokemon_v2_location == null
        ? CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location(
            local$pokemon_v2_location, (e) => call(pokemon_v2_location: e));
  }

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type<
      TRes> get pokemon_v2_type {
    final local$pokemon_v2_type = _instance.pokemon_v2_type;
    return local$pokemon_v2_type == null
        ? CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type(
            local$pokemon_v2_type, (e) => call(pokemon_v2_type: e));
  }
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions(
      this._res);

  TRes _res;

  call({
    int? min_level,
    int? min_happiness,
    int? min_beauty,
    int? min_affection,
    bool? needs_overworld_rain,
    bool? turn_upside_down,
    String? time_of_day,
    int? gender_id,
    int? relative_physical_stats,
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger?
        pokemon_v2_evolutiontrigger,
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item?
        pokemon_v2_item,
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move?
        pokemon_v2_move,
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location?
        pokemon_v2_location,
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type?
        pokemon_v2_type,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger<
          TRes>
      get pokemon_v2_evolutiontrigger =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger
              .stub(_res);

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item<
          TRes>
      get pokemon_v2_item =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item
              .stub(_res);

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move<
          TRes>
      get pokemon_v2_move =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move
              .stub(_res);

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location<
          TRes>
      get pokemon_v2_location =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location
              .stub(_res);

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type<
          TRes>
      get pokemon_v2_type =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type
              .stub(_res);
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger({
    required this.name,
    this.$__typename = 'pokemon_v2_evolutiontrigger',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger(
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
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger ||
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_evolutiontrigger(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item({
    required this.name,
    this.$__typename = 'pokemon_v2_item',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item(
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
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item ||
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_item(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move({
    required this.name,
    this.$__typename = 'pokemon_v2_move',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move(
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
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move ||
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_move(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location({
    required this.name,
    this.$__typename = 'pokemon_v2_location',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location(
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
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location ||
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_location(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type({
    required this.name,
    this.$__typename = 'pokemon_v2_type',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type(
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
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type ||
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemonevolutions$pokemon_v2_type(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons({
    required this.id,
    required this.name,
    required this.pokemon_v2_pokemonforms,
    this.$__typename = 'pokemon_v2_pokemon',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$pokemon_v2_pokemonforms = json['pokemon_v2_pokemonforms'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons(
      id: (l$id as int),
      name: (l$name as String),
      pokemon_v2_pokemonforms: (l$pokemon_v2_pokemonforms as List<dynamic>)
          .map((e) =>
              Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final List<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms>
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
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons ||
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons;

  TRes call({
    int? id,
    String? name,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms>?
        pokemon_v2_pokemonforms,
    String? $__typename,
  });
  TRes pokemon_v2_pokemonforms(
      Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms> Function(
              Iterable<
                  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms<
                      Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms>>)
          _fn);
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? pokemon_v2_pokemonforms = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        pokemon_v2_pokemonforms: pokemon_v2_pokemonforms == _undefined ||
                pokemon_v2_pokemonforms == null
            ? _instance.pokemon_v2_pokemonforms
            : (pokemon_v2_pokemonforms as List<
                Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes pokemon_v2_pokemonforms(
          Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms<
                          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms>>)
              _fn) =>
      call(
          pokemon_v2_pokemonforms: _fn(_instance.pokemon_v2_pokemonforms.map((e) =>
              CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms>?
        pokemon_v2_pokemonforms,
    String? $__typename,
  }) =>
      _res;

  pokemon_v2_pokemonforms(_fn) => _res;
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms({
    required this.form_name,
    required this.is_mega,
    required this.pokemon_v2_pokemonformtypes,
    this.$__typename = 'pokemon_v2_pokemonform',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms.fromJson(
      Map<String, dynamic> json) {
    final l$form_name = json['form_name'];
    final l$is_mega = json['is_mega'];
    final l$pokemon_v2_pokemonformtypes = json['pokemon_v2_pokemonformtypes'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms(
      form_name: (l$form_name as String),
      is_mega: (l$is_mega as bool),
      pokemon_v2_pokemonformtypes: (l$pokemon_v2_pokemonformtypes
              as List<dynamic>)
          .map((e) =>
              Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String form_name;

  final bool is_mega;

  final List<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes>
      pokemon_v2_pokemonformtypes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$form_name = form_name;
    _resultData['form_name'] = l$form_name;
    final l$is_mega = is_mega;
    _resultData['is_mega'] = l$is_mega;
    final l$pokemon_v2_pokemonformtypes = pokemon_v2_pokemonformtypes;
    _resultData['pokemon_v2_pokemonformtypes'] =
        l$pokemon_v2_pokemonformtypes.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$form_name = form_name;
    final l$is_mega = is_mega;
    final l$pokemon_v2_pokemonformtypes = pokemon_v2_pokemonformtypes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$form_name,
      l$is_mega,
      Object.hashAll(l$pokemon_v2_pokemonformtypes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$form_name = form_name;
    final lOther$form_name = other.form_name;
    if (l$form_name != lOther$form_name) {
      return false;
    }
    final l$is_mega = is_mega;
    final lOther$is_mega = other.is_mega;
    if (l$is_mega != lOther$is_mega) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms;

  TRes call({
    String? form_name,
    bool? is_mega,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes>?
        pokemon_v2_pokemonformtypes,
    String? $__typename,
  });
  TRes pokemon_v2_pokemonformtypes(
      Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes> Function(
              Iterable<
                  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes<
                      Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes>>)
          _fn);
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? form_name = _undefined,
    Object? is_mega = _undefined,
    Object? pokemon_v2_pokemonformtypes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms(
        form_name: form_name == _undefined || form_name == null
            ? _instance.form_name
            : (form_name as String),
        is_mega: is_mega == _undefined || is_mega == null
            ? _instance.is_mega
            : (is_mega as bool),
        pokemon_v2_pokemonformtypes: pokemon_v2_pokemonformtypes ==
                    _undefined ||
                pokemon_v2_pokemonformtypes == null
            ? _instance.pokemon_v2_pokemonformtypes
            : (pokemon_v2_pokemonformtypes as List<
                Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes pokemon_v2_pokemonformtypes(
          Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes<
                          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes>>)
              _fn) =>
      call(
          pokemon_v2_pokemonformtypes: _fn(_instance.pokemon_v2_pokemonformtypes
              .map((e) =>
                  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms(
      this._res);

  TRes _res;

  call({
    String? form_name,
    bool? is_mega,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes>?
        pokemon_v2_pokemonformtypes,
    String? $__typename,
  }) =>
      _res;

  pokemon_v2_pokemonformtypes(_fn) => _res;
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes({
    this.pokemon_v2_type,
    this.$__typename = 'pokemon_v2_pokemonformtype',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes.fromJson(
      Map<String, dynamic> json) {
    final l$pokemon_v2_type = json['pokemon_v2_type'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes(
      pokemon_v2_type: l$pokemon_v2_type == null
          ? null
          : Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type
              .fromJson((l$pokemon_v2_type as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type?
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
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes ||
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes;

  TRes call({
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type?
        pokemon_v2_type,
    String? $__typename,
  });
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type<
      TRes> get pokemon_v2_type;
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pokemon_v2_type = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes(
        pokemon_v2_type: pokemon_v2_type == _undefined
            ? _instance.pokemon_v2_type
            : (pokemon_v2_type
                as Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type<
      TRes> get pokemon_v2_type {
    final local$pokemon_v2_type = _instance.pokemon_v2_type;
    return local$pokemon_v2_type == null
        ? CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type(
            local$pokemon_v2_type, (e) => call(pokemon_v2_type: e));
  }
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes(
      this._res);

  TRes _res;

  call({
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type?
        pokemon_v2_type,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type<
          TRes>
      get pokemon_v2_type =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type
              .stub(_res);
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type({
    required this.name,
    this.$__typename = 'pokemon_v2_type',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type(
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
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type ||
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_evolutionchain$pokemon_v2_pokemonspecies$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons({
    required this.id,
    required this.name,
    required this.pokemon_v2_pokemonforms,
    this.$__typename = 'pokemon_v2_pokemon',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$pokemon_v2_pokemonforms = json['pokemon_v2_pokemonforms'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons(
      id: (l$id as int),
      name: (l$name as String),
      pokemon_v2_pokemonforms: (l$pokemon_v2_pokemonforms as List<dynamic>)
          .map((e) =>
              Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final List<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms>
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
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons ||
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons;

  TRes call({
    int? id,
    String? name,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms>?
        pokemon_v2_pokemonforms,
    String? $__typename,
  });
  TRes pokemon_v2_pokemonforms(
      Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms> Function(
              Iterable<
                  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms<
                      Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms>>)
          _fn);
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? pokemon_v2_pokemonforms = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        pokemon_v2_pokemonforms: pokemon_v2_pokemonforms == _undefined ||
                pokemon_v2_pokemonforms == null
            ? _instance.pokemon_v2_pokemonforms
            : (pokemon_v2_pokemonforms as List<
                Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes pokemon_v2_pokemonforms(
          Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms<
                          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms>>)
              _fn) =>
      call(
          pokemon_v2_pokemonforms: _fn(_instance.pokemon_v2_pokemonforms.map((e) =>
              CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons(
      this._res);

  TRes _res;

  call({
    int? id,
    String? name,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms>?
        pokemon_v2_pokemonforms,
    String? $__typename,
  }) =>
      _res;

  pokemon_v2_pokemonforms(_fn) => _res;
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms({
    required this.form_name,
    required this.is_mega,
    required this.pokemon_v2_pokemonformtypes,
    this.$__typename = 'pokemon_v2_pokemonform',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms.fromJson(
      Map<String, dynamic> json) {
    final l$form_name = json['form_name'];
    final l$is_mega = json['is_mega'];
    final l$pokemon_v2_pokemonformtypes = json['pokemon_v2_pokemonformtypes'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms(
      form_name: (l$form_name as String),
      is_mega: (l$is_mega as bool),
      pokemon_v2_pokemonformtypes: (l$pokemon_v2_pokemonformtypes
              as List<dynamic>)
          .map((e) =>
              Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String form_name;

  final bool is_mega;

  final List<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes>
      pokemon_v2_pokemonformtypes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$form_name = form_name;
    _resultData['form_name'] = l$form_name;
    final l$is_mega = is_mega;
    _resultData['is_mega'] = l$is_mega;
    final l$pokemon_v2_pokemonformtypes = pokemon_v2_pokemonformtypes;
    _resultData['pokemon_v2_pokemonformtypes'] =
        l$pokemon_v2_pokemonformtypes.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$form_name = form_name;
    final l$is_mega = is_mega;
    final l$pokemon_v2_pokemonformtypes = pokemon_v2_pokemonformtypes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$form_name,
      l$is_mega,
      Object.hashAll(l$pokemon_v2_pokemonformtypes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$form_name = form_name;
    final lOther$form_name = other.form_name;
    if (l$form_name != lOther$form_name) {
      return false;
    }
    final l$is_mega = is_mega;
    final lOther$is_mega = other.is_mega;
    if (l$is_mega != lOther$is_mega) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms;

  TRes call({
    String? form_name,
    bool? is_mega,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes>?
        pokemon_v2_pokemonformtypes,
    String? $__typename,
  });
  TRes pokemon_v2_pokemonformtypes(
      Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes> Function(
              Iterable<
                  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes<
                      Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes>>)
          _fn);
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? form_name = _undefined,
    Object? is_mega = _undefined,
    Object? pokemon_v2_pokemonformtypes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms(
        form_name: form_name == _undefined || form_name == null
            ? _instance.form_name
            : (form_name as String),
        is_mega: is_mega == _undefined || is_mega == null
            ? _instance.is_mega
            : (is_mega as bool),
        pokemon_v2_pokemonformtypes: pokemon_v2_pokemonformtypes ==
                    _undefined ||
                pokemon_v2_pokemonformtypes == null
            ? _instance.pokemon_v2_pokemonformtypes
            : (pokemon_v2_pokemonformtypes as List<
                Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes pokemon_v2_pokemonformtypes(
          Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes<
                          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes>>)
              _fn) =>
      call(
          pokemon_v2_pokemonformtypes: _fn(_instance.pokemon_v2_pokemonformtypes
              .map((e) =>
                  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms(
      this._res);

  TRes _res;

  call({
    String? form_name,
    bool? is_mega,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes>?
        pokemon_v2_pokemonformtypes,
    String? $__typename,
  }) =>
      _res;

  pokemon_v2_pokemonformtypes(_fn) => _res;
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes({
    this.pokemon_v2_type,
    this.$__typename = 'pokemon_v2_pokemonformtype',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes.fromJson(
      Map<String, dynamic> json) {
    final l$pokemon_v2_type = json['pokemon_v2_type'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes(
      pokemon_v2_type: l$pokemon_v2_type == null
          ? null
          : Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type
              .fromJson((l$pokemon_v2_type as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type?
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
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes ||
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes;

  TRes call({
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type?
        pokemon_v2_type,
    String? $__typename,
  });
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type<
      TRes> get pokemon_v2_type;
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pokemon_v2_type = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes(
        pokemon_v2_type: pokemon_v2_type == _undefined
            ? _instance.pokemon_v2_type
            : (pokemon_v2_type
                as Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type<
      TRes> get pokemon_v2_type {
    final local$pokemon_v2_type = _instance.pokemon_v2_type;
    return local$pokemon_v2_type == null
        ? CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type(
            local$pokemon_v2_type, (e) => call(pokemon_v2_type: e));
  }
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes(
      this._res);

  TRes _res;

  call({
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type?
        pokemon_v2_type,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type<
          TRes>
      get pokemon_v2_type =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type
              .stub(_res);
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type({
    required this.name,
    this.$__typename = 'pokemon_v2_type',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type(
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
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type ||
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonspecy$pokemon_v2_pokemons$pokemon_v2_pokemonforms$pokemon_v2_pokemonformtypes$pokemon_v2_type(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves({
    required this.level,
    this.move_id,
    this.pokemon_v2_movelearnmethod,
    this.version_group_id,
    this.pokemon_v2_move,
    this.$__typename = 'pokemon_v2_pokemonmove',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves.fromJson(
      Map<String, dynamic> json) {
    final l$level = json['level'];
    final l$move_id = json['move_id'];
    final l$pokemon_v2_movelearnmethod = json['pokemon_v2_movelearnmethod'];
    final l$version_group_id = json['version_group_id'];
    final l$pokemon_v2_move = json['pokemon_v2_move'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves(
      level: (l$level as int),
      move_id: (l$move_id as int?),
      pokemon_v2_movelearnmethod: l$pokemon_v2_movelearnmethod == null
          ? null
          : Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod
              .fromJson((l$pokemon_v2_movelearnmethod as Map<String, dynamic>)),
      version_group_id: (l$version_group_id as int?),
      pokemon_v2_move: l$pokemon_v2_move == null
          ? null
          : Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move
              .fromJson((l$pokemon_v2_move as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final int level;

  final int? move_id;

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod?
      pokemon_v2_movelearnmethod;

  final int? version_group_id;

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move?
      pokemon_v2_move;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$level = level;
    _resultData['level'] = l$level;
    final l$move_id = move_id;
    _resultData['move_id'] = l$move_id;
    final l$pokemon_v2_movelearnmethod = pokemon_v2_movelearnmethod;
    _resultData['pokemon_v2_movelearnmethod'] =
        l$pokemon_v2_movelearnmethod?.toJson();
    final l$version_group_id = version_group_id;
    _resultData['version_group_id'] = l$version_group_id;
    final l$pokemon_v2_move = pokemon_v2_move;
    _resultData['pokemon_v2_move'] = l$pokemon_v2_move?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$level = level;
    final l$move_id = move_id;
    final l$pokemon_v2_movelearnmethod = pokemon_v2_movelearnmethod;
    final l$version_group_id = version_group_id;
    final l$pokemon_v2_move = pokemon_v2_move;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$level,
      l$move_id,
      l$pokemon_v2_movelearnmethod,
      l$version_group_id,
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
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$level = level;
    final lOther$level = other.level;
    if (l$level != lOther$level) {
      return false;
    }
    final l$move_id = move_id;
    final lOther$move_id = other.move_id;
    if (l$move_id != lOther$move_id) {
      return false;
    }
    final l$pokemon_v2_movelearnmethod = pokemon_v2_movelearnmethod;
    final lOther$pokemon_v2_movelearnmethod = other.pokemon_v2_movelearnmethod;
    if (l$pokemon_v2_movelearnmethod != lOther$pokemon_v2_movelearnmethod) {
      return false;
    }
    final l$version_group_id = version_group_id;
    final lOther$version_group_id = other.version_group_id;
    if (l$version_group_id != lOther$version_group_id) {
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves;

  TRes call({
    int? level,
    int? move_id,
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod?
        pokemon_v2_movelearnmethod,
    int? version_group_id,
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move?
        pokemon_v2_move,
    String? $__typename,
  });
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod<
      TRes> get pokemon_v2_movelearnmethod;
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move<
      TRes> get pokemon_v2_move;
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? level = _undefined,
    Object? move_id = _undefined,
    Object? pokemon_v2_movelearnmethod = _undefined,
    Object? version_group_id = _undefined,
    Object? pokemon_v2_move = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves(
        level: level == _undefined || level == null
            ? _instance.level
            : (level as int),
        move_id: move_id == _undefined ? _instance.move_id : (move_id as int?),
        pokemon_v2_movelearnmethod: pokemon_v2_movelearnmethod == _undefined
            ? _instance.pokemon_v2_movelearnmethod
            : (pokemon_v2_movelearnmethod
                as Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod?),
        version_group_id: version_group_id == _undefined
            ? _instance.version_group_id
            : (version_group_id as int?),
        pokemon_v2_move: pokemon_v2_move == _undefined
            ? _instance.pokemon_v2_move
            : (pokemon_v2_move
                as Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod<
      TRes> get pokemon_v2_movelearnmethod {
    final local$pokemon_v2_movelearnmethod =
        _instance.pokemon_v2_movelearnmethod;
    return local$pokemon_v2_movelearnmethod == null
        ? CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod(
            local$pokemon_v2_movelearnmethod,
            (e) => call(pokemon_v2_movelearnmethod: e));
  }

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move<
      TRes> get pokemon_v2_move {
    final local$pokemon_v2_move = _instance.pokemon_v2_move;
    return local$pokemon_v2_move == null
        ? CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move(
            local$pokemon_v2_move, (e) => call(pokemon_v2_move: e));
  }
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves(
      this._res);

  TRes _res;

  call({
    int? level,
    int? move_id,
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod?
        pokemon_v2_movelearnmethod,
    int? version_group_id,
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move?
        pokemon_v2_move,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod<
          TRes>
      get pokemon_v2_movelearnmethod =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod
              .stub(_res);

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move<
          TRes>
      get pokemon_v2_move =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move
              .stub(_res);
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod({
    required this.name,
    this.$__typename = 'pokemon_v2_movelearnmethod',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod(
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
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod ||
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_movelearnmethod(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move({
    required this.name,
    required this.pokemon_v2_movenames,
    this.power,
    this.accuracy,
    this.pp,
    this.pokemon_v2_type,
    this.pokemon_v2_movedamageclass,
    required this.pokemon_v2_moveflavortexts,
    this.$__typename = 'pokemon_v2_move',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$pokemon_v2_movenames = json['pokemon_v2_movenames'];
    final l$power = json['power'];
    final l$accuracy = json['accuracy'];
    final l$pp = json['pp'];
    final l$pokemon_v2_type = json['pokemon_v2_type'];
    final l$pokemon_v2_movedamageclass = json['pokemon_v2_movedamageclass'];
    final l$pokemon_v2_moveflavortexts = json['pokemon_v2_moveflavortexts'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move(
      name: (l$name as String),
      pokemon_v2_movenames: (l$pokemon_v2_movenames as List<dynamic>)
          .map((e) =>
              Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movenames
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      power: (l$power as int?),
      accuracy: (l$accuracy as int?),
      pp: (l$pp as int?),
      pokemon_v2_type: l$pokemon_v2_type == null
          ? null
          : Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type
              .fromJson((l$pokemon_v2_type as Map<String, dynamic>)),
      pokemon_v2_movedamageclass: l$pokemon_v2_movedamageclass == null
          ? null
          : Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass
              .fromJson((l$pokemon_v2_movedamageclass as Map<String, dynamic>)),
      pokemon_v2_moveflavortexts: (l$pokemon_v2_moveflavortexts
              as List<dynamic>)
          .map((e) =>
              Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_moveflavortexts
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final List<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movenames>
      pokemon_v2_movenames;

  final int? power;

  final int? accuracy;

  final int? pp;

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type?
      pokemon_v2_type;

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass?
      pokemon_v2_movedamageclass;

  final List<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_moveflavortexts>
      pokemon_v2_moveflavortexts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$pokemon_v2_movenames = pokemon_v2_movenames;
    _resultData['pokemon_v2_movenames'] =
        l$pokemon_v2_movenames.map((e) => e.toJson()).toList();
    final l$power = power;
    _resultData['power'] = l$power;
    final l$accuracy = accuracy;
    _resultData['accuracy'] = l$accuracy;
    final l$pp = pp;
    _resultData['pp'] = l$pp;
    final l$pokemon_v2_type = pokemon_v2_type;
    _resultData['pokemon_v2_type'] = l$pokemon_v2_type?.toJson();
    final l$pokemon_v2_movedamageclass = pokemon_v2_movedamageclass;
    _resultData['pokemon_v2_movedamageclass'] =
        l$pokemon_v2_movedamageclass?.toJson();
    final l$pokemon_v2_moveflavortexts = pokemon_v2_moveflavortexts;
    _resultData['pokemon_v2_moveflavortexts'] =
        l$pokemon_v2_moveflavortexts.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$pokemon_v2_movenames = pokemon_v2_movenames;
    final l$power = power;
    final l$accuracy = accuracy;
    final l$pp = pp;
    final l$pokemon_v2_type = pokemon_v2_type;
    final l$pokemon_v2_movedamageclass = pokemon_v2_movedamageclass;
    final l$pokemon_v2_moveflavortexts = pokemon_v2_moveflavortexts;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      Object.hashAll(l$pokemon_v2_movenames.map((v) => v)),
      l$power,
      l$accuracy,
      l$pp,
      l$pokemon_v2_type,
      l$pokemon_v2_movedamageclass,
      Object.hashAll(l$pokemon_v2_moveflavortexts.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$pokemon_v2_movenames = pokemon_v2_movenames;
    final lOther$pokemon_v2_movenames = other.pokemon_v2_movenames;
    if (l$pokemon_v2_movenames.length != lOther$pokemon_v2_movenames.length) {
      return false;
    }
    for (int i = 0; i < l$pokemon_v2_movenames.length; i++) {
      final l$pokemon_v2_movenames$entry = l$pokemon_v2_movenames[i];
      final lOther$pokemon_v2_movenames$entry = lOther$pokemon_v2_movenames[i];
      if (l$pokemon_v2_movenames$entry != lOther$pokemon_v2_movenames$entry) {
        return false;
      }
    }
    final l$power = power;
    final lOther$power = other.power;
    if (l$power != lOther$power) {
      return false;
    }
    final l$accuracy = accuracy;
    final lOther$accuracy = other.accuracy;
    if (l$accuracy != lOther$accuracy) {
      return false;
    }
    final l$pp = pp;
    final lOther$pp = other.pp;
    if (l$pp != lOther$pp) {
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
    final l$pokemon_v2_moveflavortexts = pokemon_v2_moveflavortexts;
    final lOther$pokemon_v2_moveflavortexts = other.pokemon_v2_moveflavortexts;
    if (l$pokemon_v2_moveflavortexts.length !=
        lOther$pokemon_v2_moveflavortexts.length) {
      return false;
    }
    for (int i = 0; i < l$pokemon_v2_moveflavortexts.length; i++) {
      final l$pokemon_v2_moveflavortexts$entry =
          l$pokemon_v2_moveflavortexts[i];
      final lOther$pokemon_v2_moveflavortexts$entry =
          lOther$pokemon_v2_moveflavortexts[i];
      if (l$pokemon_v2_moveflavortexts$entry !=
          lOther$pokemon_v2_moveflavortexts$entry) {
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move;

  TRes call({
    String? name,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movenames>?
        pokemon_v2_movenames,
    int? power,
    int? accuracy,
    int? pp,
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type?
        pokemon_v2_type,
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass?
        pokemon_v2_movedamageclass,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_moveflavortexts>?
        pokemon_v2_moveflavortexts,
    String? $__typename,
  });
  TRes pokemon_v2_movenames(
      Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movenames> Function(
              Iterable<
                  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movenames<
                      Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movenames>>)
          _fn);
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type<
      TRes> get pokemon_v2_type;
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass<
      TRes> get pokemon_v2_movedamageclass;
  TRes pokemon_v2_moveflavortexts(
      Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_moveflavortexts> Function(
              Iterable<
                  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_moveflavortexts<
                      Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_moveflavortexts>>)
          _fn);
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? pokemon_v2_movenames = _undefined,
    Object? power = _undefined,
    Object? accuracy = _undefined,
    Object? pp = _undefined,
    Object? pokemon_v2_type = _undefined,
    Object? pokemon_v2_movedamageclass = _undefined,
    Object? pokemon_v2_moveflavortexts = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        pokemon_v2_movenames: pokemon_v2_movenames == _undefined ||
                pokemon_v2_movenames == null
            ? _instance.pokemon_v2_movenames
            : (pokemon_v2_movenames as List<
                Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movenames>),
        power: power == _undefined ? _instance.power : (power as int?),
        accuracy:
            accuracy == _undefined ? _instance.accuracy : (accuracy as int?),
        pp: pp == _undefined ? _instance.pp : (pp as int?),
        pokemon_v2_type: pokemon_v2_type == _undefined
            ? _instance.pokemon_v2_type
            : (pokemon_v2_type
                as Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type?),
        pokemon_v2_movedamageclass: pokemon_v2_movedamageclass == _undefined
            ? _instance.pokemon_v2_movedamageclass
            : (pokemon_v2_movedamageclass
                as Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass?),
        pokemon_v2_moveflavortexts: pokemon_v2_moveflavortexts == _undefined ||
                pokemon_v2_moveflavortexts == null
            ? _instance.pokemon_v2_moveflavortexts
            : (pokemon_v2_moveflavortexts as List<
                Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_moveflavortexts>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes pokemon_v2_movenames(
          Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movenames> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movenames<
                          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movenames>>)
              _fn) =>
      call(
          pokemon_v2_movenames: _fn(_instance.pokemon_v2_movenames.map((e) =>
              CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movenames(
                e,
                (i) => i,
              ))).toList());

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type<
      TRes> get pokemon_v2_type {
    final local$pokemon_v2_type = _instance.pokemon_v2_type;
    return local$pokemon_v2_type == null
        ? CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type(
            local$pokemon_v2_type, (e) => call(pokemon_v2_type: e));
  }

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass<
      TRes> get pokemon_v2_movedamageclass {
    final local$pokemon_v2_movedamageclass =
        _instance.pokemon_v2_movedamageclass;
    return local$pokemon_v2_movedamageclass == null
        ? CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass(
            local$pokemon_v2_movedamageclass,
            (e) => call(pokemon_v2_movedamageclass: e));
  }

  TRes pokemon_v2_moveflavortexts(
          Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_moveflavortexts> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_moveflavortexts<
                          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_moveflavortexts>>)
              _fn) =>
      call(
          pokemon_v2_moveflavortexts: _fn(_instance.pokemon_v2_moveflavortexts
              .map((e) =>
                  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_moveflavortexts(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move(
      this._res);

  TRes _res;

  call({
    String? name,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movenames>?
        pokemon_v2_movenames,
    int? power,
    int? accuracy,
    int? pp,
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type?
        pokemon_v2_type,
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass?
        pokemon_v2_movedamageclass,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_moveflavortexts>?
        pokemon_v2_moveflavortexts,
    String? $__typename,
  }) =>
      _res;

  pokemon_v2_movenames(_fn) => _res;

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type<
          TRes>
      get pokemon_v2_type =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type
              .stub(_res);

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass<
          TRes>
      get pokemon_v2_movedamageclass =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass
              .stub(_res);

  pokemon_v2_moveflavortexts(_fn) => _res;
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movenames {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movenames({
    required this.name,
    this.$__typename = 'pokemon_v2_movename',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movenames.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movenames(
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
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movenames ||
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movenames
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movenames {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movenames<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movenames>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movenames(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movenames<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movenames(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movenames
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movenames)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movenames;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movenames.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movenames;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movenames<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movenames<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movenames(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movenames
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movenames)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movenames(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movenames<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movenames<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movenames(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type({
    required this.name,
    this.$__typename = 'pokemon_v2_type',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type(
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
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type ||
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_type(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass({
    required this.name,
    this.$__typename = 'pokemon_v2_movedamageclass',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass(
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
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass ||
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_movedamageclass(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_moveflavortexts {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_moveflavortexts({
    required this.flavor_text,
    this.$__typename = 'pokemon_v2_moveflavortext',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_moveflavortexts.fromJson(
      Map<String, dynamic> json) {
    final l$flavor_text = json['flavor_text'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_moveflavortexts(
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
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_moveflavortexts ||
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_moveflavortexts
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_moveflavortexts {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_moveflavortexts<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_moveflavortexts>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_moveflavortexts(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_moveflavortexts<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_moveflavortexts(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_moveflavortexts
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_moveflavortexts)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_moveflavortexts;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_moveflavortexts.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_moveflavortexts;

  TRes call({
    String? flavor_text,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_moveflavortexts<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_moveflavortexts<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_moveflavortexts(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_moveflavortexts
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_moveflavortexts)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? flavor_text = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_moveflavortexts(
        flavor_text: flavor_text == _undefined || flavor_text == null
            ? _instance.flavor_text
            : (flavor_text as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_moveflavortexts<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_moveflavortexts<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_pokemonmoves$pokemon_v2_move$pokemon_v2_moveflavortexts(
      this._res);

  TRes _res;

  call({
    String? flavor_text,
    String? $__typename,
  }) =>
      _res;
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters({
    this.pokemon_v2_locationarea,
    this.pokemon_v2_version,
    this.$__typename = 'pokemon_v2_encounter',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters.fromJson(
      Map<String, dynamic> json) {
    final l$pokemon_v2_locationarea = json['pokemon_v2_locationarea'];
    final l$pokemon_v2_version = json['pokemon_v2_version'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters(
      pokemon_v2_locationarea: l$pokemon_v2_locationarea == null
          ? null
          : Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea
              .fromJson((l$pokemon_v2_locationarea as Map<String, dynamic>)),
      pokemon_v2_version: l$pokemon_v2_version == null
          ? null
          : Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version
              .fromJson((l$pokemon_v2_version as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea?
      pokemon_v2_locationarea;

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version?
      pokemon_v2_version;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pokemon_v2_locationarea = pokemon_v2_locationarea;
    _resultData['pokemon_v2_locationarea'] =
        l$pokemon_v2_locationarea?.toJson();
    final l$pokemon_v2_version = pokemon_v2_version;
    _resultData['pokemon_v2_version'] = l$pokemon_v2_version?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pokemon_v2_locationarea = pokemon_v2_locationarea;
    final l$pokemon_v2_version = pokemon_v2_version;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pokemon_v2_locationarea,
      l$pokemon_v2_version,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pokemon_v2_locationarea = pokemon_v2_locationarea;
    final lOther$pokemon_v2_locationarea = other.pokemon_v2_locationarea;
    if (l$pokemon_v2_locationarea != lOther$pokemon_v2_locationarea) {
      return false;
    }
    final l$pokemon_v2_version = pokemon_v2_version;
    final lOther$pokemon_v2_version = other.pokemon_v2_version;
    if (l$pokemon_v2_version != lOther$pokemon_v2_version) {
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters;

  TRes call({
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea?
        pokemon_v2_locationarea,
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version?
        pokemon_v2_version,
    String? $__typename,
  });
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea<
      TRes> get pokemon_v2_locationarea;
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version<
      TRes> get pokemon_v2_version;
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters
      _instance;

  final TRes Function(
      Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pokemon_v2_locationarea = _undefined,
    Object? pokemon_v2_version = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters(
        pokemon_v2_locationarea: pokemon_v2_locationarea == _undefined
            ? _instance.pokemon_v2_locationarea
            : (pokemon_v2_locationarea
                as Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea?),
        pokemon_v2_version: pokemon_v2_version == _undefined
            ? _instance.pokemon_v2_version
            : (pokemon_v2_version
                as Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea<
      TRes> get pokemon_v2_locationarea {
    final local$pokemon_v2_locationarea = _instance.pokemon_v2_locationarea;
    return local$pokemon_v2_locationarea == null
        ? CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea(
            local$pokemon_v2_locationarea,
            (e) => call(pokemon_v2_locationarea: e));
  }

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version<
      TRes> get pokemon_v2_version {
    final local$pokemon_v2_version = _instance.pokemon_v2_version;
    return local$pokemon_v2_version == null
        ? CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version(
            local$pokemon_v2_version, (e) => call(pokemon_v2_version: e));
  }
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters(
      this._res);

  TRes _res;

  call({
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea?
        pokemon_v2_locationarea,
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version?
        pokemon_v2_version,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea<
          TRes>
      get pokemon_v2_locationarea =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea
              .stub(_res);

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version<
          TRes>
      get pokemon_v2_version =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version
              .stub(_res);
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea({
    this.pokemon_v2_location,
    this.$__typename = 'pokemon_v2_locationarea',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea.fromJson(
      Map<String, dynamic> json) {
    final l$pokemon_v2_location = json['pokemon_v2_location'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea(
      pokemon_v2_location: l$pokemon_v2_location == null
          ? null
          : Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location
              .fromJson((l$pokemon_v2_location as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location?
      pokemon_v2_location;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pokemon_v2_location = pokemon_v2_location;
    _resultData['pokemon_v2_location'] = l$pokemon_v2_location?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pokemon_v2_location = pokemon_v2_location;
    final l$$__typename = $__typename;
    return Object.hashAll([
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
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea ||
        runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea;

  TRes call({
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location?
        pokemon_v2_location,
    String? $__typename,
  });
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location<
      TRes> get pokemon_v2_location;
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pokemon_v2_location = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea(
        pokemon_v2_location: pokemon_v2_location == _undefined
            ? _instance.pokemon_v2_location
            : (pokemon_v2_location
                as Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location<
      TRes> get pokemon_v2_location {
    final local$pokemon_v2_location = _instance.pokemon_v2_location;
    return local$pokemon_v2_location == null
        ? CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location(
            local$pokemon_v2_location, (e) => call(pokemon_v2_location: e));
  }
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea(
      this._res);

  TRes _res;

  call({
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location?
        pokemon_v2_location,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location<
          TRes>
      get pokemon_v2_location =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location
              .stub(_res);
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location({
    required this.name,
    required this.pokemon_v2_locationnames,
    this.pokemon_v2_region,
    this.$__typename = 'pokemon_v2_location',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$pokemon_v2_locationnames = json['pokemon_v2_locationnames'];
    final l$pokemon_v2_region = json['pokemon_v2_region'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location(
      name: (l$name as String),
      pokemon_v2_locationnames: (l$pokemon_v2_locationnames as List<dynamic>)
          .map((e) =>
              Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_locationnames
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      pokemon_v2_region: l$pokemon_v2_region == null
          ? null
          : Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region
              .fromJson((l$pokemon_v2_region as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final List<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_locationnames>
      pokemon_v2_locationnames;

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region?
      pokemon_v2_region;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$pokemon_v2_locationnames = pokemon_v2_locationnames;
    _resultData['pokemon_v2_locationnames'] =
        l$pokemon_v2_locationnames.map((e) => e.toJson()).toList();
    final l$pokemon_v2_region = pokemon_v2_region;
    _resultData['pokemon_v2_region'] = l$pokemon_v2_region?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$pokemon_v2_locationnames = pokemon_v2_locationnames;
    final l$pokemon_v2_region = pokemon_v2_region;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      Object.hashAll(l$pokemon_v2_locationnames.map((v) => v)),
      l$pokemon_v2_region,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$pokemon_v2_locationnames = pokemon_v2_locationnames;
    final lOther$pokemon_v2_locationnames = other.pokemon_v2_locationnames;
    if (l$pokemon_v2_locationnames.length !=
        lOther$pokemon_v2_locationnames.length) {
      return false;
    }
    for (int i = 0; i < l$pokemon_v2_locationnames.length; i++) {
      final l$pokemon_v2_locationnames$entry = l$pokemon_v2_locationnames[i];
      final lOther$pokemon_v2_locationnames$entry =
          lOther$pokemon_v2_locationnames[i];
      if (l$pokemon_v2_locationnames$entry !=
          lOther$pokemon_v2_locationnames$entry) {
        return false;
      }
    }
    final l$pokemon_v2_region = pokemon_v2_region;
    final lOther$pokemon_v2_region = other.pokemon_v2_region;
    if (l$pokemon_v2_region != lOther$pokemon_v2_region) {
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location;

  TRes call({
    String? name,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_locationnames>?
        pokemon_v2_locationnames,
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region?
        pokemon_v2_region,
    String? $__typename,
  });
  TRes pokemon_v2_locationnames(
      Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_locationnames> Function(
              Iterable<
                  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_locationnames<
                      Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_locationnames>>)
          _fn);
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region<
      TRes> get pokemon_v2_region;
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? pokemon_v2_locationnames = _undefined,
    Object? pokemon_v2_region = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        pokemon_v2_locationnames: pokemon_v2_locationnames == _undefined ||
                pokemon_v2_locationnames == null
            ? _instance.pokemon_v2_locationnames
            : (pokemon_v2_locationnames as List<
                Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_locationnames>),
        pokemon_v2_region: pokemon_v2_region == _undefined
            ? _instance.pokemon_v2_region
            : (pokemon_v2_region
                as Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes pokemon_v2_locationnames(
          Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_locationnames> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_locationnames<
                          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_locationnames>>)
              _fn) =>
      call(
          pokemon_v2_locationnames: _fn(_instance.pokemon_v2_locationnames.map(
              (e) =>
                  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_locationnames(
                    e,
                    (i) => i,
                  ))).toList());

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region<
      TRes> get pokemon_v2_region {
    final local$pokemon_v2_region = _instance.pokemon_v2_region;
    return local$pokemon_v2_region == null
        ? CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region
            .stub(_then(_instance))
        : CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region(
            local$pokemon_v2_region, (e) => call(pokemon_v2_region: e));
  }
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location(
      this._res);

  TRes _res;

  call({
    String? name,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_locationnames>?
        pokemon_v2_locationnames,
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region?
        pokemon_v2_region,
    String? $__typename,
  }) =>
      _res;

  pokemon_v2_locationnames(_fn) => _res;

  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region<
          TRes>
      get pokemon_v2_region =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region
              .stub(_res);
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_locationnames {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_locationnames({
    required this.name,
    this.$__typename = 'pokemon_v2_locationname',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_locationnames.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_locationnames(
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
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_locationnames ||
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_locationnames
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_locationnames {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_locationnames<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_locationnames>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_locationnames(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_locationnames<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_locationnames(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_locationnames
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_locationnames)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_locationnames;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_locationnames.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_locationnames;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_locationnames<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_locationnames<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_locationnames(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_locationnames
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_locationnames)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_locationnames(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_locationnames<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_locationnames<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_locationnames(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region({
    required this.name,
    required this.pokemon_v2_regionnames,
    this.$__typename = 'pokemon_v2_region',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$pokemon_v2_regionnames = json['pokemon_v2_regionnames'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region(
      name: (l$name as String),
      pokemon_v2_regionnames: (l$pokemon_v2_regionnames as List<dynamic>)
          .map((e) =>
              Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region$pokemon_v2_regionnames
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final List<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region$pokemon_v2_regionnames>
      pokemon_v2_regionnames;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$pokemon_v2_regionnames = pokemon_v2_regionnames;
    _resultData['pokemon_v2_regionnames'] =
        l$pokemon_v2_regionnames.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$pokemon_v2_regionnames = pokemon_v2_regionnames;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      Object.hashAll(l$pokemon_v2_regionnames.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$pokemon_v2_regionnames = pokemon_v2_regionnames;
    final lOther$pokemon_v2_regionnames = other.pokemon_v2_regionnames;
    if (l$pokemon_v2_regionnames.length !=
        lOther$pokemon_v2_regionnames.length) {
      return false;
    }
    for (int i = 0; i < l$pokemon_v2_regionnames.length; i++) {
      final l$pokemon_v2_regionnames$entry = l$pokemon_v2_regionnames[i];
      final lOther$pokemon_v2_regionnames$entry =
          lOther$pokemon_v2_regionnames[i];
      if (l$pokemon_v2_regionnames$entry !=
          lOther$pokemon_v2_regionnames$entry) {
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region;

  TRes call({
    String? name,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region$pokemon_v2_regionnames>?
        pokemon_v2_regionnames,
    String? $__typename,
  });
  TRes pokemon_v2_regionnames(
      Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region$pokemon_v2_regionnames> Function(
              Iterable<
                  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region$pokemon_v2_regionnames<
                      Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region$pokemon_v2_regionnames>>)
          _fn);
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? pokemon_v2_regionnames = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        pokemon_v2_regionnames: pokemon_v2_regionnames == _undefined ||
                pokemon_v2_regionnames == null
            ? _instance.pokemon_v2_regionnames
            : (pokemon_v2_regionnames as List<
                Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region$pokemon_v2_regionnames>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes pokemon_v2_regionnames(
          Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region$pokemon_v2_regionnames> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region$pokemon_v2_regionnames<
                          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region$pokemon_v2_regionnames>>)
              _fn) =>
      call(
          pokemon_v2_regionnames: _fn(_instance.pokemon_v2_regionnames.map((e) =>
              CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region$pokemon_v2_regionnames(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region(
      this._res);

  TRes _res;

  call({
    String? name,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region$pokemon_v2_regionnames>?
        pokemon_v2_regionnames,
    String? $__typename,
  }) =>
      _res;

  pokemon_v2_regionnames(_fn) => _res;
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region$pokemon_v2_regionnames {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region$pokemon_v2_regionnames({
    required this.name,
    this.$__typename = 'pokemon_v2_regionname',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region$pokemon_v2_regionnames.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region$pokemon_v2_regionnames(
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
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region$pokemon_v2_regionnames ||
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region$pokemon_v2_regionnames
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region$pokemon_v2_regionnames {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region$pokemon_v2_regionnames<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region$pokemon_v2_regionnames>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region$pokemon_v2_regionnames(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region$pokemon_v2_regionnames<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region$pokemon_v2_regionnames(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region$pokemon_v2_regionnames
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region$pokemon_v2_regionnames)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region$pokemon_v2_regionnames;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region$pokemon_v2_regionnames.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region$pokemon_v2_regionnames;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region$pokemon_v2_regionnames<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region$pokemon_v2_regionnames<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region$pokemon_v2_regionnames(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region$pokemon_v2_regionnames
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region$pokemon_v2_regionnames)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region$pokemon_v2_regionnames(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region$pokemon_v2_regionnames<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region$pokemon_v2_regionnames<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_locationarea$pokemon_v2_location$pokemon_v2_region$pokemon_v2_regionnames(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version({
    required this.name,
    required this.pokemon_v2_versionnames,
    this.$__typename = 'pokemon_v2_version',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$pokemon_v2_versionnames = json['pokemon_v2_versionnames'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version(
      name: (l$name as String),
      pokemon_v2_versionnames: (l$pokemon_v2_versionnames as List<dynamic>)
          .map((e) =>
              Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version$pokemon_v2_versionnames
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final String name;

  final List<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version$pokemon_v2_versionnames>
      pokemon_v2_versionnames;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$name = name;
    _resultData['name'] = l$name;
    final l$pokemon_v2_versionnames = pokemon_v2_versionnames;
    _resultData['pokemon_v2_versionnames'] =
        l$pokemon_v2_versionnames.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$pokemon_v2_versionnames = pokemon_v2_versionnames;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$name,
      Object.hashAll(l$pokemon_v2_versionnames.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$pokemon_v2_versionnames = pokemon_v2_versionnames;
    final lOther$pokemon_v2_versionnames = other.pokemon_v2_versionnames;
    if (l$pokemon_v2_versionnames.length !=
        lOther$pokemon_v2_versionnames.length) {
      return false;
    }
    for (int i = 0; i < l$pokemon_v2_versionnames.length; i++) {
      final l$pokemon_v2_versionnames$entry = l$pokemon_v2_versionnames[i];
      final lOther$pokemon_v2_versionnames$entry =
          lOther$pokemon_v2_versionnames[i];
      if (l$pokemon_v2_versionnames$entry !=
          lOther$pokemon_v2_versionnames$entry) {
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version;

  TRes call({
    String? name,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version$pokemon_v2_versionnames>?
        pokemon_v2_versionnames,
    String? $__typename,
  });
  TRes pokemon_v2_versionnames(
      Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version$pokemon_v2_versionnames> Function(
              Iterable<
                  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version$pokemon_v2_versionnames<
                      Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version$pokemon_v2_versionnames>>)
          _fn);
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? pokemon_v2_versionnames = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        pokemon_v2_versionnames: pokemon_v2_versionnames == _undefined ||
                pokemon_v2_versionnames == null
            ? _instance.pokemon_v2_versionnames
            : (pokemon_v2_versionnames as List<
                Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version$pokemon_v2_versionnames>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes pokemon_v2_versionnames(
          Iterable<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version$pokemon_v2_versionnames> Function(
                  Iterable<
                      CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version$pokemon_v2_versionnames<
                          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version$pokemon_v2_versionnames>>)
              _fn) =>
      call(
          pokemon_v2_versionnames: _fn(_instance.pokemon_v2_versionnames.map((e) =>
              CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version$pokemon_v2_versionnames(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version(
      this._res);

  TRes _res;

  call({
    String? name,
    List<Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version$pokemon_v2_versionnames>?
        pokemon_v2_versionnames,
    String? $__typename,
  }) =>
      _res;

  pokemon_v2_versionnames(_fn) => _res;
}

class Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version$pokemon_v2_versionnames {
  Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version$pokemon_v2_versionnames({
    required this.name,
    this.$__typename = 'pokemon_v2_versionname',
  });

  factory Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version$pokemon_v2_versionnames.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version$pokemon_v2_versionnames(
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
            is! Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version$pokemon_v2_versionnames ||
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

extension UtilityExtension$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version$pokemon_v2_versionnames
    on Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version$pokemon_v2_versionnames {
  CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version$pokemon_v2_versionnames<
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version$pokemon_v2_versionnames>
      get copyWith =>
          CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version$pokemon_v2_versionnames(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version$pokemon_v2_versionnames<
    TRes> {
  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version$pokemon_v2_versionnames(
    Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version$pokemon_v2_versionnames
        instance,
    TRes Function(
            Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version$pokemon_v2_versionnames)
        then,
  ) = _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version$pokemon_v2_versionnames;

  factory CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version$pokemon_v2_versionnames.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version$pokemon_v2_versionnames;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version$pokemon_v2_versionnames<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version$pokemon_v2_versionnames<
            TRes> {
  _CopyWithImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version$pokemon_v2_versionnames(
    this._instance,
    this._then,
  );

  final Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version$pokemon_v2_versionnames
      _instance;

  final TRes Function(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version$pokemon_v2_versionnames)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version$pokemon_v2_versionnames(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version$pokemon_v2_versionnames<
        TRes>
    implements
        CopyWith$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version$pokemon_v2_versionnames<
            TRes> {
  _CopyWithStubImpl$Query$PokemonDetail$pokemon_v2_pokemon_by_pk$pokemon_v2_encounters$pokemon_v2_version$pokemon_v2_versionnames(
      this._res);

  TRes _res;

  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}
