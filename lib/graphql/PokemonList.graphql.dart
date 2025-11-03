import 'package:gql/ast.dart';

class Variables$Query$PokemonListV2 {
  factory Variables$Query$PokemonListV2({
    required int limit,
    required int offset,
    String? search,
  }) =>
      Variables$Query$PokemonListV2._({
        r'limit': limit,
        r'offset': offset,
        if (search != null) r'search': search,
      });

  Variables$Query$PokemonListV2._(this._$data);

  factory Variables$Query$PokemonListV2.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$limit = data['limit'];
    result$data['limit'] = (l$limit as int);
    final l$offset = data['offset'];
    result$data['offset'] = (l$offset as int);
    if (data.containsKey('search')) {
      final l$search = data['search'];
      result$data['search'] = (l$search as String?);
    }
    return Variables$Query$PokemonListV2._(result$data);
  }

  Map<String, dynamic> _$data;

  int get limit => (_$data['limit'] as int);

  int get offset => (_$data['offset'] as int);

  String? get search => (_$data['search'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$limit = limit;
    result$data['limit'] = l$limit;
    final l$offset = offset;
    result$data['offset'] = l$offset;
    if (_$data.containsKey('search')) {
      final l$search = search;
      result$data['search'] = l$search;
    }
    return result$data;
  }

  CopyWith$Variables$Query$PokemonListV2<Variables$Query$PokemonListV2>
      get copyWith => CopyWith$Variables$Query$PokemonListV2(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$PokemonListV2 ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (l$limit != lOther$limit) {
      return false;
    }
    final l$offset = offset;
    final lOther$offset = other.offset;
    if (l$offset != lOther$offset) {
      return false;
    }
    final l$search = search;
    final lOther$search = other.search;
    if (_$data.containsKey('search') != other._$data.containsKey('search')) {
      return false;
    }
    if (l$search != lOther$search) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$limit = limit;
    final l$offset = offset;
    final l$search = search;
    return Object.hashAll([
      l$limit,
      l$offset,
      _$data.containsKey('search') ? l$search : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$PokemonListV2<TRes> {
  factory CopyWith$Variables$Query$PokemonListV2(
    Variables$Query$PokemonListV2 instance,
    TRes Function(Variables$Query$PokemonListV2) then,
  ) = _CopyWithImpl$Variables$Query$PokemonListV2;

  factory CopyWith$Variables$Query$PokemonListV2.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$PokemonListV2;

  TRes call({
    int? limit,
    int? offset,
    String? search,
  });
}

class _CopyWithImpl$Variables$Query$PokemonListV2<TRes>
    implements CopyWith$Variables$Query$PokemonListV2<TRes> {
  _CopyWithImpl$Variables$Query$PokemonListV2(
    this._instance,
    this._then,
  );

  final Variables$Query$PokemonListV2 _instance;

  final TRes Function(Variables$Query$PokemonListV2) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? limit = _undefined,
    Object? offset = _undefined,
    Object? search = _undefined,
  }) =>
      _then(Variables$Query$PokemonListV2._({
        ..._instance._$data,
        if (limit != _undefined && limit != null) 'limit': (limit as int),
        if (offset != _undefined && offset != null) 'offset': (offset as int),
        if (search != _undefined) 'search': (search as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$PokemonListV2<TRes>
    implements CopyWith$Variables$Query$PokemonListV2<TRes> {
  _CopyWithStubImpl$Variables$Query$PokemonListV2(this._res);

  final TRes _res;

  @override
  call({
    int? limit,
    int? offset,
    String? search,
  }) =>
      _res;
}

class Query$PokemonListV2 {
  Query$PokemonListV2({
    required this.pokemon_v2_pokemon,
    this.$__typename = 'query_root',
  });

  factory Query$PokemonListV2.fromJson(Map<String, dynamic> json) {
    final l$pokemonV2Pokemon = json['pokemon_v2_pokemon'];
    final l$$__typename = json['__typename'];
    return Query$PokemonListV2(
      pokemon_v2_pokemon: (l$pokemonV2Pokemon as List<dynamic>)
          .map((e) => Query$PokemonListV2$pokemon_v2_pokemon.fromJson(
              (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$PokemonListV2$pokemon_v2_pokemon> pokemon_v2_pokemon;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$pokemonV2Pokemon = pokemon_v2_pokemon;
    resultData['pokemon_v2_pokemon'] =
        l$pokemonV2Pokemon.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$pokemonV2Pokemon = pokemon_v2_pokemon;
    final l$$__typename = $__typename;
    return Object.hashAll([
      Object.hashAll(l$pokemonV2Pokemon.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PokemonListV2 || runtimeType != other.runtimeType) {
      return false;
    }
    final l$pokemonV2Pokemon = pokemon_v2_pokemon;
    final lother$pokemonV2Pokemon = other.pokemon_v2_pokemon;
    if (l$pokemonV2Pokemon.length != lother$pokemonV2Pokemon.length) {
      return false;
    }
    for (int i = 0; i < l$pokemonV2Pokemon.length; i++) {
      final l$pokemonV2Pokemon$entry = l$pokemonV2Pokemon[i];
      final lother$pokemonV2Pokemon$entry = lother$pokemonV2Pokemon[i];
      if (l$pokemonV2Pokemon$entry != lother$pokemonV2Pokemon$entry) {
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

extension UtilityExtension$Query$PokemonListV2 on Query$PokemonListV2 {
  CopyWith$Query$PokemonListV2<Query$PokemonListV2> get copyWith =>
      CopyWith$Query$PokemonListV2(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$PokemonListV2<TRes> {
  factory CopyWith$Query$PokemonListV2(
    Query$PokemonListV2 instance,
    TRes Function(Query$PokemonListV2) then,
  ) = _CopyWithImpl$Query$PokemonListV2;

  factory CopyWith$Query$PokemonListV2.stub(TRes res) =
      _CopyWithStubImpl$Query$PokemonListV2;

  TRes call({
    List<Query$PokemonListV2$pokemon_v2_pokemon>? pokemon_v2_pokemon,
    String? $__typename,
  });
  TRes pokemon_v2_pokemon(
      Iterable<Query$PokemonListV2$pokemon_v2_pokemon> Function(
              Iterable<
                  CopyWith$Query$PokemonListV2$pokemon_v2_pokemon<
                      Query$PokemonListV2$pokemon_v2_pokemon>>)
          fn);
}

class _CopyWithImpl$Query$PokemonListV2<TRes>
    implements CopyWith$Query$PokemonListV2<TRes> {
  _CopyWithImpl$Query$PokemonListV2(
    this._instance,
    this._then,
  );

  final Query$PokemonListV2 _instance;

  final TRes Function(Query$PokemonListV2) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? pokemon_v2_pokemon = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PokemonListV2(
        pokemon_v2_pokemon:
            pokemon_v2_pokemon == _undefined || pokemon_v2_pokemon == null
                ? _instance.pokemon_v2_pokemon
                : (pokemon_v2_pokemon
                    as List<Query$PokemonListV2$pokemon_v2_pokemon>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  TRes pokemon_v2_pokemon(
          Iterable<Query$PokemonListV2$pokemon_v2_pokemon> Function(
                  Iterable<
                      CopyWith$Query$PokemonListV2$pokemon_v2_pokemon<
                          Query$PokemonListV2$pokemon_v2_pokemon>>)
              fn) =>
      call(
          pokemon_v2_pokemon: fn(_instance.pokemon_v2_pokemon
              .map((e) => CopyWith$Query$PokemonListV2$pokemon_v2_pokemon(
                    e,
                    (i) => i,
                  ))).toList());
}

class _CopyWithStubImpl$Query$PokemonListV2<TRes>
    implements CopyWith$Query$PokemonListV2<TRes> {
  _CopyWithStubImpl$Query$PokemonListV2(this._res);

  final TRes _res;

  @override
  call({
    List<Query$PokemonListV2$pokemon_v2_pokemon>? pokemon_v2_pokemon,
    String? $__typename,
  }) =>
      _res;

  @override
  pokemon_v2_pokemon(fn) => _res;
}

const documentNodeQueryPokemonListV2 = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'PokemonListV2'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'limit')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'offset')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'search')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'pokemon_v2_pokemon'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'limit'),
            value: VariableNode(name: NameNode(value: 'limit')),
          ),
          ArgumentNode(
            name: NameNode(value: 'offset'),
            value: VariableNode(name: NameNode(value: 'offset')),
          ),
          ArgumentNode(
            name: NameNode(value: 'order_by'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'id'),
                value: EnumValueNode(name: NameNode(value: 'asc')),
              )
            ]),
          ),
          ArgumentNode(
            name: NameNode(value: 'where'),
            value: ObjectValueNode(fields: [
              ObjectFieldNode(
                name: NameNode(value: 'name'),
                value: ObjectValueNode(fields: [
                  ObjectFieldNode(
                    name: NameNode(value: '_ilike'),
                    value: VariableNode(name: NameNode(value: 'search')),
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

class Query$PokemonListV2$pokemon_v2_pokemon {
  Query$PokemonListV2$pokemon_v2_pokemon({
    required this.id,
    required this.name,
    required this.pokemon_v2_pokemontypes,
    this.$__typename = 'pokemon_v2_pokemon',
  });

  factory Query$PokemonListV2$pokemon_v2_pokemon.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$name = json['name'];
    final l$pokemonV2Pokemontypes = json['pokemon_v2_pokemontypes'];
    final l$$__typename = json['__typename'];
    return Query$PokemonListV2$pokemon_v2_pokemon(
      id: (l$id as int),
      name: (l$name as String),
      pokemon_v2_pokemontypes: (l$pokemonV2Pokemontypes as List<dynamic>)
          .map((e) =>
              Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes
                  .fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final int id;

  final String name;

  final List<Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes>
      pokemon_v2_pokemontypes;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$name = name;
    resultData['name'] = l$name;
    final l$pokemonV2Pokemontypes = pokemon_v2_pokemontypes;
    resultData['pokemon_v2_pokemontypes'] =
        l$pokemonV2Pokemontypes.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$name = name;
    final l$pokemonV2Pokemontypes = pokemon_v2_pokemontypes;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$name,
      Object.hashAll(l$pokemonV2Pokemontypes.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$PokemonListV2$pokemon_v2_pokemon ||
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$PokemonListV2$pokemon_v2_pokemon
    on Query$PokemonListV2$pokemon_v2_pokemon {
  CopyWith$Query$PokemonListV2$pokemon_v2_pokemon<
          Query$PokemonListV2$pokemon_v2_pokemon>
      get copyWith => CopyWith$Query$PokemonListV2$pokemon_v2_pokemon(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonListV2$pokemon_v2_pokemon<TRes> {
  factory CopyWith$Query$PokemonListV2$pokemon_v2_pokemon(
    Query$PokemonListV2$pokemon_v2_pokemon instance,
    TRes Function(Query$PokemonListV2$pokemon_v2_pokemon) then,
  ) = _CopyWithImpl$Query$PokemonListV2$pokemon_v2_pokemon;

  factory CopyWith$Query$PokemonListV2$pokemon_v2_pokemon.stub(TRes res) =
      _CopyWithStubImpl$Query$PokemonListV2$pokemon_v2_pokemon;

  TRes call({
    int? id,
    String? name,
    List<Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes>?
        pokemon_v2_pokemontypes,
    String? $__typename,
  });
  TRes pokemon_v2_pokemontypes(
      Iterable<Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes> Function(
              Iterable<
                  CopyWith$Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes<
                      Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes>>)
          fn);
}

class _CopyWithImpl$Query$PokemonListV2$pokemon_v2_pokemon<TRes>
    implements CopyWith$Query$PokemonListV2$pokemon_v2_pokemon<TRes> {
  _CopyWithImpl$Query$PokemonListV2$pokemon_v2_pokemon(
    this._instance,
    this._then,
  );

  final Query$PokemonListV2$pokemon_v2_pokemon _instance;

  final TRes Function(Query$PokemonListV2$pokemon_v2_pokemon) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? name = _undefined,
    Object? pokemon_v2_pokemontypes = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PokemonListV2$pokemon_v2_pokemon(
        id: id == _undefined || id == null ? _instance.id : (id as int),
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        pokemon_v2_pokemontypes: pokemon_v2_pokemontypes == _undefined ||
                pokemon_v2_pokemontypes == null
            ? _instance.pokemon_v2_pokemontypes
            : (pokemon_v2_pokemontypes as List<
                Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes>),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  TRes pokemon_v2_pokemontypes(
          Iterable<Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes> Function(
                  Iterable<
                      CopyWith$Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes<
                          Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes>>)
              fn) =>
      call(
          pokemon_v2_pokemontypes: fn(_instance.pokemon_v2_pokemontypes.map((e) =>
              CopyWith$Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImpl$Query$PokemonListV2$pokemon_v2_pokemon<TRes>
    implements CopyWith$Query$PokemonListV2$pokemon_v2_pokemon<TRes> {
  _CopyWithStubImpl$Query$PokemonListV2$pokemon_v2_pokemon(this._res);

  final TRes _res;

  @override
  call({
    int? id,
    String? name,
    List<Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes>?
        pokemon_v2_pokemontypes,
    String? $__typename,
  }) =>
      _res;

  @override
  pokemon_v2_pokemontypes(fn) => _res;
}

class Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes {
  Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes({
    this.pokemon_v2_type,
    this.$__typename = 'pokemon_v2_pokemontype',
  });

  factory Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes.fromJson(
      Map<String, dynamic> json) {
    final l$pokemonV2Type = json['pokemon_v2_type'];
    final l$$__typename = json['__typename'];
    return Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes(
      pokemon_v2_type: l$pokemonV2Type == null
          ? null
          : Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes$pokemon_v2_type
              .fromJson((l$pokemonV2Type as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes$pokemon_v2_type?
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
            is! Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes ||
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

extension UtilityExtension$Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes
    on Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes {
  CopyWith$Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes<
          Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes>
      get copyWith =>
          CopyWith$Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes<
    TRes> {
  factory CopyWith$Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes(
    Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes instance,
    TRes Function(
            Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes)
        then,
  ) = _CopyWithImpl$Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes;

  factory CopyWith$Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes;

  TRes call({
    Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes$pokemon_v2_type?
        pokemon_v2_type,
    String? $__typename,
  });
  CopyWith$Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes$pokemon_v2_type<
      TRes> get pokemon_v2_type;
}

class _CopyWithImpl$Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes<
        TRes>
    implements
        CopyWith$Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes<
            TRes> {
  _CopyWithImpl$Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes(
    this._instance,
    this._then,
  );

  final Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes
      _instance;

  final TRes Function(
      Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? pokemon_v2_type = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes(
        pokemon_v2_type: pokemon_v2_type == _undefined
            ? _instance.pokemon_v2_type
            : (pokemon_v2_type
                as Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes$pokemon_v2_type?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  @override
  CopyWith$Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes$pokemon_v2_type<
      TRes> get pokemon_v2_type {
    final local$pokemonV2Type = _instance.pokemon_v2_type;
    return local$pokemonV2Type == null
        ? CopyWith$Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes$pokemon_v2_type
            .stub(_then(_instance))
        : CopyWith$Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes$pokemon_v2_type(
            local$pokemonV2Type, (e) => call(pokemon_v2_type: e));
  }
}

class _CopyWithStubImpl$Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes<
        TRes>
    implements
        CopyWith$Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes<
            TRes> {
  _CopyWithStubImpl$Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes(
      this._res);

  final TRes _res;

  @override
  call({
    Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes$pokemon_v2_type?
        pokemon_v2_type,
    String? $__typename,
  }) =>
      _res;

  @override
  CopyWith$Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes$pokemon_v2_type<
          TRes>
      get pokemon_v2_type =>
          CopyWith$Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes$pokemon_v2_type
              .stub(_res);
}

class Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes$pokemon_v2_type {
  Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes$pokemon_v2_type({
    required this.name,
    this.$__typename = 'pokemon_v2_type',
  });

  factory Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes$pokemon_v2_type.fromJson(
      Map<String, dynamic> json) {
    final l$name = json['name'];
    final l$$__typename = json['__typename'];
    return Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes$pokemon_v2_type(
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
            is! Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes$pokemon_v2_type ||
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

extension UtilityExtension$Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes$pokemon_v2_type
    on Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes$pokemon_v2_type {
  CopyWith$Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes$pokemon_v2_type<
          Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes$pokemon_v2_type>
      get copyWith =>
          CopyWith$Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes$pokemon_v2_type(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes$pokemon_v2_type<
    TRes> {
  factory CopyWith$Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes$pokemon_v2_type(
    Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes$pokemon_v2_type
        instance,
    TRes Function(
            Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes$pokemon_v2_type)
        then,
  ) = _CopyWithImpl$Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes$pokemon_v2_type;

  factory CopyWith$Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes$pokemon_v2_type.stub(
          TRes res) =
      _CopyWithStubImpl$Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes$pokemon_v2_type;

  TRes call({
    String? name,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes$pokemon_v2_type<
        TRes>
    implements
        CopyWith$Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes$pokemon_v2_type<
            TRes> {
  _CopyWithImpl$Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes$pokemon_v2_type(
    this._instance,
    this._then,
  );

  final Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes$pokemon_v2_type
      _instance;

  final TRes Function(
          Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes$pokemon_v2_type)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? name = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(
          Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes$pokemon_v2_type(
        name: name == _undefined || name == null
            ? _instance.name
            : (name as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes$pokemon_v2_type<
        TRes>
    implements
        CopyWith$Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes$pokemon_v2_type<
            TRes> {
  _CopyWithStubImpl$Query$PokemonListV2$pokemon_v2_pokemon$pokemon_v2_pokemontypes$pokemon_v2_type(
      this._res);

  final TRes _res;

  @override
  call({
    String? name,
    String? $__typename,
  }) =>
      _res;
}
