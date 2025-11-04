import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:pokedex/widgets/type_badge.dart';
import 'package:pokedex/widgets/type_gradients.dart';

class PokemonCard extends StatelessWidget {
  final String name;
  final List<String> types;
  final String imageUrl;
  final LinearGradient? background;

  const PokemonCard({
    super.key,
    required this.name,
    required this.types,
    required this.imageUrl,
    this.background,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Responsivo: escala en base al ancho disponible
        final w = constraints.maxWidth;
        final h = constraints.maxHeight;
        // Limita la imagen al área de contenido (debajo del título) para evitar overflow
        const contentTop = 40.0;
        const contentBottom = 12.0;
        final contentHeight = h - contentTop - contentBottom;
        const imagePadding = 0.0;
        final extraForBadges = types.length > 1 ? 14.0 : 0.0;
        final imageSize = math
            .max(
              0,
              math.min(
                w * 1.00,
                contentHeight - imagePadding - extraForBadges,
              ),
            )
            .toDouble();

        return Container(
          decoration: BoxDecoration(
            gradient: background,
            color: background == null ? Colors.white : null,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Stack(
            children: [
              // Nombre centrado con desplazamiento de 30px a la izquierda
              Positioned.fill(
                top: 8,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text(
                      name,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),

              // Contenido principal: columna izquierda + imagen derecha
              Padding(
                padding: const EdgeInsets.only(
                  top: 42,
                  left: 12,
                  right: 12,
                  bottom: 12,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Características a la izquierda (se expande y envuelve)
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(
                            height: 8.0,
                          ), // separación entre nombre y características
                          Wrap(
                            spacing: 8.0,
                            runSpacing: 8.0,
                            alignment: WrapAlignment.start,
                            children: List.generate(
                              types.length,
                              (i) => TypeBadge(
                                type: types[i],
                                backgroundColor: (i == 1)
                                    ? solidBadgeColorForType(types.first)
                                    : null,
                              ),
                            ),
                          ),
                          const SizedBox(height: 6.0),
                          // Puedes añadir otras características aquí si lo deseas
                        ],
                      ),
                    ),
                    const SizedBox(width: 0.0),

                    // Imagen alineada a la derecha 200x200 con padding y sombra suave
                    Flexible(
                      flex: 0,
                      child: Container(
                        padding: EdgeInsets.all(
                          imagePadding,
                        ), // padding alrededor de la imagen
                        child: SizedBox(
                          width: imageSize,
                          height: imageSize,
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.network(
                              imageUrl,
                              width: imageSize,
                              height: imageSize,
                              fit: BoxFit.contain,
                              filterQuality: FilterQuality.low,
                              // Hint de decodificación para reducir trabajo de imagen
                              cacheWidth: imageSize.round(),
                              cacheHeight: imageSize.round(),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
