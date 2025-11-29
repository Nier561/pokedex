import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/presentation/providers/language_provider.dart';

/// Pantalla de configuración de la aplicación.
/// Permite al usuario:
/// - Cambiar el idioma de la aplicación (Inglés/Español).
/// - Ver información sobre la versión de la app.
class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentLocale = ref.watch(languageProvider);
    // Helper simple para traducir dentro del build
    String tr(String key) => S(currentLocale).get(key);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Fondo decorativo
          Positioned(
            top: -60,
            right: -60,
            child: Icon(
              Icons.settings,
              size: 300,
              color: Colors.grey.withOpacity(0.05),
            ),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                // Header
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back, color: Colors.black87),
                        onPressed: () => Navigator.pop(context),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        tr('settings'),
                        style: const TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                
                // Contenido
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    children: [
                      _SectionHeader(title: tr('language')),
                      const SizedBox(height: 16),
                      _LanguageSelector(
                        currentLocale: currentLocale,
                        onChanged: (val) {
                          if (val != null) {
                            ref.read(languageProvider.notifier).changeLanguage(Locale(val));
                          }
                        },
                      ),
                      
                      const SizedBox(height: 32),
                      
                      const _SectionHeader(title: 'App Info'), // Podría necesitar traducción
                      const SizedBox(height: 16),
                      _InfoCard(
                        icon: Icons.info_outline,
                        title: tr('about'),
                        subtitle: 'v1.0.0',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;
  const _SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.black54,
      ),
    );
  }
}

/// Widget selector de idioma personalizado.
/// Muestra las opciones disponibles en una tarjeta con estilo moderno.
/// Permite cambiar entre Inglés y Español de forma intuitiva.
class _LanguageSelector extends StatelessWidget {
  final Locale currentLocale;
  final ValueChanged<String?> onChanged;

  const _LanguageSelector({
    required this.currentLocale,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          _LanguageOption(
            label: 'English',
            flag: '🇺🇸',
            value: 'en',
            isSelected: currentLocale.languageCode == 'en',
            onTap: () => onChanged('en'),
          ),
          Divider(height: 1, color: Colors.grey.withOpacity(0.1)),
          _LanguageOption(
            label: 'Español',
            flag: '🇪🇸',
            value: 'es',
            isSelected: currentLocale.languageCode == 'es',
            onTap: () => onChanged('es'),
          ),
        ],
      ),
    );
  }
}

class _LanguageOption extends StatelessWidget {
  final String label;
  final String flag;
  final String value;
  final bool isSelected;
  final VoidCallback onTap;

  const _LanguageOption({
    required this.label,
    required this.flag,
    required this.value,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(20),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Row(
          children: [
            Text(flag, style: const TextStyle(fontSize: 24)),
            const SizedBox(width: 16),
            Text(
              label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: isSelected ? const Color(0xFF8B7ED8) : Colors.black87,
              ),
            ),
            const Spacer(),
            if (isSelected)
              const Icon(Icons.check_circle, color: Color(0xFF4FC1A6), size: 24),
          ],
        ),
      ),
    );
  }
}

/// Tarjeta informativa genérica.
/// Utilizada para mostrar información estática como la versión de la app o créditos.
/// Incluye un icono, título y subtítulo con el estilo visual de la app.
class _InfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const _InfoCard({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: Colors.grey[600]),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[500],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}