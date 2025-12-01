import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/presentation/providers/language_provider.dart';
import 'package:pokedex/presentation/providers/theme_provider.dart';
import 'package:pokedex/data/datasources/preferences_local_data_source.dart';

/// Pantalla de configuración de la aplicación.
/// Permite al usuario:
/// - Cambiar el idioma de la aplicación (Inglés/Español).
/// - Ver información sobre la versión de la app.
class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentLocale = ref.watch(languageProvider);
    // Función auxiliar para traducción
    String tr(String key) => S(currentLocale).get(key);
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: Stack(
        children: [
          // Fondo decorativo con icono
          Positioned(
            top: -60,
            right: -60,
            child: Icon(
              Icons.settings,
              size: 300,
              color: isDark
                  ? Colors.white.withOpacity(0.05)
                  : Colors.grey.withOpacity(0.05),
            ),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                // Encabezado de la pantalla
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: theme.textTheme.bodyLarge?.color,
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        tr('settings'),
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: theme.textTheme.bodyLarge?.color,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),

                // Lista de opciones de configuración
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
                            ref
                                .read(languageProvider.notifier)
                                .changeLanguage(Locale(val));
                          }
                        },
                      ),

                      const SizedBox(height: 32),

                      _SectionHeader(title: 'Appearance'),
                      const SizedBox(height: 16),
                      Consumer(
                        builder: (context, ref, child) {
                          final themeMode = ref.watch(themeProvider);
                          final isDarkModeEnabled = themeMode == ThemeMode.dark;
                          return Container(
                            decoration: BoxDecoration(
                              color: theme.cardColor,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.05),
                                  blurRadius: 15,
                                  offset: const Offset(0, 5),
                                ),
                              ],
                            ),
                            child: SwitchListTile(
                              title: Text(
                                'Dark Mode',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: theme.textTheme.bodyLarge?.color,
                                ),
                              ),
                              secondary: Icon(
                                isDarkModeEnabled
                                    ? Icons.dark_mode
                                    : Icons.light_mode,
                                color: const Color(0xFF8B7ED8),
                              ),
                              value: isDarkModeEnabled,
                              onChanged: (val) {
                                ref
                                    .read(themeProvider.notifier)
                                    .toggleTheme(val);
                              },
                              activeColor: const Color(0xFF8B7ED8),
                            ),
                          );
                        },
                      ),

                      const SizedBox(height: 32),

                      const _SectionHeader(title: 'App Info'),
                      const SizedBox(height: 16),
                      _InfoCard(
                        icon: Icons.info_outline,
                        title: tr('about'),
                        subtitle: 'v1.0.0',
                      ),

                      const SizedBox(height: 32),

                      const _SectionHeader(title: 'Debug'),
                      const SizedBox(height: 16),
                      Container(
                        decoration: BoxDecoration(
                          color: theme.cardColor,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.05),
                              blurRadius: 15,
                              offset: const Offset(0, 5),
                            ),
                          ],
                        ),
                        child: ListTile(
                          title: Text(
                            'Reset App Data',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.redAccent,
                            ),
                          ),
                          leading: const Icon(
                            Icons.delete_forever,
                            color: Colors.redAccent,
                          ),
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: const Text('Reset App Data?'),
                                content: const Text(
                                  'This will clear all your favorites, settings, and onboarding status. The app will close.',
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: const Text('Cancel'),
                                  ),
                                  TextButton(
                                    onPressed: () async {
                                      Navigator.pop(context);
                                      await PreferencesLocalDataSource()
                                          .clearAll();
                                      // Cierra el diálogo y muestra confirmación
                                      if (context.mounted) {
                                        ScaffoldMessenger.of(
                                          context,
                                        ).showSnackBar(
                                          const SnackBar(
                                            content: Text(
                                              'Data cleared. Please restart the app.',
                                            ),
                                            duration: Duration(seconds: 3),
                                          ),
                                        );
                                      }
                                    },
                                    child: const Text(
                                      'Reset',
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
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
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Theme.of(context).textTheme.bodyMedium?.color?.withOpacity(0.6),
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
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
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
          Divider(height: 1, color: theme.dividerColor.withOpacity(0.1)),
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
    final theme = Theme.of(context);
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
                color: isSelected
                    ? const Color(0xFF8B7ED8)
                    : theme.textTheme.bodyLarge?.color,
              ),
            ),
            const Spacer(),
            if (isSelected)
              const Icon(
                Icons.check_circle,
                color: Color(0xFF4FC1A6),
                size: 24,
              ),
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
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
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
              color: theme.scaffoldBackgroundColor,
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
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: theme.textTheme.bodyLarge?.color,
                ),
              ),
              Text(
                subtitle,
                style: TextStyle(fontSize: 14, color: Colors.grey[500]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
