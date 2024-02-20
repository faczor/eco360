import 'package:eco360/model/category.dart';
import 'package:eco360/model/symbol.dart';
import 'package:flutter/material.dart';
import 'package:eco360/configuration/localization/app_localization.dart';
import 'package:google_fonts/google_fonts.dart';

class SymbolDetailsScreen extends StatelessWidget {
  const SymbolDetailsScreen(this.symbol, {super.key});

  final Symbol symbol;

  Color resolveBackgroundColor(SymbolCategory category) {
    switch (category) {
      case SymbolCategory.polimers:
        return const Color.fromARGB(255, 253, 246, 150);
      case SymbolCategory.paper:
        return const Color.fromARGB(255, 148, 221, 243);
      case SymbolCategory.glass:
        return const Color.fromARGB(255, 150, 205, 134);
      case SymbolCategory.steel:
        return const Color.fromARGB(255, 253, 246, 150);
      case SymbolCategory.wood:
        return const Color.fromARGB(255, 253, 199, 149);
      case SymbolCategory.cotton:
        return const Color.fromARGB(255, 253, 199, 149);
      case SymbolCategory.mixed:
        return const Color.fromARGB(255, 253, 246, 150);
    }
  }

  Widget buildDescription(BuildContext context) {
    return symbol.description == null
        ? const SizedBox()
        : RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(style: const TextStyle(color: Colors.black), children: [
              TextSpan(
                  text: (AppLocalizations.of(context)!.symbol_description),
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              const TextSpan(text: " "),
              TextSpan(text: symbol.description)
            ]),
          );
  }

  Widget buildProperties(BuildContext context) {
    return symbol.properties == null
        ? const SizedBox()
        : RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(style: const TextStyle(color: Colors.black), children: [
              TextSpan(
                  text: (AppLocalizations.of(context)!.symbol_properties),
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              const TextSpan(text: " "),
              TextSpan(text: symbol.properties)
            ]),
          );
  }

  Widget buildUsage(BuildContext context) {
    return symbol.usage == null
        ? const SizedBox()
        : RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(style: const TextStyle(color: Colors.black), children: [
              TextSpan(
                  text: (AppLocalizations.of(context)!.symbol_usages),
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              const TextSpan(text: " "),
              TextSpan(text: symbol.usage)
            ]),
          );
  }

  Widget buildFacts(BuildContext context) {
    return symbol.facts == null
        ? const SizedBox()
        : RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(style: const TextStyle(color: Colors.black), children: [
              TextSpan(
                  text: (AppLocalizations.of(context)!.symbol_facts),
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              const TextSpan(text: " "),
              TextSpan(text: symbol.facts)
            ]),
          );
  }

  Widget buildTooltips(BuildContext context) {
    return symbol.tooltips == null
        ? const SizedBox()
        : RichText(
            textAlign: TextAlign.justify,
            text: TextSpan(style: const TextStyle(color: Colors.black), children: [
              TextSpan(
                  text: (AppLocalizations.of(context)!.symbol_tooltips),
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              const TextSpan(text: " "),
              TextSpan(text: symbol.tooltips)
            ]),
          );
  }

  Widget buildText(BuildContext context) {
    return Column(
      children: [
        buildDescription(context),
        const SizedBox(height: 10,),
        buildProperties(context),
        const SizedBox(height: 10,),
        buildUsage(context),
        const SizedBox(height: 10,),
        buildFacts(context),
        const SizedBox(height: 10,),
        buildTooltips(context)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: resolveBackgroundColor(symbol.category),
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.header_symbol_details, style: GoogleFonts.montserrat()),
        backgroundColor: const Color.fromARGB(255, 252, 141, 75),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
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
              buildText(context),
              const SizedBox(height: 30,),
              RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(style: const TextStyle(color: Colors.black), children: [
                  TextSpan(
                      text: (AppLocalizations.of(context)!.symbol_picture),
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  const TextSpan(text: " "),
                ]),
              ),
              const SizedBox(height: 20,),
              const Image(image: AssetImage("xyz"))
            ],
          ),
        ),
      ),
    );
  }
}
