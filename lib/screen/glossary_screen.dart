import 'package:flutter/material.dart';
import 'package:eco360/configuration/localization/app_localization.dart';
import 'package:google_fonts/google_fonts.dart';


class GlossaryScreen extends StatelessWidget {
  const GlossaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 171, 209, 127),
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.header_glossary,style: GoogleFonts.montserrat()),
        backgroundColor: const Color.fromARGB(255, 252, 141, 75),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,),
            Text(
                AppLocalizations.of(context)!.glossary_description,
              textAlign: TextAlign.justify,
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