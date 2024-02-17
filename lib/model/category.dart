import 'package:flutter/material.dart';

enum SymbolCategory {

  polimers,
  paper,
  glass,
  steel,
  wood,
  cotton,
  mixed;

  Color getColor(SymbolCategory category) {
    switch (category) {
      case SymbolCategory.polimers:
        return const Color.fromARGB(255, 255, 241, 0);
      case SymbolCategory.paper:
        return const Color.fromARGB(255, 0, 176, 229);
      case SymbolCategory.glass:
        return const Color.fromARGB(255, 0, 175, 41);
      case SymbolCategory.steel:
        return const Color.fromARGB(255, 255, 241, 0);
      case SymbolCategory.wood:
        return const Color.fromARGB(255, 170, 122, 92);
      case SymbolCategory.cotton:
        return const Color.fromARGB(255, 170, 122, 92);
      case SymbolCategory.mixed:
        return const Color.fromARGB(255, 255, 241, 0);
    }
  }
}
