import 'package:flutter/material.dart';
import 'package:eco360/configuration/localization/app_localization.dart';
import '../config.dart';


class GlossaryScreen extends StatelessWidget {
  const GlossaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConfig.background,
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.header_glossary,),
        backgroundColor: AppConfig.appBarBackground,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(style: const TextStyle(color: Colors.black), children: [
                TextSpan(
                  text: (AppLocalizations.of(context)!.glossary_polymer_header),
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const TextSpan(text: " "),
                TextSpan(
                  text: AppLocalizations.of(context)!.glossary_polymer,
                  style: const TextStyle(fontSize: 14),
                ),
              ]),
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                  style: const TextStyle(color: Colors.black), children: [
                TextSpan(
                  text: (AppLocalizations.of(context)!
                      .glossary_polymerization_header),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const TextSpan(text: " "),
                TextSpan(
                  text: AppLocalizations.of(context)!.glossary_polymerization,
                  style: const TextStyle(fontSize: 14),
                ),
              ]),
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                  style: const TextStyle(color: Colors.black), children: [
                TextSpan(
                  text: (AppLocalizations.of(context)!.glossary_thermoplastics_header),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const TextSpan(text: " "),
                TextSpan(
                  text: AppLocalizations.of(context)!.glossary_thermoplastics,
                  style: const TextStyle(fontSize: 14),
                ),
              ]),
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                  style: const TextStyle(color: Colors.black), children: [
                TextSpan(
                  text: (AppLocalizations.of(context)!.glossary_duroplastics_header),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const TextSpan(text: " "),
                TextSpan(
                  text: AppLocalizations.of(context)!.glossary_duroplastics,
                  style: const TextStyle(fontSize: 14),
                ),
              ]),
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                  style: const TextStyle(color: Colors.black), children: [
                TextSpan(
                  text: (AppLocalizations.of(context)!.glossary_elastomers_header),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const TextSpan(text: " "),
                TextSpan(
                  text: AppLocalizations.of(context)!.glossary_elastomers,
                  style: const TextStyle(fontSize: 14),
                ),
              ]),
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                  style: const TextStyle(color: Colors.black), children: [
                TextSpan(
                  text: (AppLocalizations.of(context)!
                      .glossary_degradable_plastics_header),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const TextSpan(text: " "),
                TextSpan(
                  text: AppLocalizations.of(context)!.glossary_degradable_plastics,
                  style: const TextStyle(fontSize: 14),
                ),
              ]),
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
              textAlign: TextAlign.justify,
              text: TextSpan(
                  style: const TextStyle(color: Colors.black), children: [
                TextSpan(
                  text: (AppLocalizations.of(context)!
                      .glossary_recycling_header),
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const TextSpan(text: " "),
                TextSpan(
                  text: AppLocalizations.of(context)!.glossary_recycling,
                  style: const TextStyle(fontSize: 14),
                ),
              ]),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              AppLocalizations.of(context)!.glossary_law,
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}