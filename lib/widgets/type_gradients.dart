import 'package:flutter/material.dart';

/// Gradientes por tipo de Pokémon para fondos de tarjetas.
final Map<String, LinearGradient> typeGradients = {
  'grass': const LinearGradient(
    colors: [Color(0xFF48D0B0), Color(0xFF88E0C0)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
  'fire': const LinearGradient(
    colors: [Color(0xFFFB6C6C), Color(0xFFFF9E7C)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
  'water': const LinearGradient(
    colors: [Color(0xFF76BEFE), Color(0xFF98D4FF)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
  'electric': const LinearGradient(
    colors: [Color(0xFFFFD76F), Color(0xFFFFEC8B)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
  'bug': const LinearGradient(
    colors: [Color(0xFFA7B723), Color(0xFFC8D946)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
  'poison': const LinearGradient(
    colors: [Color(0xFFB97FC9), Color(0xFFD7A7E0)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
  'fairy': const LinearGradient(
    colors: [Color(0xFFF7A6C0), Color(0xFFFFBED8)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
  'dragon': const LinearGradient(
    colors: [Color(0xFF6F35FC), Color(0xFF8C5CFF)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
  'flying': const LinearGradient(
    colors: [Color(0xFFA0C3FF), Color(0xFFC2DBFF)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
  'ground': const LinearGradient(
    colors: [Color(0xFFDEC16B), Color(0xFFEBD78B)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
  'rock': const LinearGradient(
    colors: [Color(0xFFC9BB8A), Color(0xFFE0D3A8)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
  'psychic': const LinearGradient(
    colors: [Color(0xFFFA92B2), Color(0xFFFFB9CA)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
  'ghost': const LinearGradient(
    colors: [Color(0xFF735797), Color(0xFF8D75B8)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
  'steel': const LinearGradient(
    colors: [Color(0xFFB7B9D0), Color(0xFFD0D2E4)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
  'ice': const LinearGradient(
    colors: [Color(0xFF96D9D6), Color(0xFFB8E8E6)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
  'dark': const LinearGradient(
    colors: [Color(0xFF6F6E78), Color(0xFF8A8893)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
  'normal': const LinearGradient(
    colors: [Color(0xFFA8A77A), Color(0xFFC3C29A)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
  'fighting': const LinearGradient(
    colors: [Color(0xFFC22E28), Color(0xFFE0473E)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  ),
};

/// Color sólido sugerido para badges en base al primer color del gradiente,
/// aclarado ligeramente para mejorar la legibilidad sobre el fondo.
Color solidBadgeColorForType(String type) {
  final base = (typeGradients[type] ?? typeGradients['normal']!).colors.first;
  final hsl = HSLColor.fromColor(base);
  // Menos “lavado”: aclaramos mucho menos para mejorar contraste del texto.
  final adjusted = hsl.withLightness((hsl.lightness + 0.10).clamp(0.0, 1.0));
  return adjusted.toColor();
}
