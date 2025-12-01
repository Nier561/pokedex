import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
// Core
import 'package:pokedex/core/network/api.dart';
// Domain
import 'package:pokedex/domain/repositories/i_pokemon_repository.dart';
import 'package:pokedex/domain/repositories/i_favorites_repository.dart';
// Data
import 'package:pokedex/data/datasources/pokemon_remote_data_source.dart';
import 'package:pokedex/data/datasources/pokemon_local_data_source.dart';
import 'package:pokedex/data/datasources/favorites_local_data_source.dart';
import 'package:pokedex/data/datasources/trivia_local_data_source.dart';
import 'package:pokedex/data/repositories/pokemon_repository_impl.dart';
import 'package:pokedex/data/repositories/favorites_repository_impl.dart';
import 'package:pokedex/data/repositories/trivia_repository_impl.dart';
// Presentation
import 'package:pokedex/presentation/screens/main_screen.dart';
import 'package:pokedex/presentation/screens/onboarding_screen.dart';
import 'package:pokedex/presentation/providers/trivia_provider.dart';
import 'package:pokedex/presentation/providers/theme_provider.dart';
import 'package:pokedex/data/datasources/preferences_local_data_source.dart';

/// INYECCIÓN DE DEPENDENCIAS CON RIVERPOD
/// Estos providers crean las instancias de los repositorios que usaremos en la app.

// Provider para el repositorio de Pokémon
final pokemonRepositoryProvider = Provider<IPokemonRepository>((ref) {
  throw UnimplementedError('Provider must be overridden');
});

// Provider para el repositorio de Favoritos
final favoritesRepositoryProvider = Provider<IFavoritesRepository>((ref) {
  final localDataSource = FavoritesLocalDataSource();
  return FavoritesRepositoryImpl(localDataSource);
});

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  // Inicializar Hive
  await Hive.initFlutter();

  // Inicializar Pokemon Datasource
  final pokemonLocalDataSource = PokemonLocalDataSource();
  await pokemonLocalDataSource.init();

  final client = getGraphQLClient();
  final pokemonRemoteDataSource = PokemonRemoteDataSource(client);
  final pokemonRepository = PokemonRepositoryImpl(
    pokemonRemoteDataSource,
    pokemonLocalDataSource,
  );

  // Inicializar Trivia Datasource
  final triviaDataSource = TriviaLocalDataSource();
  await triviaDataSource.init();

  final triviaRepository = TriviaRepositoryImpl(triviaDataSource);

  // Check Onboarding
  final prefs = PreferencesLocalDataSource();
  final seenOnboarding = await prefs.getOnboardingSeen();

  // ProviderScope es obligatorio para que Riverpod funcione
  runApp(
    ProviderScope(
      overrides: [
        triviaRepositoryProvider.overrideWithValue(triviaRepository),
        pokemonRepositoryProvider.overrideWithValue(pokemonRepository),
      ],
      child: PokeDexApp(seenOnboarding: seenOnboarding),
    ),
  );
}

class PokeDexApp extends StatelessWidget {
  final bool seenOnboarding;

  const PokeDexApp({super.key, required this.seenOnboarding});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final themeMode = ref.watch(themeProvider);
        return MaterialApp(
          title: 'Pokédex',
          debugShowCheckedModeBanner: false,
          themeMode: themeMode,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color(0xFF8B7ED8),
            ),
            useMaterial3: true,
            scaffoldBackgroundColor: const Color(0xFFF5F5F5),
            brightness: Brightness.light,
          ),
          darkTheme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: const Color(0xFF8B7ED8),
              brightness: Brightness.dark,
            ),
            useMaterial3: true,
            scaffoldBackgroundColor: const Color(0xFF121212),
            brightness: Brightness.dark,
          ),
          home: seenOnboarding ? const MainScreen() : const OnboardingScreen(),
        );
      },
    );
  }
}
