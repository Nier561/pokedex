/// Utilidad estática para calcular la eficacia de tipos defensivos.
/// Calcula el daño recibido multiplicando los factores de ambos tipos del Pokémon.
class TypeChart {
  static const Map<String, Map<String, double>> _chart = {
    'normal': {'rock': 0.5, 'ghost': 0.0, 'steel': 0.5},
    'fire': {'fire': 0.5, 'water': 0.5, 'grass': 2.0, 'ice': 2.0, 'bug': 2.0, 'rock': 0.5, 'dragon': 0.5, 'steel': 2.0},
    'water': {'fire': 2.0, 'water': 0.5, 'grass': 0.5, 'ground': 2.0, 'rock': 2.0, 'dragon': 0.5},
    'grass': {'fire': 0.5, 'water': 2.0, 'grass': 0.5, 'poison': 0.5, 'ground': 2.0, 'flying': 0.5, 'bug': 0.5, 'rock': 2.0, 'dragon': 0.5, 'steel': 0.5},
    'electric': {'water': 2.0, 'grass': 0.5, 'electric': 0.5, 'ground': 0.0, 'flying': 2.0, 'dragon': 0.5},
    'ice': {'fire': 0.5, 'water': 0.5, 'grass': 2.0, 'ice': 0.5, 'ground': 2.0, 'flying': 2.0, 'dragon': 2.0, 'steel': 0.5},
    'fighting': {'normal': 2.0, 'ice': 2.0, 'poison': 0.5, 'flying': 0.5, 'psychic': 0.5, 'bug': 0.5, 'rock': 2.0, 'ghost': 0.0, 'dark': 2.0, 'steel': 2.0, 'fairy': 0.5},
    'poison': {'grass': 2.0, 'poison': 0.5, 'ground': 0.5, 'rock': 0.5, 'ghost': 0.5, 'steel': 0.0, 'fairy': 2.0},
    'ground': {'fire': 2.0, 'grass': 0.5, 'electric': 2.0, 'poison': 2.0, 'flying': 0.0, 'bug': 0.5, 'rock': 2.0, 'steel': 2.0},
    'flying': {'grass': 2.0, 'electric': 0.5, 'fighting': 2.0, 'bug': 2.0, 'rock': 0.5, 'steel': 0.5},
    'psychic': {'fighting': 2.0, 'poison': 2.0, 'psychic': 0.5, 'dark': 0.0, 'steel': 0.5},
    'bug': {'fire': 0.5, 'grass': 2.0, 'fighting': 0.5, 'poison': 0.5, 'flying': 0.5, 'psychic': 2.0, 'ghost': 0.5, 'dark': 2.0, 'steel': 0.5, 'fairy': 0.5},
    'rock': {'fire': 2.0, 'ice': 2.0, 'fighting': 0.5, 'ground': 0.5, 'flying': 2.0, 'bug': 2.0, 'steel': 0.5},
    'ghost': {'normal': 0.0, 'psychic': 2.0, 'ghost': 2.0, 'dark': 0.5},
    'dragon': {'dragon': 2.0, 'steel': 0.5, 'fairy': 0.0},
    'dark': {'fighting': 0.5, 'psychic': 2.0, 'ghost': 2.0, 'dark': 0.5, 'fairy': 0.5},
    'steel': {'fire': 0.5, 'water': 0.5, 'electric': 0.5, 'ice': 2.0, 'rock': 2.0, 'steel': 0.5, 'fairy': 2.0},
    'fairy': {'fire': 0.5, 'fighting': 2.0, 'poison': 0.5, 'dragon': 2.0, 'dark': 2.0, 'steel': 0.5},
  };

  /// Calcula las debilidades defensivas de un Pokémon dados sus tipos.
  static Map<String, double> calculateWeaknesses(List<String> types) {
    final Map<String, double> effectiveness = {};

    // Lista de todos los tipos atacantes posibles
    final allTypes = _chart.keys.toList();

    for (var attackType in allTypes) {
      double multiplier = 1.0;

      // Multiplicamos el daño por cada tipo que tenga el Pokémon defensor
      for (var defType in types) {
        final defKey = defType.toLowerCase();
        // Si el ataque existe en la tabla, aplicamos el factor, si no es 1.0 (neutro)
        if (_chart.containsKey(attackType)) {
          final factor = _chart[attackType]?[defKey] ?? 1.0;
          multiplier *= factor;
        }
      }

      // Solo nos interesan los que no son neutrales (1.0)
      if (multiplier != 1.0) {
        effectiveness[attackType] = multiplier;
      }
    }
    return effectiveness;
  }
}