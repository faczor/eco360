import 'package:easy_localization/easy_localization.dart';
import 'package:eco360/configuration/localization/app_localization.dart';
import 'package:eco360/main.dart';
import 'package:eco360/screen/authors_screen.dart';
import 'package:eco360/screen/symbol/symbols_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.changeLanguage, {super.key});

  final Function(Locale locale) changeLanguage;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        "assets/images/background.png",
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)!.app_name),
          backgroundColor: const Color.fromARGB(255, 252, 141, 75),
        ),
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  IconButton.outlined(
                      onPressed: () {
                        changeLanguage(Locale('pl'));
                      },
                      icon: Icon(Icons.flag)),
                  IconButton.outlined(
                      onPressed: () {
                        changeLanguage(Locale('en'));
                      },
                      icon: Icon(Icons.ac_unit_outlined))
                ],
                mainAxisAlignment: MainAxisAlignment.end,
              ),
              const Spacer(),
              const Spacer(),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  ImageCard(
                      AppLocalizations.of(context)!.search, true, null,
                      "list-search"),
                  const Spacer(),
                  ImageCard(
                      AppLocalizations.of(context)!.list, true, null, "list"),
                  Spacer(),
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  ImageCard(AppLocalizations.of(context)!.game, false,
                      "https://www.onet.pl", null),
                  Spacer(),
                  ImageCard(AppLocalizations.of(context)!.authors, true, null,
                      "author"),
                  Spacer(),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    ]);
  }
}

class ImageCard extends StatelessWidget {
  final String assetPath;
  bool isInnerNavigation = true;
  String? navigationUrl;
  String? pathName;

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
        width: 175,
        height: 175,
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
    } else {
      return const AuthorScreen();
    }
  }
}
