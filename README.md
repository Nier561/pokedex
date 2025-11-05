# Pokédex Flutter

App Flutter que consume PokéAPI GraphQL para listar, buscar y explorar Pokémon. Incluye búsqueda por nombre, filtros por tipo y generación, paginación infinita y una pantalla de detalle con estadísticas.

**Stack**

- Flutter + Material 3
- `graphql_flutter`, `gql`, `gql_dedupe_link`
- `build_runner` + `graphql_codegen` (código de queries)
- `google_fonts`, `audioplayers`, `hive` (opcional)

---

## Arquitectura

- `lib/api.dart`: configura `GraphQLClient` con `HttpLink` al endpoint y `DedupeLink`.
- `lib/main.dart`: inyecta el cliente con `GraphQLProvider` y define rutas.
- `lib/screens/list_screen.dart`: grilla, búsqueda, filtros y paginación (`fetchMore`).
- `lib/screens/detail_screen.dart`: detalle con stats, habilidades y evolución.
- `lib/widgets/`: tarjetas, badges, transiciones (`ScaleFadePageRoute`).
- `lib/graphql/`: queries `.graphql` y sus `.dart` generados.

---

## Flujo de Datos

- `GraphQLProvider` provee el cliente a toda la app.
- Lista:
  - Query `PokemonListV2(limit, offset, search)` con `FetchPolicy.cacheAndNetwork`.
  - Paginación: al acercarse al final, `fetchMore` agrega más resultados.
  - Búsqueda por texto: filtra localmente; desactiva paginación y loader.
  - Filtros por tipo y generación: filtran localmente; si no hay texto, la paginación sigue activa para capturar más coincidencias.
- Detalle:
  - Prefetch con `FetchPolicy.cacheFirst`, luego navegación con `pushReplacement` para mantener un solo detalle en el stack.

---

## GraphQL

**Endpoint**

- `https://beta.pokeapi.co/graphql/v1beta`

**Query de lista (resumen)**

- Campos: `id`, `name`, `pokemon_v2_pokemontypes { pokemon_v2_type { name } }`
- Variables:
  - `limit`: tamaño de página
  - `offset`: desplazamiento
  - `search`: nombre parcial (`_ilike`), ejemplo: `%pika%`

**Query de detalle (resumen)**

- `pokemon_v2_pokemon_by_pk(id)` con stats, abilities y cadena de evolución.

**Políticas**

- Lista: `cacheAndNetwork` (respuesta rápida y refresco en segundo plano).
- Detalle: `cacheFirst` (minimiza red si ya está cacheado).
- `DedupeLink`: evita repetir requests cuando hay scroll o taps rápidos.

---

## Búsqueda y Filtros

- Búsqueda por nombre: filtra localmente (case-insensitive, parcial).
- Filtro por tipo: uno de `normal|fire|water|grass|...|fairy`.
- Filtro por generación (rango local por `id`):
  - Gen 1 `1–151`, Gen 2 `152–251`, ..., Gen 9 `899–1010`.
- Loader de fin de grilla: aparece solo si no hay texto y parece haber más páginas (`pokes.length % _pageSize == 0`).

---

## Navegación y UX

- Transición personalizada `scale+fade` al abrir detalle.
- Swipe horizontal en detalle usa `pushReplacement`: el botón atrás siempre vuelve a la lista.
- Errores de red: pantalla con `RefreshIndicator` para reintentar (`refetch`).

---

## Decisiones de Diseño

- Filtros locales (tipo/generación) por simplicidad y rapidez.
- Desactivar paginación durante búsqueda por texto para evitar ruido visual y llamadas innecesarias.
- Prefetch del detalle con `cacheFirst` para apertura inmediata.
- `DedupeLink` para robustez ante múltiples interacciones concurrentes.

---

## Código Generado (GraphQL)

- Queries en `lib/graphql/*.graphql` con `.dart` generados junto a cada archivo.
- Si cambias la ubicación de queries, ajusta `build.yaml` o elimínalo y usa generación “in place”.
