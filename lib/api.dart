import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:gql_dedupe_link/gql_dedupe_link.dart';

/// Configuración central del cliente GraphQL utilizado en toda la app.
/// Link HTTP hacia el endpoint GraphQL de la PokéAPI.
/// (v1beta es el estable al momento)
final HttpLink httpLink = HttpLink(
  'https://beta.pokeapi.co/graphql/v1beta',
  defaultHeaders: const {
    'accept': 'application/json',
    'content-type': 'application/json',
  },
);

/// Cliente GraphQL global envuelto en un ValueNotifier para GraphQLProvider.
/// Usa cache en memoria (InMemoryStore). Si quieres cache persistente,
/// inicializa Hive y usa GraphQLCache(store: HiveStore()).
ValueNotifier<GraphQLClient> client = ValueNotifier(
  GraphQLClient(
    // Evita solicitudes duplicadas/race-conditions cuando el UI dispara varias
    // llamadas (paginación, refresh, etc.).
    link: Link.from([
      // Evita solicitudes duplicadas/race-conditions.
      DedupeLink(),
      httpLink,
    ]),
    cache: GraphQLCache(store: InMemoryStore()),
  ),
);
