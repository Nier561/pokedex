import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/presentation/providers/language_provider.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentLocale = ref.watch(languageProvider);
    // Helper simple para traducir dentro del build
    String tr(String key) => S(currentLocale).get(key);

    return Scaffold(
      appBar: AppBar(
        title: Text(tr('settings'), style: const TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.language, color: Color(0xFF8B7ED8)),
            title: Text(tr('language')),
            subtitle: Text(currentLocale.languageCode == 'es' ? 'Español' : 'English'),
            trailing: DropdownButton<String>(
              value: currentLocale.languageCode,
              underline: Container(),
              items: const [
                DropdownMenuItem(value: 'en', child: Text('🇺🇸 English')),
                DropdownMenuItem(value: 'es', child: Text('🇪🇸 Español')),
              ],
              onChanged: (val) {
                if (val != null) {
                  ref.read(languageProvider.notifier).changeLanguage(Locale(val));
                }
              },
            ),
          ),
          // Aquí irían más ajustes si los tuvieras (Tema oscuro, etc.)
        ],
      ),
    );
  }
}