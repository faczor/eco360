import 'package:eco360/model/category.dart';
import 'package:eco360/model/symbol.dart';
import 'package:flutter/material.dart';

class SymbolDetailsScreen extends StatelessWidget {
  const SymbolDetailsScreen(this.symbol, {super.key});

  final Symbol symbol;

  Color resolveBackgroundColor(SymbolCategory category) {
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

  buildDescription() {
    return symbol.description == null
        ? SizedBox()
        : RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(style: TextStyle(color: Colors.black), children: [
              TextSpan(
                  text: "Opis:", style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: " "),
              TextSpan(text: symbol.description)
            ]),
          );
  }

  buildProperties() {
    return symbol.properties == null
        ? SizedBox()
        : RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(style: TextStyle(color: Colors.black), children: [
              TextSpan(
                  text: "Właściwości:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: " "),
              TextSpan(text: symbol.properties)
            ]),
          );
  }

  buildUsage() {
    return symbol.usage == null
        ? SizedBox()
        : RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(style: TextStyle(color: Colors.black), children: [
              TextSpan(
                  text: "Zastosowania:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: " "),
              TextSpan(text: symbol.usage)
            ]),
          );
  }

  buildFacts() {
    return symbol.facts == null
        ? SizedBox()
        : RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(style: TextStyle(color: Colors.black), children: [
              TextSpan(
                  text: "Ciekawoski:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: " "),
              TextSpan(text: symbol.facts)
            ]),
          );
  }

  buildTooltips() {
    return symbol.tooltips == null
        ? SizedBox()
        : RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(style: TextStyle(color: Colors.black), children: [
              TextSpan(
                  text: "Wskazówki:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: " "),
              TextSpan(text: symbol.tooltips)
            ]),
          );
  }

  buildText() {
    return Column(
      children: [
        buildDescription(),
        SizedBox(height: 10,),
        buildProperties(),
        SizedBox(height: 10,),
        buildUsage(),
        SizedBox(height: 10,),
        buildFacts(),
        SizedBox(height: 10,),
        buildTooltips()
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: resolveBackgroundColor(symbol.category),
      appBar: AppBar(
        title: const Text("Opis symbolu"),
        backgroundColor: const Color.fromARGB(255, 252, 141, 75),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  Container(
                    width: 200,
                    child: Text(
                      symbol.title,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                      width: 100,
                      height: 100,
                      child: Image(image: AssetImage(symbol.assetPath))),
                  const Spacer()
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              buildText(),
              const SizedBox(height: 40,),
              Text("Zdjęcia produktów wykonanych z opisywanego materiału:"),
              const SizedBox(height: 20,),
              Image(image: AssetImage("xyz"))
            ],
          ),
        ),
      ),
    );
  }
}