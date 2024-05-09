import 'package:eco360/model/category.dart';
import 'package:eco360/model/symbol.dart';
import 'package:flutter/material.dart';
import 'package:eco360/configuration/localization/app_localization.dart';
import '../../config.dart';

class SymbolDetailsScreen extends StatelessWidget {
  const SymbolDetailsScreen(this.symbol, {Key? key}) : super(key: key);

  final Symbol symbol;

  Color resolveBackgroundColor(SymbolCategory category) {
    switch (category) {
      case SymbolCategory.polimers:
        return AppConfig.lightYellow;
      case SymbolCategory.paper:
        return AppConfig.lightBlue;
      case SymbolCategory.glass:
        return AppConfig.lightGreen;
      case SymbolCategory.steel:
        return AppConfig.lightYellow;
      case SymbolCategory.wood:
        return AppConfig.lightBrown;
      case SymbolCategory.cotton:
        return AppConfig.lightBrown;
      case SymbolCategory.mixed:
        return AppConfig.lightYellow;
    }
  }

  Widget buildDescription(BuildContext context) {
    return symbol.description == null
        ? const SizedBox()
        : RichText(
      textAlign: TextAlign.justify,
      text: TextSpan(
        style: TextStyle(color: AppConfig.blackText),
        children: [
          TextSpan(
            text: (AppLocalizations.of(context)!.symbol_description),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const TextSpan(text: " "),
          TextSpan(
            text: symbol.description!,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget buildProperties(BuildContext context) {
    return symbol.properties == null
        ? const SizedBox()
        : RichText(
      textAlign: TextAlign.justify,
      text: TextSpan(
        style: TextStyle(color: AppConfig.blackText),
        children: [
          TextSpan(
            text: (AppLocalizations.of(context)!.symbol_properties),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const TextSpan(text: " "),
          TextSpan(
            text: symbol.properties!,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget buildUsage(BuildContext context) {
    return symbol.usage == null
        ? const SizedBox()
        : RichText(
      textAlign: TextAlign.justify,
      text: TextSpan(
        style: TextStyle(color: AppConfig.blackText),
        children: [
          TextSpan(
            text: (AppLocalizations.of(context)!.symbol_usages),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const TextSpan(text: " "),
          TextSpan(
            text: symbol.usage!,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget buildFacts(BuildContext context) {
    return symbol.facts == null
        ? const SizedBox()
        : RichText(
      textAlign: TextAlign.justify,
      text: TextSpan(
        style: TextStyle(color: AppConfig.blackText),
        children: [
          TextSpan(
            text: (AppLocalizations.of(context)!.symbol_facts),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const TextSpan(text: " "),
          TextSpan(
            text: symbol.facts!,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget buildTooltips(BuildContext context) {
    return symbol.tooltips == null
        ? const SizedBox()
        : RichText(
      textAlign: TextAlign.justify,
      text: TextSpan(
        style: TextStyle(color: AppConfig.blackText),
        children: [
          TextSpan(
            text: (AppLocalizations.of(context)!.symbol_tooltips),
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const TextSpan(text: " "),
          TextSpan(
            text: symbol.tooltips!,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
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
        title: Text(AppLocalizations.of(context)!.header_symbol_details,),
        backgroundColor: AppConfig.appBarBackground,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  SizedBox(
                    width: 200,
                    child: Text(
                      symbol.title,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Image(image: AssetImage(symbol.assetPath)),
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 20,),
              buildText(context),
              const SizedBox(height: 30,),
              if (symbol.link != null)
                RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    style: TextStyle(color: AppConfig.blackText),
                    children: [
                      TextSpan(
                        text: (AppLocalizations.of(context)!.symbol_picture),
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const TextSpan(text: " "),
                    ],
                  ),
                ),
              const SizedBox(height: 20,),
              if (symbol.link != null)
                Image.network(symbol.link!),
            ],
          ),
        ),
      ),
    );
  }
}
