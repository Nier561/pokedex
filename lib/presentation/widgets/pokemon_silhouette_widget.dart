/// Archivo: pokemon_silhouette_widget.dart
///
/// Descripción:
/// Widget que gestiona la visualización del Pokémon en el juego de Trivia.
///
/// Funcionalidades Principales:
/// - **Modo Silueta**: Aplica un filtro de color negro (`ColorFiltered`) para ocultar la identidad
///   del Pokémon mientras el usuario adivina.
/// - **Modo Revelado**: Muestra la imagen original a todo color una vez que se responde.
/// - **Transición Suave**: Utiliza `AnimatedSwitcher` para que el cambio entre silueta y
///   imagen revelada no sea brusco.
///
/// Uso:
/// Componente central de `TriviaGameScreen`.
import 'package:flutter/material.dart';

/// Widget que muestra la imagen de un Pokémon.
/// Puede mostrarse en dos estados:
/// 1. Silueta (negra): Cuando el usuario aún no ha adivinado.
/// 2. Revelada (color original): Cuando el usuario ya respondió o se acabó el tiempo.
/// Utiliza [AnimatedSwitcher] para una transición suave entre estados.
class PokemonSilhouetteWidget extends StatelessWidget {
  final String imageUrl;
  final bool isRevealed;
  final double size;

  const PokemonSilhouetteWidget({
    super.key,
    required this.imageUrl,
    required this.isRevealed,
    this.size = 200,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        child: isRevealed
            ? Image.network(
                imageUrl,
                key: const ValueKey('revealed'),
                width: size,
                height: size,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.error),
              )
            : ColorFiltered(
                key: const ValueKey('silhouette'),
                colorFilter: const ColorFilter.mode(
                  Colors.black,
                  BlendMode.srcIn,
                ),
                child: Image.network(
                  imageUrl,
                  width: size,
                  height: size,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.error),
                ),
              ),
      ),
    );
  }
}
