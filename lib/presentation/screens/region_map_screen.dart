import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class RegionMapScreen extends StatelessWidget {
  final String regionName;
  final String regionId; // ej: 'kanto', 'johto'

  const RegionMapScreen({super.key, required this.regionName, required this.regionId});

  // Helper para convertir 'kanto' -> 'Kanto' para que coincida con el archivo PNG
  String _getAssetPath() {
    if (regionId.isEmpty) return '';
    final capitalised = regionId[0].toUpperCase() + regionId.substring(1).toLowerCase();
    return 'assets/images/$capitalised.png';
  }

  @override
  Widget build(BuildContext context) {
    // Definimos límites "falsos" para mapear la imagen.
    final imageBounds = LatLngBounds(
      const LatLng(0, 0),       // Sur-Oeste
      const LatLng(10, 15),     // Norte-Este
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(regionName, style: const TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: FlutterMap(
        options: MapOptions(
          initialCenter: const LatLng(5, 7.5),
          initialZoom: 6.0,
          minZoom: 5.0,
          maxZoom: 9.0,
          // Restringe la vista para no salir de la imagen
          cameraConstraint: CameraConstraint.contain(bounds: imageBounds),
        ),
        children: [
          OverlayImageLayer(
            overlayImages: [
              OverlayImage(
                bounds: imageBounds,
                // Usamos el path capitalizado
                imageProvider: AssetImage(_getAssetPath()),
                opacity: 1.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}