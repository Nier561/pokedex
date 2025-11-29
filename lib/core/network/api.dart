import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:gql_dedupe_link/gql_dedupe_link.dart';
import 'package:http/http.dart' as http;

class TimeoutClient extends http.BaseClient {
  final http.Client _inner = http.Client();
  final Duration _timeout;

  TimeoutClient(this._timeout);

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    debugPrint('TimeoutClient: Sending request to ${request.url} with timeout $_timeout');
    return _inner.send(request).timeout(_timeout);
  }
}

/// Configuración central del cliente GraphQL utilizado en toda la app.
final HttpLink httpLink = HttpLink(
  'https://beta.pokeapi.co/graphql/v1beta',
  defaultHeaders: const {
    'accept': 'application/json',
    'content-type': 'application/json',
  },
  httpClient: TimeoutClient(const Duration(seconds: 45)),
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