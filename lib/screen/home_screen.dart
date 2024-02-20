import 'package:eco360/configuration/localization/app_localization.dart';
import 'package:eco360/screen/authors_screen.dart';
import 'package:eco360/screen/symbol/symbols_list_screen.dart';
import 'package:eco360/screen/glossary_screen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.changeLanguage, {super.key});

  final Function(Locale locale) changeLanguage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/home/background.png",
          height: MediaQuery
              .of(context)
              .size
              .height,
          width: MediaQuery
              .of(context)
              .size
              .width,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.all(5.0),
              child: ClipOval(
                child: Image(
                  image: AssetImage(AppLocalizations.of(context)!.logo,),
                ),
              ),
            ),
            title: Text(AppLocalizations.of(context)!.app_name),
            backgroundColor: const Color.fromARGB(255, 252, 141, 75),
          ),
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        changeLanguage(const Locale('pl'));
                      },
                      icon: ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Image.asset(
                          "assets/images/flags/flag-pl.png",
                          height: 35,
                          width: 45,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        changeLanguage(const Locale('en'));
                      },
                      icon: ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Image.asset(
                          "assets/images/flags/flag-en.png",
                          height: 35,
                          width: 45,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const Spacer(),
                const Spacer(),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    ImageCard(
                      AppLocalizations.of(context)!.glossary,
                      true,
                      null,
                      "glossary",
                    ),
                    const Spacer(),
                    ImageCard(
                      AppLocalizations.of(context)!.search,
                      true,
                      null,
                      "list-search",
                    ),
                    const Spacer(),
                  ],
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    ImageCard(
                      AppLocalizations.of(context)!.list,
                      true,
                      null,
                      "list",
                    ),
                    const Spacer(),
                    ImageCard(
                      AppLocalizations.of(context)!.authors,
                      true,
                      null,
                      "author",
                    ),
                    const Spacer(),
                  ],
                ),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 2.0),
                      child: SizedBox(
                        width: 200,
                        height: 75,
                        child: ImageCard(
                          AppLocalizations.of(context)!.game,
                          false,
                          "https://www.onet.pl",
                          null,
                        ),
                      ),
                    ),
                  ],
                ),
          ],
        ),
          ),
          ),
          ],
    );
      }
}


  class ImageCard extends StatelessWidget {
  final String assetPath;
  bool isInnerNavigation = true;
  final String? navigationUrl;
  final String? pathName;

  ImageCard(
      this.assetPath, this.isInnerNavigation, this.navigationUrl, this.pathName,
      {super.key});

  void innerNavigation() {
    if (navigationUrl == null) {
      throw Exception("Navigation url not provided");
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Image(
        image: AssetImage(assetPath),
        width: 160,
        height: 160,
      ),
      onTap: () {
        if (isInnerNavigation) {
          if (pathName == null) {
            throw Exception("Navigation url not provided");
          }

          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => resolveInnerNavigationPath()));
        } else {
          _launchURL();
        }
      },
    );
  }

  _launchURL() async {
    final Uri url = Uri.parse(navigationUrl!);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch ${navigationUrl!}');
    }
  }

  resolveInnerNavigationPath() {
    if (pathName == 'list') {
      return SymbolList(false);
    } else if (pathName == 'list-search') {
      return SymbolList(true);
    }
      else if (pathName == 'glossary'){
      return const GlossaryScreen();
    } else {
      return const AuthorScreen();
    }
  }
}