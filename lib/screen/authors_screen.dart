import 'package:flutter/material.dart';
import 'package:eco360/configuration/localization/app_localization.dart';
import 'package:url_launcher/url_launcher.dart';

class AuthorScreen extends StatelessWidget {
  const AuthorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 171, 209, 127),
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.header_authors),
        backgroundColor: const Color.fromARGB(255, 252, 141, 75),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/images/logo/logo-carbon.png",
                height: 100,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              AppLocalizations.of(context)!.authors_description,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(AppLocalizations.of(context)!.sm_invitation,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildIconButton("https://www.facebook.com/knipcarbon",
                    "assets/images/buttons/button-facebook.png"),
                buildIconButton("https://www.instagram.com/kn_ipc/",
                    "assets/images/buttons/button-instagram.png"),
                buildIconButton("https://wm.pollub.pl/wydzial-mechaniczny/jednostki-organizacyjne/katedra-technologii-i-przetworstwa-tworzyw-polimerowych/kolo-naukowe-inzynierii-polimerow-carbon",
                    "assets/images/buttons/button-web.png"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildIconButton(urlString, String imagePath) {
    return InkWell(
        onTap: () async {
          await _launchURL(urlString);
        },
        child: Image.asset(
      imagePath,
      height: 50,
    ),
    );
  }
}

_launchURL(String urlString) async {
  final Uri url = Uri.parse(urlString);
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $urlString');
  }
}


