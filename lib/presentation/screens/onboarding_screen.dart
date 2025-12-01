import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:pokedex/data/datasources/preferences_local_data_source.dart';
import 'package:pokedex/presentation/screens/main_screen.dart';
import 'package:pokedex/presentation/widgets/page_transitions.dart';

/// Pantalla de introducción para nuevos usuarios.
/// Muestra selección de idioma, mensaje de bienvenida y carrusel de características.
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  final AudioPlayer _audioPlayer = AudioPlayer();
  final _prefs = PreferencesLocalDataSource();

  int _currentPage = 0;
  bool _languageSelected = false;
  bool _showWelcome = false;
  String _currentLanguage = 'en';

  @override
  void initState() {
    super.initState();
  }

  Future<void> _playSound() async {
    try {
      await _audioPlayer.play(AssetSource('sounds/pokeball.mp3'));
    } catch (e) {
      debugPrint('Error playing sound: $e');
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    _audioPlayer.dispose();
    super.dispose();
  }

  List<OnboardingItem> get _items {
    final isEs = _currentLanguage == 'es';
    return [
      OnboardingItem(
        title: isEs ? 'Bienvenido a Pokedex' : 'Welcome to Pokedex',
        description: isEs
            ? 'Tu compañero definitivo para el mundo Pokémon.'
            : 'Your ultimate companion for the Pokemon world.',
        image: 'assets/images/pokedex icono 2.webp',
        icon: Icons.catching_pokemon,
      ),
      OnboardingItem(
        title: isEs ? 'Explora Generaciones' : 'Explore Generations',
        description: isEs
            ? 'Descubre Pokémon desde Kanto hasta Paldea. Filtra por tipo, generación y más.'
            : 'Discover Pokemon from Kanto to Paldea. Filter by type, generation, and more.',
        image: '',
        icon: Icons.map,
      ),
      OnboardingItem(
        title: isEs ? 'Pon a prueba tu conocimiento' : 'Test Your Knowledge',
        description: isEs
            ? 'Desafíate con el juego de Trivia y demuestra que eres un Maestro Pokémon.'
            : 'Challenge yourself with the Trivia game and prove you are a Pokemon Master.',
        image: '',
        icon: Icons.quiz,
      ),
      OnboardingItem(
        title: isEs ? 'Guarda Favoritos' : 'Save Favorites',
        description: isEs
            ? 'Lleva un registro de tus Pokémon favoritos y construye tu equipo soñado.'
            : 'Keep track of your favorite Pokemon and build your dream team.',
        image: '',
        icon: Icons.favorite,
      ),
    ];
  }

  void _selectLanguage(String languageCode) {
    setState(() {
      _currentLanguage = languageCode;
      _languageSelected = true;
      _showWelcome = true;
    });
    _prefs.saveLanguage(languageCode);
    _playSound();
  }

  void _continueToOnboarding() {
    setState(() {
      _showWelcome = false;
    });
  }

  void _onNext() {
    if (_currentPage < _items.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      _finishOnboarding();
    }
  }

  void _finishOnboarding() async {
    await _prefs.saveOnboardingSeen();
    if (mounted) {
      Navigator.of(
        context,
      ).pushReplacement(SlideRightPageRoute(child: const MainScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    if (!_languageSelected) {
      return _buildLanguageSelection(theme);
    }

    if (_showWelcome) {
      return _buildWelcomeScreen(theme);
    }

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) => setState(() => _currentPage = index),
                itemCount: _items.length,
                itemBuilder: (context, index) {
                  final item = _items[index];
                  return _buildPage(item, theme);
                },
              ),
            ),
            _buildBottomControls(theme),
          ],
        ),
      ),
    );
  }

  Widget _buildLanguageSelection(ThemeData theme) {
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.language, size: 80, color: Colors.grey),
            const SizedBox(height: 40),
            Text(
              'Select Language / Selecciona Idioma',
              style: theme.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () => _selectLanguage('en'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 16,
                ),
              ),
              child: const Text('English', style: TextStyle(fontSize: 18)),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _selectLanguage('es'),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 16,
                ),
              ),
              child: const Text('Español', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWelcomeScreen(ThemeData theme) {
    final isEs = _currentLanguage == 'es';
    final message = isEs
        ? '¡Hola! ¡Bienvenido al mundo de Pokémon!'
        : 'Hello! Welcome to the world of Pokemon!';
    final buttonText = isEs ? 'Continuar' : 'Continue';

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: theme.colorScheme.primary.withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.catching_pokemon,
                size: 100,
                color: theme.colorScheme.primary,
              ),
            ),
            const SizedBox(height: 40),
            Text(
              message,
              style: theme.textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: theme.textTheme.bodyLarge?.color,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 60),
            ElevatedButton(
              onPressed: _continueToOnboarding,
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.colorScheme.primary,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 16,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: Text(
                buttonText,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPage(OnboardingItem item, ThemeData theme) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Icono o Imagen
          Container(
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withValues(alpha: 0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(item.icon, size: 100, color: theme.colorScheme.primary),
          ),
          const SizedBox(height: 40),
          Text(
            item.title,
            style: theme.textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: theme.textTheme.bodyLarge?.color,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          Text(
            item.description,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: Colors.grey,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildBottomControls(ThemeData theme) {
    final isEs = _currentLanguage == 'es';
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Indicadores de página
          Row(
            children: List.generate(
              _items.length,
              (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: const EdgeInsets.only(right: 8),
                height: 8,
                width: _currentPage == index ? 24 : 8,
                decoration: BoxDecoration(
                  color: _currentPage == index
                      ? theme.colorScheme.primary
                      : Colors.grey.withValues(alpha: 0.3),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
          ),
          // Botón de acción
          ElevatedButton(
            onPressed: _onNext,
            style: ElevatedButton.styleFrom(
              backgroundColor: theme.colorScheme.primary,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: Text(
              _currentPage == _items.length - 1
                  ? (isEs ? 'Comenzar' : 'Get Started')
                  : (isEs ? 'Siguiente' : 'Next'),
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class OnboardingItem {
  final String title;
  final String description;
  final String image;
  final IconData icon;

  OnboardingItem({
    required this.title,
    required this.description,
    required this.image,
    required this.icon,
  });
}
