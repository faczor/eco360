import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localization_en.dart';
import 'app_localization_pl.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'localization/app_localization.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('pl')
  ];

  /// No description provided for @app_name.
  ///
  /// In en, this message translates to:
  /// **'ECO360'**
  String get app_name;

  /// No description provided for @category_polimers.
  ///
  /// In en, this message translates to:
  /// **'TWORZYWA POLIMEROWE/SZTUCZNE'**
  String get category_polimers;

  /// No description provided for @category_paper.
  ///
  /// In en, this message translates to:
  /// **'PAPIER I TEKTURA'**
  String get category_paper;

  /// No description provided for @category_glass.
  ///
  /// In en, this message translates to:
  /// **'SZKŁO'**
  String get category_glass;

  /// No description provided for @category_steel.
  ///
  /// In en, this message translates to:
  /// **'STAL I ALUMINIUM'**
  String get category_steel;

  /// No description provided for @category_wood.
  ///
  /// In en, this message translates to:
  /// **'DREWNO I KOREK'**
  String get category_wood;

  /// No description provided for @category_cotton.
  ///
  /// In en, this message translates to:
  /// **'BAWEŁNA I JUTA'**
  String get category_cotton;

  /// No description provided for @category_mixed.
  ///
  /// In en, this message translates to:
  /// **'WIELOMATERIAŁOWE'**
  String get category_mixed;

  /// No description provided for @symbol_title_pet01.
  ///
  /// In en, this message translates to:
  /// **'Politereftalan etylenu'**
  String get symbol_title_pet01;

  /// No description provided for @symbol_title_hdpe02.
  ///
  /// In en, this message translates to:
  /// **'Polietylen dużej gęstości'**
  String get symbol_title_hdpe02;

  /// No description provided for @symbol_title_pvc03.
  ///
  /// In en, this message translates to:
  /// **'Polichlorek winylu'**
  String get symbol_title_pvc03;

  /// No description provided for @symbol_title_ldpe04.
  ///
  /// In en, this message translates to:
  /// **'Polietylen małej gęstości'**
  String get symbol_title_ldpe04;

  /// No description provided for @symbol_title_pp05.
  ///
  /// In en, this message translates to:
  /// **'Polipropylen'**
  String get symbol_title_pp05;

  /// No description provided for @symbol_title_ps06.
  ///
  /// In en, this message translates to:
  /// **'Polistyren'**
  String get symbol_title_ps06;

  /// No description provided for @symbol_title_inne07.
  ///
  /// In en, this message translates to:
  /// **'Inne'**
  String get symbol_title_inne07;

  /// No description provided for @symbol_title_pap20.
  ///
  /// In en, this message translates to:
  /// **'Tektura falista'**
  String get symbol_title_pap20;

  /// No description provided for @symbol_title_pap21.
  ///
  /// In en, this message translates to:
  /// **'Tektura płaska'**
  String get symbol_title_pap21;

  /// No description provided for @symbol_title_pap22.
  ///
  /// In en, this message translates to:
  /// **'Papier'**
  String get symbol_title_pap22;

  /// No description provided for @symbol_title_gl70.
  ///
  /// In en, this message translates to:
  /// **'Szkło bezbarwne'**
  String get symbol_title_gl70;

  /// No description provided for @symbol_title_gl71.
  ///
  /// In en, this message translates to:
  /// **'Szkło zielone'**
  String get symbol_title_gl71;

  /// No description provided for @symbol_title_gl72.
  ///
  /// In en, this message translates to:
  /// **'Szkło brązowe'**
  String get symbol_title_gl72;

  /// No description provided for @symbol_title_fe40.
  ///
  /// In en, this message translates to:
  /// **'Stal'**
  String get symbol_title_fe40;

  /// No description provided for @symbol_title_alu41.
  ///
  /// In en, this message translates to:
  /// **'Aluminium'**
  String get symbol_title_alu41;

  /// No description provided for @symbol_title_for50.
  ///
  /// In en, this message translates to:
  /// **'Drewno'**
  String get symbol_title_for50;

  /// No description provided for @symbol_title_for51.
  ///
  /// In en, this message translates to:
  /// **'Korek'**
  String get symbol_title_for51;

  /// No description provided for @symbol_title_tex60.
  ///
  /// In en, this message translates to:
  /// **'Bawełna'**
  String get symbol_title_tex60;

  /// No description provided for @symbol_title_tex61.
  ///
  /// In en, this message translates to:
  /// **'Juta'**
  String get symbol_title_tex61;

  /// No description provided for @symbol_title_cx80.
  ///
  /// In en, this message translates to:
  /// **'Papier i tektura/różne metale'**
  String get symbol_title_cx80;

  /// No description provided for @symbol_title_cx81.
  ///
  /// In en, this message translates to:
  /// **'Papier i tektura/plastik'**
  String get symbol_title_cx81;

  /// No description provided for @symbol_title_cx82.
  ///
  /// In en, this message translates to:
  /// **'Papier i tektura/aluminium'**
  String get symbol_title_cx82;

  /// No description provided for @symbol_title_cx83.
  ///
  /// In en, this message translates to:
  /// **'Papier i tektura/blacha'**
  String get symbol_title_cx83;

  /// No description provided for @symbol_title_cx84.
  ///
  /// In en, this message translates to:
  /// **'Papier i tektura/plastik/aluminium'**
  String get symbol_title_cx84;

  /// No description provided for @symbol_title_cx85.
  ///
  /// In en, this message translates to:
  /// **'Papier i tektura/plastik/aluminium/blacha'**
  String get symbol_title_cx85;

  /// No description provided for @symbol_title_cx90.
  ///
  /// In en, this message translates to:
  /// **'Plastik/aluminium'**
  String get symbol_title_cx90;

  /// No description provided for @symbol_title_cx91.
  ///
  /// In en, this message translates to:
  /// **'Plastik/blacha'**
  String get symbol_title_cx91;

  /// No description provided for @symbol_title_cx92.
  ///
  /// In en, this message translates to:
  /// **'Plastik/różne metale'**
  String get symbol_title_cx92;

  /// No description provided for @symbol_title_cx95.
  ///
  /// In en, this message translates to:
  /// **'Szkło/plastik'**
  String get symbol_title_cx95;

  /// No description provided for @symbol_title_cx96.
  ///
  /// In en, this message translates to:
  /// **'Szkło/aluminium'**
  String get symbol_title_cx96;

  /// No description provided for @symbol_title_cx97.
  ///
  /// In en, this message translates to:
  /// **'Szkło/blacha'**
  String get symbol_title_cx97;

  /// No description provided for @symbol_title_cx98.
  ///
  /// In en, this message translates to:
  /// **'Szkło/różne metale'**
  String get symbol_title_cx98;

  /// No description provided for @symbol_description_pet01.
  ///
  /// In en, this message translates to:
  /// **'polimer z grupy poliestrów'**
  String get symbol_description_pet01;

  /// No description provided for @symbol_description_hdpe02.
  ///
  /// In en, this message translates to:
  /// **'polimer etenu.'**
  String get symbol_description_hdpe02;

  /// No description provided for @symbol_description_pvc03.
  ///
  /// In en, this message translates to:
  /// **'polimer z grupy polimerów winylowych, otrzymywany w chlorku winylu.'**
  String get symbol_description_pvc03;

  /// No description provided for @symbol_description_ldpe04.
  ///
  /// In en, this message translates to:
  /// **'polimer etenu.'**
  String get symbol_description_ldpe04;

  /// No description provided for @symbol_description_pp05.
  ///
  /// In en, this message translates to:
  /// **'polimer z grupy pololefin, otrzymywany z propenu.'**
  String get symbol_description_pp05;

  /// No description provided for @symbol_description_ps06.
  ///
  /// In en, this message translates to:
  /// **'polimer styrenu.'**
  String get symbol_description_ps06;

  /// No description provided for @symbol_description_inne07.
  ///
  /// In en, this message translates to:
  /// **'jako inne uznano wszystkie tworzywa polimerowe nieuwzględnione jako osobne symbole. Wśród nich znajduje się wiele tworzyw o zróżnicowanych właściwościach. W tym również tworzywa polimerowe biodegradowalne.\nPrzykłady tworzyw - termoplastów: POM - poli(tlenek metylenu), PMMA - poli(metakrylan metylu) (szkło akrylowe), PA – poliamidy.\nPrzykłady tworzyw - duroplastów: bakelit, żywice, PAN – poliakrylonitryl.\nPrzykłady tworzyw polimerowych biodegradowalnych: polimery na bazie skrobi/celulozy, PLA - poli(kwas mlekowy), PHA – poli(kwasy alkanowe), PVA - poli(octan winylu), PEG - poli(tlenek etylenu).\n'**
  String get symbol_description_inne07;

  /// No description provided for @symbol_description_pap20.
  ///
  /// In en, this message translates to:
  /// **'składa się ułożonych naprzemiennie i sklejonych ze sobą z kilku arkuszy papieru falistego oraz papieru płaskiego wykonanych z papieru typu kraft. Papier ten wykonywany jest z makulatury lub włókien pierwotnych. Mogą składać się z różnej ilości warstw.'**
  String get symbol_description_pap20;

  /// No description provided for @symbol_description_pap21.
  ///
  /// In en, this message translates to:
  /// **'są to sklejone ze sobą arkusze papieru płaskiego wykonanych z papieru typu kraft. Papier ten wykonywany jest z makulatury lub włókien pierwotnych.'**
  String get symbol_description_pap21;

  /// No description provided for @symbol_description_pap22.
  ///
  /// In en, this message translates to:
  /// **'słysząc o papierze widzimy ryzę białych kartek, jednak w zależności od dodatków podczas produkcji papier może mieć różną strukturę.'**
  String get symbol_description_pap22;

  /// No description provided for @symbol_description_gl70.
  ///
  /// In en, this message translates to:
  /// **'na wysypisku stłuczka jest segregowana względem kolorów, która następnie zostaję przetopiona w hucie na nowe produkty. \nZastosowania materiału po recyklingu: opakowania spożywczye, kafelki, blaty kuchenne, szkła optyczne.'**
  String get symbol_description_gl70;

  /// No description provided for @symbol_description_gl71.
  ///
  /// In en, this message translates to:
  /// **'zielony kolor szkła ma powodować jedynie efekt estetyczny, nie wpływa on w żaden sposób na przechowywane wewnątrz artykuły spożywcze. Na wysypisku stłuczka jest segregowana względem kolorów, która następnie zostaję przetopiona w hucie na nowe produkty. \nZastosowania materiału po recyklingu: opakowania spożywcze, kafelki, blaty kuchenne.\n'**
  String get symbol_description_gl71;

  /// No description provided for @symbol_description_gl72.
  ///
  /// In en, this message translates to:
  /// **'brązowy kolor szkła ogranicza dostęp światła, przez co w pewnym stopniu zabezpiecza znajdujące się wewnątrz napoje. Na wysypisku stłuczka jest segregowana względem kolorów, która następnie zostaję przetopiona w hucie na nowe produkty.'**
  String get symbol_description_gl72;

  /// No description provided for @symbol_description_fe40.
  ///
  /// In en, this message translates to:
  /// **'stal jest to stop żelaza z węglem, który zostaje obrobiony cieplnie.'**
  String get symbol_description_fe40;

  /// No description provided for @symbol_description_alu41.
  ///
  /// In en, this message translates to:
  /// **'aluminium jest bardzo dobrym materiałem umożliwiającym ponowne przetworzenie i wykorzystanie wtórne.'**
  String get symbol_description_alu41;

  /// No description provided for @symbol_description_for50.
  ///
  /// In en, this message translates to:
  /// **'odpady drewniane to pozostałości po jego obróbce, ale także zużyte wyroby wykonane z drewna. Ponowne wykorzystanie drewna pozwala na redukcję wycinania drzew. '**
  String get symbol_description_for50;

  /// No description provided for @symbol_description_for51.
  ///
  /// In en, this message translates to:
  /// **'korek jest naturalnym materiałem, uzyskuje się go z kory dębu korkowego. Jego zbiory nie są łatwe ani częste, dlatego bardzo ważny jest ich recykling. '**
  String get symbol_description_for51;

  /// No description provided for @symbol_description_tex60.
  ///
  /// In en, this message translates to:
  /// **'bawełna jest włóknem otaczającym nasiona rośliny - bawełny. Odpady bawełniane są to skrawki i resztki pozostałe przy procesie produkcji oraz zużyte produkty wykonane z bawełny. W drugim przypadku problemem jest segregacja ze względu na kolor.'**
  String get symbol_description_tex60;

  /// No description provided for @symbol_description_tex61.
  ///
  /// In en, this message translates to:
  /// **'materiał roślinny, uzyskiwany z rośliny juta. Materiał ten ma specyficzną teksturę oraz zapach. Jest on w 100% biodegradowalny.'**
  String get symbol_description_tex61;

  /// No description provided for @symbol_description_cx81.
  ///
  /// In en, this message translates to:
  /// **'materiały wykonane z papieru powleczonego tworzywem sztucznym. Najczęściej stosowane są jako opakowania artykułów spożywczych np. mrożonek, czekolad, karmy dla zwierząt. \n'**
  String get symbol_description_cx81;

  /// No description provided for @symbol_description_cx84.
  ///
  /// In en, this message translates to:
  /// **'opakowania oznaczone tym symbolem wykonane są z papieru powleczonego tworzywem sztucznym oraz aluminium. Są to opakowania soków, mleka, masła, czekolad, gum do żucia, kostek rosołowych itp.'**
  String get symbol_description_cx84;

  /// No description provided for @symbol_description_cx90.
  ///
  /// In en, this message translates to:
  /// **'opakowania oznaczone tym symbolem wykonane są z tworzywa sztucznego powleczonego aluminium.\n'**
  String get symbol_description_cx90;

  /// No description provided for @symbol_properties_pet01.
  ///
  /// In en, this message translates to:
  /// **'termoplast, cięższy od wody, twardy, sztywny, odporny chemicznie i termicznie, nie chłonie wody, dielektryk (nie przewodzi prądu), nietoksyczny, niebiodegradowalny, ale biokompatybilny, czyli nie wywołuje reakcji alergicznych, przezroczysty.'**
  String get symbol_properties_pet01;

  /// No description provided for @symbol_properties_hdpe02.
  ///
  /// In en, this message translates to:
  /// **'termoplast, lżejszy od wody, twardy, sztywny, nietoksyczny, tani, kolor mlecznobiały, odporny na niskie temperatury, trudno się klei i zdobi.'**
  String get symbol_properties_hdpe02;

  /// No description provided for @symbol_properties_pvc03.
  ///
  /// In en, this message translates to:
  /// **'termoplast, cięższy od wody, biały proszek, odporny chemicznie, ulega degradacji już w temperaturze 170ºC i wtedy jest toksyczny, wytrzymały, może być elastyczny i ciągliwy lub twardy i kruchy w zależności od metody otrzymywania.'**
  String get symbol_properties_pvc03;

  /// No description provided for @symbol_properties_ldpe04.
  ///
  /// In en, this message translates to:
  /// **'termoplast, lżejszy od wody, miękki, przezroczysty, nietoksyczny, tani, odporny na niskie temperatury, nieodporny na podwyższoną temperaturę, nieodporny na obciążenia, trudno się klei i zdobi.'**
  String get symbol_properties_ldpe04;

  /// No description provided for @symbol_properties_pp05.
  ///
  /// In en, this message translates to:
  /// **'najlżejsze tworzywo termoplastyczne, odporne chemicznie i termicznie, twardy, sztywny, nietoksyczny, kurczy się.'**
  String get symbol_properties_pp05;

  /// No description provided for @symbol_properties_ps06.
  ///
  /// In en, this message translates to:
  /// **'termoplast, niebiodegradowalny o wysokiej biokompatybilności, bezbarwny, twardy i kruchy, można zastosować barwniki.'**
  String get symbol_properties_ps06;

  /// No description provided for @symbol_properties_pap20.
  ///
  /// In en, this message translates to:
  /// **'biodegradowalny i bezpieczny, może mieć kontakt z produktami spożywczymi.'**
  String get symbol_properties_pap20;

  /// No description provided for @symbol_properties_pap21.
  ///
  /// In en, this message translates to:
  /// **'biodegradowalny i bezpieczny, może mieć kontakt z produktami spożywczymi, w kolorach: białym, szarym lub brązowym, może zostać pokryta drukiem lub zostać zalaminowana folią wykonaną z PE lub PP. '**
  String get symbol_properties_pap21;

  /// No description provided for @symbol_usage_pet01.
  ///
  /// In en, this message translates to:
  /// **'medycyna (protezy kości sklepienia czaszki, protezy naczyń krwionośnych, oznaczników chirurgicznych do podtrzymywania narządów wypreparowanych w czasie operacji, protezy więzadeł i ścięgien, elementów korpusu sztucznego serca), produkcja opakowań (np. butelek na wodę, kubeczków do jogurtów, folii, tacek), włókiennictwo (przędza dywanowa, włókna na tekstylia, włókna izolacyjne, polar) oraz budownictwo (płyty termoizolacyjne, płyty budowlane).'**
  String get symbol_usage_pet01;

  /// No description provided for @symbol_usage_hdpe02.
  ///
  /// In en, this message translates to:
  /// **'rury ciśnieniowe, złączki do rur, naczynia laboratoryjne, pojemniki, butelki, płyty, opakowania.'**
  String get symbol_usage_hdpe02;

  /// No description provided for @symbol_usage_pvc03.
  ///
  /// In en, this message translates to:
  /// **'budownictwo (rury, kable, okleiny meblowe, wykładziny), medycyna (strzykawki, cewniki, dreny, opakowania, ustniki do podawania powietrza, wzierniki laryngologiczne, elementy sztucznego serca, żyły krwionośne, implanty uszu).'**
  String get symbol_usage_pvc03;

  /// No description provided for @symbol_usage_ldpe04.
  ///
  /// In en, this message translates to:
  /// **' folie, opakowania, folie termokurczliwe, rękawice jednorazowe.'**
  String get symbol_usage_ldpe04;

  /// No description provided for @symbol_usage_pp05.
  ///
  /// In en, this message translates to:
  /// **'przemysł włókienniczy (włókna, tkaniny, sznury, sieci, włókniny), przemysł medyczny (siatki chirurgiczne, taśmy urologiczne, protezy kości sklepienia czaszki, protezy kości oczodołu, siatki chirurgiczne do operacyjnego leczenia przepuklin, części mikroskopowe, strzykawki, rozgałęźniki i łączniki do drenów, ściany namiotów tlenowych, probówki na krew), opakowania i materiały rolnicze.'**
  String get symbol_usage_pp05;

  /// No description provided for @symbol_usage_ps06.
  ///
  /// In en, this message translates to:
  /// **'produkcja opakowań suchych produktów, pokrywek kubków jednorazowych, pudełek, sztucznej biżuterii, zabawek.'**
  String get symbol_usage_ps06;

  /// No description provided for @symbol_usage_pap20.
  ///
  /// In en, this message translates to:
  /// **'transport oraz przechowywanie, pakowanie, separowanie produktów, materiał ochronny podczas remontów, element konstrukcji w pracach plastycznych.'**
  String get symbol_usage_pap20;

  /// No description provided for @symbol_usage_pap21.
  ///
  /// In en, this message translates to:
  /// **'opakowania (np. przekładek, separatorów wewnątrz kartonowych opakowań), opakowania o kształcie tuby i ozdobne opakowania prezentowe, okładki zeszytów oraz teczki szkolne.'**
  String get symbol_usage_pap21;

  /// No description provided for @symbol_usage_gl72.
  ///
  /// In en, this message translates to:
  /// **'produkcja butelek do wód leczniczych oraz piwa.  Poza opakowaniami spożywczymi, z materiału po recyklingu możemy wytworzyć również np. kafelki, blaty kuchenne.'**
  String get symbol_usage_gl72;

  /// No description provided for @symbol_usage_fe40.
  ///
  /// In en, this message translates to:
  /// **'karoseria samochodowa, statki, pokrycia dachów, opakowania np. puszki do konserw. '**
  String get symbol_usage_fe40;

  /// No description provided for @symbol_usage_alu41.
  ///
  /// In en, this message translates to:
  /// **'najczęściej spotykamy się z aluminiowymi opakowaniami na napoje, jedzenie oraz z folią aluminiową.\n'**
  String get symbol_usage_alu41;

  /// No description provided for @symbol_usage_for50.
  ///
  /// In en, this message translates to:
  /// **'produkcja płyt wiórowych oraz mebli, jako materiał opałowy, w ogrodnictwie oraz jako podkład dla zwierząt.'**
  String get symbol_usage_for50;

  /// No description provided for @symbol_usage_for51.
  ///
  /// In en, this message translates to:
  /// **'zatykanie butelek, tablice korkowe, podkładki, artykuły dekoracyjne, torebki, wypełniacze, okładziny podłogowe oraz ścienne.'**
  String get symbol_usage_for51;

  /// No description provided for @symbol_usage_tex60.
  ///
  /// In en, this message translates to:
  /// **'ubrania, opatrunki i ręczniki. '**
  String get symbol_usage_tex60;

  /// No description provided for @symbol_usage_tex61.
  ///
  /// In en, this message translates to:
  /// **'worki, ale również ozdoby, dodatki do wystroju wnętrz.'**
  String get symbol_usage_tex61;

  /// No description provided for @symbol_facts_ps06.
  ///
  /// In en, this message translates to:
  /// **'często używa się również jego spienionej formy – styropianu. Wykorzystuje się go przy pakowaniu do zabezpieczenia, opakowań do żywności oraz w budownictwie.'**
  String get symbol_facts_ps06;

  /// No description provided for @symbol_facts_pap20.
  ///
  /// In en, this message translates to:
  /// **'pamiętaj, aby przed wyrzuceniem do niebieskiego pojemnika sprawdzić czy wyrzucany materiał nie jest mokry lub zanieczyszczony. Nie może być połączony z innym materiałem, wówczas musisz je rozdzielić.\n'**
  String get symbol_facts_pap20;

  /// No description provided for @symbol_facts_fe40.
  ///
  /// In en, this message translates to:
  /// **'przed wrzuceniem opakowania wykonanego ze stali do żółtego pojemnika usuń etykiety i reszty jedzenia. Pamiętaj, że igły, puszki po materiałach budowlanych, chemicznych i niebezpiecznych nie nadają się do recyklingu.'**
  String get symbol_facts_fe40;

  /// No description provided for @symbol_facts_tex60.
  ///
  /// In en, this message translates to:
  /// **'materiał wytworzony po recyklingu jest słabszy niż pierwotny materiał, wykorzystuje się go do produkcji m. in. mopów, ścierek i toreb na zakupy.'**
  String get symbol_facts_tex60;

  /// No description provided for @symbol_tooltips_pap21.
  ///
  /// In en, this message translates to:
  /// **'pamiętaj, aby przed wyrzuceniem do niebieskiego pojemnika sprawdzić czy wyrzucany materiał nie jest mokry lub zanieczyszczony. Nie może być połączony z innym materiałem, wówczas musisz je rozdzielić.'**
  String get symbol_tooltips_pap21;

  /// No description provided for @symbol_tooltips_pap22.
  ///
  /// In en, this message translates to:
  /// **'recyklingowi podlegają opakowania wykonane z papieru, gazety, katalogi, książki, zeszyty, dokumenty, papier pakowy, torebki papierowe. Pamiętaj, aby przed wyrzuceniem do niebieskiego pojemnika sprawdzić czy wyrzucany materiał nie jest mokry lub zanieczyszczony. Nie może być połączony z innym materiałem, wówczas musisz je rozdzielić.'**
  String get symbol_tooltips_pap22;

  /// No description provided for @symbol_tooltips_gl70.
  ///
  /// In en, this message translates to:
  /// **'pamiętaj, że do zielonego pojemnika na szkło możesz wrzucić szklane opakowania po żywności oraz kosmetykach, których opakowania nie są trwałe połączone z innym materiałem. Do pojemników na szkło nie możesz wrzucać opakowań zmieszanych, ceramiki, szkła żaroodpornego, żarówek, luster, szyb, termometrów oraz opakowań po lekach, olejach, chemikaliach, substancjach niebezpiecznych.'**
  String get symbol_tooltips_gl70;

  /// No description provided for @symbol_tooltips_gl71.
  ///
  /// In en, this message translates to:
  /// **'pamiętaj, że do zielonego pojemnika na szkło możesz wrzucić szklane opakowania po żywności oraz kosmetykach, których opakowania nie są trwałe połączone z innym materiałem. Do pojemników na szkło nie możesz wrzucać opakowań zmieszanych, ceramiki, szkła żaroodpornego, żarówek, luster, szyb, termometrów oraz opakowań po lekach, olejach, chemikaliach, substancjach niebezpiecznych.'**
  String get symbol_tooltips_gl71;

  /// No description provided for @symbol_tooltips_gl72.
  ///
  /// In en, this message translates to:
  /// **'pamiętaj, że do zielonego pojemnika na szkło możesz wrzucić szklane opakowania po żywności oraz kosmetykach, których opakowania nie są trwałe połączone z innym materiałem. Do pojemników na szkło nie możesz wrzucać opakowań zmieszanych, ceramiki, szkła żaroodpornego, żarówek, luster, szyb, termometrów oraz opakowań po lekach, olejach, chemikaliach, substancjach niebezpiecznych.e'**
  String get symbol_tooltips_gl72;

  /// No description provided for @symbol_tooltips_alu41.
  ///
  /// In en, this message translates to:
  /// **'przed wrzuceniem opakowania wykonanego ze stali do żółtego pojemnika usuń etykiety i reszty jedzenia. Pamiętaj, że puszki po materiałach budowlanych, chemicznych, niebezpiecznych nie nadają się do recyklingu.'**
  String get symbol_tooltips_alu41;

  /// No description provided for @symbol_tooltips_cx80.
  ///
  /// In en, this message translates to:
  /// **'opakowania oznaczone tym symbolem możemy wyrzucić do żółtego pojemnika. Przed wyrzuceniem nie musisz dokładnie myć opakowań, jedynie usuń resztki jedzenia.'**
  String get symbol_tooltips_cx80;

  /// No description provided for @symbol_tooltips_cx81.
  ///
  /// In en, this message translates to:
  /// **'litera “x” w symbolu może być zastąpiona skrótem dominującego materiału. Opakowania oznaczone tym symbolem możemy wyrzucić do żółtego pojemnika. Przed wyrzuceniem nie musisz dokładnie myć opakowań, jedynie usuń resztki jedzenia.'**
  String get symbol_tooltips_cx81;

  /// No description provided for @symbol_tooltips_cx82.
  ///
  /// In en, this message translates to:
  /// **'litera “x” w symbolu może być zastąpiona skrótem dominującego materiału. Opakowania oznaczone tym symbolem możemy wyrzucić do żółtego pojemnika. Przed wyrzuceniem nie musisz dokładnie myć opakowań, jedynie usuń resztki jedzenia.'**
  String get symbol_tooltips_cx82;

  /// No description provided for @symbol_tooltips_cx83.
  ///
  /// In en, this message translates to:
  /// **'litera “x” w symbolu może być zastąpiona skrótem dominującego materiału. Opakowania oznaczone tym symbolem możemy wyrzucić do żółtego pojemnika. Przed wyrzuceniem nie musisz dokładnie myć opakowań, jedynie usuń resztki jedzenia.'**
  String get symbol_tooltips_cx83;

  /// No description provided for @symbol_tooltips_cx84.
  ///
  /// In en, this message translates to:
  /// **'litera “x” w symbolu może być zastąpiona skrótem dominującego materiału. Opakowania oznaczone tym symbolem możemy wyrzucić do żółtego pojemnika. Przed wyrzuceniem nie musisz dokładnie myć opakowań, jedynie usuń resztki jedzenia.'**
  String get symbol_tooltips_cx84;

  /// No description provided for @symbol_tooltips_cx85.
  ///
  /// In en, this message translates to:
  /// **'litera “x” w symbolu może być zastąpiona skrótem dominującego materiału. Opakowania oznaczone tym symbolem możemy wyrzucić do żółtego pojemnika. Przed wyrzuceniem nie musisz dokładnie myć opakowań, jedynie usuń resztki jedzenia.'**
  String get symbol_tooltips_cx85;

  /// No description provided for @symbol_tooltips_cx90.
  ///
  /// In en, this message translates to:
  /// **'litera “x” w symbolu może być zastąpiona skrótem dominującego materiału. Opakowania oznaczone tym symbolem możemy wyrzucić do żółtego pojemnika. Przed wyrzuceniem nie musisz dokładnie myć opakowań, jedynie usuń resztki jedzenia.'**
  String get symbol_tooltips_cx90;

  /// No description provided for @symbol_tooltips_cx91.
  ///
  /// In en, this message translates to:
  /// **'litera “x” w symbolu może być zastąpiona skrótem dominującego materiału. Opakowania oznaczone tym symbolem możemy wyrzucić do żółtego pojemnika. Przed wyrzuceniem nie musisz dokładnie myć opakowań, jedynie usuń resztki jedzenia.'**
  String get symbol_tooltips_cx91;

  /// No description provided for @symbol_tooltips_cx92.
  ///
  /// In en, this message translates to:
  /// **'litera “x” w symbolu może być zastąpiona skrótem dominującego materiału. Opakowania oznaczone tym symbolem możemy wyrzucić do żółtego pojemnika. Przed wyrzuceniem nie musisz dokładnie myć opakowań, jedynie usuń resztki jedzenia.'**
  String get symbol_tooltips_cx92;

  /// No description provided for @symbol_tooltips_cx95.
  ///
  /// In en, this message translates to:
  /// **'litera “x” w symbolu może być zastąpiona skrótem dominującego materiału. Opakowania oznaczone tym symbolem możemy wyrzucić do żółtego pojemnika. Przed wyrzuceniem nie musisz dokładnie myć opakowań, jedynie usuń resztki jedzenia.'**
  String get symbol_tooltips_cx95;

  /// No description provided for @symbol_tooltips_cx96.
  ///
  /// In en, this message translates to:
  /// **'litera “x” w symbolu może być zastąpiona skrótem dominującego materiału. Opakowania oznaczone tym symbolem możemy wyrzucić do żółtego pojemnika. Przed wyrzuceniem nie musisz dokładnie myć opakowań, jedynie usuń resztki jedzenia.'**
  String get symbol_tooltips_cx96;

  /// No description provided for @symbol_tooltips_cx97.
  ///
  /// In en, this message translates to:
  /// **'litera “x” w symbolu może być zastąpiona skrótem dominującego materiału. Opakowania oznaczone tym symbolem możemy wyrzucić do żółtego pojemnika. Przed wyrzuceniem nie musisz dokładnie myć opakowań, jedynie usuń resztki jedzenia.'**
  String get symbol_tooltips_cx97;

  /// No description provided for @symbol_tooltips_cx98.
  ///
  /// In en, this message translates to:
  /// **'litera “x” w symbolu może być zastąpiona skrótem dominującego materiału. Opakowania oznaczone tym symbolem możemy wyrzucić do żółtego pojemnika. Przed wyrzuceniem nie musisz dokładnie myć opakowań, jedynie usuń resztki jedzenia.'**
  String get symbol_tooltips_cx98;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'pl'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'pl': return AppLocalizationsPl();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
