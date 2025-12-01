/// Archivo: card_preview_screen.dart
///
/// Descripción:
/// Pantalla que muestra una vista previa de la tarjeta de Pokémon generada.
/// Permite al usuario visualizar la imagen capturada de la tarjeta con sus estadísticas
/// y movimientos antes de compartirla.
///
/// Funcionalidades Principales:
/// - Visualización de la imagen de la tarjeta generada en memoria (Uint8List).
/// - Funcionalidad para compartir la imagen a través de otras aplicaciones (SharePlus).
/// - Almacenamiento temporal de la imagen en el dispositivo para el proceso de compartir.
/// - Interfaz limpia con fondo oscuro para resaltar la tarjeta.
///
/// Dependencias:
/// - `share_plus`: Para compartir el archivo de imagen.
/// - `path_provider`: Para acceder al directorio de documentos y guardar la imagen temporalmente.
/// - `dart:io` y `dart:typed_data`: Para manejo de archivos y bytes de imagen.
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class CardPreviewScreen extends StatelessWidget {
  final Uint8List imageBytes;
  final String pokemonName;

  const CardPreviewScreen({
    super.key,
    required this.imageBytes,
    required this.pokemonName,
  });

  Future<void> _shareImage(BuildContext context) async {
    try {
      // Guardamos la imagen en un archivo temporal solo cuando se va a compartir
      final directory = await getApplicationDocumentsDirectory();
      final imagePath = await File(
        '${directory.path}/card_$pokemonName.png',
      ).create();
      await imagePath.writeAsBytes(imageBytes);

      // Compartimos el archivo
      await Share.shareXFiles([
        XFile(imagePath.path),
      ], text: 'Check out this $pokemonName card!');
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Error sharing card')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Fondo oscuro para que la carta resalte
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Card Preview',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Hero(
            tag: 'generated_card',
            child: Image.memory(imageBytes, fit: BoxFit.contain),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _shareImage(context),
        backgroundColor: const Color(0xFF8B7ED8),
        icon: const Icon(Icons.share, color: Colors.white),
        label: const Text(
          'Share Card',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
