import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:pokedex/api.dart';
import 'package:pokedex/screens/list_screen.dart';
import 'package:pokedex/screens/detail_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Si luego usas HiveStore para cache persistente:
  // await initHiveForFlutter();

  runApp(const PokeDexApp());
}

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
