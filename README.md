# Pokédex Flutter - Proyecto Final

**Pontificia Universidad Católica Madre y Maestra**
**Facultad de Ciencias e Ingeniería**
**Escuela de Ingeniería en Computación y Telecomunicaciones**
**Desarrollo de Aplicaciones Móviles**

---

## Descripción General

Este proyecto es una aplicación móvil multiplataforma (Android/iOS) desarrollada con **Flutter** que funciona como una Pokédex interactiva y moderna. Utiliza la **API GraphQL de PokeAPI** para obtener datos en tiempo real, implementa **Clean Architecture** para una base de código mantenible y escalable, y utiliza **Riverpod** para una gestión de estado robusta.

La aplicación no solo permite explorar Pokémon, sino que incluye características avanzadas como persistencia local, modo offline, temas dinámicos, y un juego de trivia integrado.

---

## Características Principales

### 1. Interfaz de Usuario (UI/UX)
-   **Diseño Moderno**: Implementación de Material Design 3 con temas dinámicos y soporte para **Modo Oscuro y Claro**.
-   **Animaciones**: Transiciones Hero, animaciones de carga (esqueletos/placeholders), y microinteracciones en botones y tarjetas.
-   **Búsqueda y Filtrado**: Barra de búsqueda con *debounce* para optimizar consultas. Filtros por Generación, Tipo y ordenamiento (ID, Nombre, Poder).
-   **Detalle Completo**:
    -   Estadísticas base con barras visuales.
    -   Tipos con gradientes dinámicos.
    -   Habilidades (incluyendo ocultas).
    -   Cadena de evolución interactiva.
    -   Movimientos categorizados (Nivel, MT, Tutor, Huevo).
    -   Variantes (Shiny) con toggle animado.
    -   Reproducción del "grito" (cry) del Pokémon.

### 2. Arquitectura y Tecnología
-   **Clean Architecture**: Separación estricta en capas:
    -   `domain`: Entidades, Repositorios (interfaces) y Casos de Uso.
    -   `data`: Modelos (DTOs), Fuentes de Datos (Remota/Local) e Implementación de Repositorios.
    -   `presentation`: Widgets, Pantallas y Providers (State Management).
-   **GraphQL**: Cliente optimizado con `graphql_flutter`.
    -   Paginación infinita basada en `offset`.
    -   Caché local para minimizar peticiones de red.
-   **Gestión de Estado**: Uso de **Riverpod** para inyección de dependencias y manejo reactivo del estado.

### 3. Persistencia y Modo Offline
-   **Hive / SharedPreferences**: Almacenamiento local para:
    -   Pokémon Favoritos (accesibles sin internet).
    -   Configuración de usuario (Tema, Idioma).
    -   Progreso del juego de Trivia.
    -   Estado del Onboarding.

### 4. Gamificación (Trivia)
-   Juego "¿Quién es este Pokémon?" integrado.
-   Sistema de puntuación y racha de victorias.
-   Ranking local de mejores puntuaciones.
-   Logros desbloqueables visualmente.

### 5. Extras
-   **Onboarding**: Pantalla de introducción animada para nuevos usuarios.
-   **Reset App**: Opción de depuración para restablecer todos los datos.
-   **Internacionalización**: Soporte básico para Español e Inglés.

---

## Estructura del Proyecto

```
lib/
├── core/                   # Utilidades, configuración de red, constantes
├── data/                   # Capa de Datos
│   ├── datasources/        # Fuentes remotas (GraphQL) y locales (Hive/Prefs)
│   ├── models/             # DTOs (Data Transfer Objects) y mapeadores
│   └── repositories/       # Implementación de los repositorios del dominio
├── domain/                 # Capa de Dominio (Reglas de Negocio)
│   ├── entities/           # Objetos de negocio puros
│   └── repositories/       # Interfaces (contratos) de los repositorios
├── presentation/           # Capa de Presentación (UI)
│   ├── providers/          # StateNotifiers y Providers de Riverpod
│   ├── screens/            # Pantallas de la aplicación
│   └── widgets/            # Componentes reutilizables
└── main.dart               # Punto de entrada e inyección de dependencias
```

---

## Configuración y Ejecución

### Requisitos Previos
-   Flutter SDK (Stable)
-   Dart SDK

### Pasos
1.  **Clonar el repositorio**:
    ```bash
    git clone <url-del-repo>
    cd pokedex
    ```
2.  **Instalar dependencias**:
    ```bash
    flutter pub get
    ```
3.  **Generar código (si es necesario)**:
    Si se modifican los archivos `.graphql` o modelos de Hive:
    ```bash
    dart run build_runner build --delete-conflicting-outputs
    ```
4.  **Ejecutar la aplicación**:
    ```bash
    flutter run
    ```

---

## Decisiones de Diseño y GraphQL

### Uso de GraphQL
Se optó por **GraphQL** sobre REST para evitar el *over-fetching* y *under-fetching* de datos.
-   **Queries**: Definidas en `lib/core/network/queries/`. Solicitamos solo los campos necesarios (nombre, id, tipos, stats) para la lista, y detalles completos solo en la vista de detalle.
-   **Cliente**: Configurado en `lib/core/network/api.dart` con políticas de caché `cacheFirst` para detalles (rapidez) y `cacheAndNetwork` para listas (actualización).

### Optimización de Imágenes
-   Uso de `cached_network_image` para guardar en caché las imágenes de los Pokémon y reducir el consumo de datos.
-   Implementación de `precacheImage` antes de generar capturas de pantalla para compartir.

### Accesibilidad
-   Uso de etiquetas `Semantics` en tarjetas y botones para soporte de lectores de pantalla.
-   Contraste de colores verificado en modos Claro y Oscuro.

---

## Autor
Proyecto realizado para la asignatura de Desarrollo de Aplicaciones Móviles.
