import 'package:flutter/material.dart';
import 'package:pokedex/screens/region_selection_screen.dart';
import 'package:pokedex/widgets/page_transitions.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              const Text(
                'Pokédex',
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: Colors.white, letterSpacing: 2),
              ),
              const SizedBox(height: 8),
              const Text(
                'Gotta Catch \'Em All!',
                style: TextStyle(fontSize: 16, color: Colors.white70, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 60),
              _MenuButton(
                label: 'Pokédex',
                icon: Icons.catching_pokemon,
                color: Colors.white,
                textColor: const Color(0xFF6E95FC),
                onTap: () {
                  Navigator.push(context, ScaleFadePageRoute(child: const RegionSelectionScreen()));
                },
              ),
              const SizedBox(height: 20),
              _MenuButton(
                label: 'Trivia (Coming Soon)',
                icon: Icons.question_mark_rounded,
                color: Colors.white.withOpacity(0.2),
                textColor: Colors.white,
                onTap: () {},
              ),
              const SizedBox(height: 20),
              _MenuButton(
                label: 'Settings',
                icon: Icons.settings,
                color: Colors.white.withOpacity(0.2),
                textColor: Colors.white,
                onTap: () {},
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