import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/presentation/providers/language_provider.dart'; // Import para traducciones
import 'package:pokedex/presentation/screens/region_selection_screen.dart'; // O generation_selection_screen.dart
import 'package:pokedex/presentation/screens/list_screen.dart';
import 'package:pokedex/presentation/screens/settings_screen.dart'; // Import Settings
import 'package:pokedex/presentation/widgets/page_transitions.dart';

class MainScreen extends ConsumerWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Escuchamos el idioma
    final locale = ref.watch(languageProvider);
    String tr(String key) => S(locale).get(key);

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF6E95FC), Color(0xFF8B7ED8)],
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                tr('app_title'), // "Pokédex"
                style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white, letterSpacing: 2),
              ),
              const SizedBox(height: 8),
              const Text(
                'Gotta Catch \'Em All!',
                style: TextStyle(fontSize: 16, color: Colors.white70, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 60),

              _MenuButton(
                label: tr('app_title'), // "Pokédex"
                icon: Icons.catching_pokemon,
                color: Colors.white,
                textColor: const Color(0xFF6E95FC),
                onTap: () {
                  Navigator.push(context, SlideRightPageRoute(child: const PokemonListScreen()));
                },
              ),
              const SizedBox(height: 20),

              _MenuButton(
                label: tr('generation'), // "Generations"
                icon: Icons.map,
                color: Colors.white.withOpacity(0.2),
                textColor: Colors.white,
                onTap: () {
                  Navigator.push(context, SlideRightPageRoute(child: const GenerationSelectionScreen()));
                },
              ),
              const SizedBox(height: 20),

              _MenuButton(
                label: 'Trivia (Soon)', // Puedes agregar 'trivia' al diccionario en language_provider.dart
                icon: Icons.question_mark_rounded,
                color: Colors.white.withOpacity(0.2),
                textColor: Colors.white,
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Coming Soon!')));
                },
              ),
              const SizedBox(height: 20),

              _MenuButton(
                label: tr('settings'), // "Settings" / "Ajustes"
                icon: Icons.settings,
                color: Colors.white.withOpacity(0.2),
                textColor: Colors.white,
                onTap: () {
                  // Navegación a SettingsScreen
                  Navigator.push(context, SlideRightPageRoute(child: const SettingsScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MenuButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color color;
  final Color textColor;
  final VoidCallback onTap;

  const _MenuButton({required this.label, required this.icon, required this.color, required this.textColor, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(20),
        elevation: 4,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: 60,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(label, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: textColor)),
                Icon(icon, color: textColor),
              ],
            ),
          ),
        ),
      ),
    );
  }
}