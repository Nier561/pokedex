/// Archivo: name_input_modal.dart
///
/// Descripción:
/// Cuadro de diálogo modal que solicita el nombre del usuario antes de iniciar el juego de Trivia.
///
/// Funcionalidades Principales:
/// - **Validación**: Impide enviar el formulario si el campo de texto está vacío.
/// - **Diseño Adaptativo**: Se ajusta al tema claro/oscuro de la aplicación.
/// - **Internacionalización**: Textos de título, subtítulo y placeholder traducidos.
/// - **Feedback Táctil**: Botón de "Comenzar" que se habilita/deshabilita dinámicamente.
///
/// Uso:
/// Se invoca desde `TriviaMenuScreen` cuando el usuario selecciona "Jugar".
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/presentation/providers/trivia_translations.dart';

class NameInputModal extends ConsumerStatefulWidget {
  final Function(String) onNameSubmitted;

  const NameInputModal({super.key, required this.onNameSubmitted});

  @override
  ConsumerState<NameInputModal> createState() => _NameInputModalState();
}

class _NameInputModalState extends ConsumerState<NameInputModal> {
  final TextEditingController _controller = TextEditingController();
  bool _isValid = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _isValid = _controller.text.trim().isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    final translations = ref.watch(triviaTranslationsProvider);

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      backgroundColor: theme.cardColor,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              translations.get('enter_name_title'),
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: theme.textTheme.bodyLarge?.color,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              translations.get('enter_name_subtitle'),
              style: TextStyle(
                fontSize: 14,
                color: theme.textTheme.bodyMedium?.color?.withOpacity(0.6),
              ),
            ),
            const SizedBox(height: 24),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: translations.get('trainer_name_hint'),
                filled: true,
                fillColor: isDark ? Colors.grey[800] : Colors.grey[100],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 16,
                ),
              ),
              textCapitalization: TextCapitalization.words,
              onSubmitted: (value) {
                if (_isValid) {
                  widget.onNameSubmitted(value.trim());
                }
              },
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: _isValid
                    ? () => widget.onNameSubmitted(_controller.text.trim())
                    : null,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF4FC1A6),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  elevation: 0,
                  disabledBackgroundColor: const Color(
                    0xFF4FC1A6,
                  ).withOpacity(0.3),
                ),
                child: Text(
                  translations.get('start_game_button'),
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
