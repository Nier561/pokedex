import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

/// Link HTTP hacia el endpoint GraphQL de la PokéAPI.
/// (v1beta es el estable al momento)
final HttpLink httpLink = HttpLink('https://beta.pokeapi.co/graphql/v1beta');

/// Cliente GraphQL global envuelto en un ValueNotifier para GraphQLProvider.
/// Usa cache en memoria (InMemoryStore). Si quieres cache persistente,
/// inicializa Hive y usa GraphQLCache(store: HiveStore()).
ValueNotifier<GraphQLClient> client = ValueNotifier(
  GraphQLClient(
    link: httpLink,
    cache: GraphQLCache(store: InMemoryStore()),
  ),
);
