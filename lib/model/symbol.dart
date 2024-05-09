import 'category.dart';

class Symbol {
  final String id;
  final String title;
  final String number;
  final String short;
  final String? description;
  final String? properties;
  final String? usage;
  final String? facts;
  final String? tooltips;
  final String assetPath;
  final SymbolCategory category;
  final String? link;

  Symbol(
      this.id,
      this.title,
      this.number,
      this.short,
      this.description,
      this.properties,
      this.usage,
      this.facts,
      this.tooltips,
      this.assetPath,
      this.category,
      this.link
      );
}
