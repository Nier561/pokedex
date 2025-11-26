import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:gql_dedupe_link/gql_dedupe_link.dart';

/// Configuración central del cliente GraphQL utilizado en toda la app.
final HttpLink httpLink = HttpLink(
  'https://beta.pokeapi.co/graphql/v1beta',
  defaultHeaders: const {
    'accept': 'application/json',
    'content-type': 'application/json',
  },
);

/// Instancia simple del cliente para inyección en Repositorios
GraphQLClient getGraphQLClient() {
  return GraphQLClient(
    link: Link.from([DedupeLink(), httpLink]),
    cache: GraphQLCache(store: InMemoryStore()),
  );
}

// Mantenemos esto por si alguna librería externa lo requiere, pero usaremos Inyección.
ValueNotifier<GraphQLClient> clientNotifier = ValueNotifier(getGraphQLClient());