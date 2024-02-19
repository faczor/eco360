import 'package:eco360/model/category.dart';
import 'package:eco360/provider/symbol_provider.dart';
import 'package:eco360/model/symbol.dart';
import 'package:eco360/screen/symbol/widget/symbol_list_item.dart';
import 'package:flutter/material.dart';

class ListOfSymbols extends StatefulWidget {
  const ListOfSymbols(this._searchValue, {super.key});

  final String _searchValue;

  @override
  State<ListOfSymbols> createState() => _ListOfSymbolsState();
}

class _ListOfSymbolsState extends State<ListOfSymbols> {
  Map<SymbolCategory, List<Symbol>> _symbolsGroupedByCategory = {};

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

  buildCategoryItem(SymbolCategory category, List<Symbol> symbols) {
    return Card(
      color: getColor(category),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child:
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                children: symbols.map((e) => SymbolListItem(e)).toList(),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

  void filterSymbols(
      Map<SymbolCategory, List<Symbol>> symbolsGroupedByCategory) {
    if (widget._searchValue.isEmpty) {
      setState(() {
        _symbolsGroupedByCategory = symbolsGroupedByCategory;
      });
    }

    Map<SymbolCategory, List<Symbol>> result = {};

    for (var element in symbolsGroupedByCategory.entries) {
      List<Symbol> matchingSymbols = element.value
          .where((element) =>
              equalsIgnoreCase(element.title, widget._searchValue) ||
              equalsIgnoreCase(element.number, widget._searchValue) ||
              equalsIgnoreCase(element.short, widget._searchValue))
          .toList();

      if (matchingSymbols.isNotEmpty) {
        result.addAll({element.key: matchingSymbols});
      }
    }

    setState(() {
      _symbolsGroupedByCategory = result;
    });
  }

  bool equalsIgnoreCase(String v1, String v2) {
    return v1.toLowerCase().contains(v2.toLowerCase());
  }

  @override
  Widget build(BuildContext context) {
    filterSymbols(provideData(context));
    List<Widget> items = [];
    _symbolsGroupedByCategory.forEach((key, value) {
      items.add(buildCategoryItem(key, value));
    });

    return Column(children: items);
  }
}
