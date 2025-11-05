/// Punto de entrada y configuración global de la aplicación Pokédex.
///
/// Aquí se inicializa Flutter, se prepara el cliente de GraphQL y se define
/// la raíz del árbol de widgets que compone toda la experiencia de usuario.
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:pokedex/api.dart';
import 'package:pokedex/screens/list_screen.dart';
import 'package:pokedex/screens/detail_screen.dart';

/// Inicializa Flutter y lanza la aplicación con el árbol de widgets raíz.
///
/// No se realizan tareas adicionales porque la cache persistente de Hive es
/// opcional y está comentada; mantener la función `async` permite activarla
/// rápidamente en el futuro sin cambiar la firma del método.
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Si luego usas HiveStore para cache persistente:
  // await initHiveForFlutter();

  runApp(const PokeDexApp());
}

/// Widget raíz que configura tema, rutas y cliente GraphQL de la app.
class PokeDexApp extends StatelessWidget {
  const PokeDexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      // Inyecta el client a toda la app
      client: client,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pokédex',
        // Tema básico (puedes moverlo a un ThemeData propio)
        theme: ThemeData(
          colorSchemeSeed: Colors.red,
          useMaterial3: true,
          textTheme: GoogleFonts.poppinsTextTheme(),
        ),
        // Rutas simples
        routes: {
          '/': (_) => const PokemonListScreen(),
          '/detail': (ctx) {
            final id = ModalRoute.of(ctx)!.settings.arguments as int;
            return PokemonDetailScreen(id: id);
          },
        },
      ),
    );
  }
}
