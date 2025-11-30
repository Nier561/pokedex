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
      final imagePath = await File('${directory.path}/card_$pokemonName.png').create();
      await imagePath.writeAsBytes(imageBytes);

      // Compartimos el archivo
      await Share.shareXFiles(
          [XFile(imagePath.path)],
          text: 'Check out this $pokemonName card!'
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Error sharing card')),
      );
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
        title: const Text('Card Preview', style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Hero(
            tag: 'generated_card',
            child: Image.memory(
              imageBytes,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => _shareImage(context),
        backgroundColor: const Color(0xFF8B7ED8),
        icon: const Icon(Icons.share, color: Colors.white),
        label: const Text('Share Card', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}