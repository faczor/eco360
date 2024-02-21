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

  /// No description provided for @logo.
  ///
  /// In en, this message translates to:
  /// **'assets/images/logo/logo-appbar-en.png'**
  String get logo;

  /// No description provided for @header_symbol_list.
  ///
  /// In en, this message translates to:
  /// **'Symbol list'**
  String get header_symbol_list;

  /// No description provided for @header_symbol_details.
  ///
  /// In en, this message translates to:
  /// **'Symbol details'**
  String get header_symbol_details;

  /// No description provided for @header_authors.
  ///
  /// In en, this message translates to:
  /// **'Authors'**
  String get header_authors;

  /// No description provided for @header_glossary.
  ///
  /// In en, this message translates to:
  /// **'Glossary'**
  String get header_glossary;

  /// No description provided for @symbol_description.
  ///
  /// In en, this message translates to:
  /// **'Description: '**
  String get symbol_description;

  /// No description provided for @symbol_properties.
  ///
  /// In en, this message translates to:
  /// **'Properties: '**
  String get symbol_properties;

  /// No description provided for @symbol_usages.
  ///
  /// In en, this message translates to:
  /// **'Usages: '**
  String get symbol_usages;

  /// No description provided for @symbol_tooltips.
  ///
  /// In en, this message translates to:
  /// **'Tooltips: '**
  String get symbol_tooltips;

  /// No description provided for @symbol_facts.
  ///
  /// In en, this message translates to:
  /// **'Facts: '**
  String get symbol_facts;

  /// No description provided for @symbol_picture.
  ///
  /// In en, this message translates to:
  /// **'Photos of products made of the described material: '**
  String get symbol_picture;

  /// No description provided for @category_polimers.
  ///
  /// In en, this message translates to:
  /// **'Polymer/Plastics'**
  String get category_polimers;

  /// No description provided for @category_paper.
  ///
  /// In en, this message translates to:
  /// **'Paper and Cardboard'**
  String get category_paper;

  /// No description provided for @category_glass.
  ///
  /// In en, this message translates to:
  /// **'Glass'**
  String get category_glass;

  /// No description provided for @category_steel.
  ///
  /// In en, this message translates to:
  /// **'Steel and Aluminum'**
  String get category_steel;

  /// No description provided for @category_wood.
  ///
  /// In en, this message translates to:
  /// **'Wood and Cork'**
  String get category_wood;

  /// No description provided for @category_cotton.
  ///
  /// In en, this message translates to:
  /// **'Cotton and Jute'**
  String get category_cotton;

  /// No description provided for @category_mixed.
  ///
  /// In en, this message translates to:
  /// **'Composite'**
  String get category_mixed;

  /// No description provided for @symbol_title_pet01.
  ///
  /// In en, this message translates to:
  /// **'Polyethylene terephthalate'**
  String get symbol_title_pet01;

  /// No description provided for @symbol_title_hdpe02.
  ///
  /// In en, this message translates to:
  /// **'High density polyethylene'**
  String get symbol_title_hdpe02;

  /// No description provided for @symbol_title_pvc03.
  ///
  /// In en, this message translates to:
  /// **'Polyvinyl chloride'**
  String get symbol_title_pvc03;

  /// No description provided for @symbol_title_ldpe04.
  ///
  /// In en, this message translates to:
  /// **'Low density polyethylene'**
  String get symbol_title_ldpe04;

  /// No description provided for @symbol_title_pp05.
  ///
  /// In en, this message translates to:
  /// **'Polypropylene'**
  String get symbol_title_pp05;

  /// No description provided for @symbol_title_ps06.
  ///
  /// In en, this message translates to:
  /// **'Polystyrene'**
  String get symbol_title_ps06;

  /// No description provided for @symbol_title_inne07.
  ///
  /// In en, this message translates to:
  /// **'Other'**
  String get symbol_title_inne07;

  /// No description provided for @symbol_title_pap20.
  ///
  /// In en, this message translates to:
  /// **'Corrugated cardboard'**
  String get symbol_title_pap20;

  /// No description provided for @symbol_title_pap21.
  ///
  /// In en, this message translates to:
  /// **'Flat cardboard'**
  String get symbol_title_pap21;

  /// No description provided for @symbol_title_pap22.
  ///
  /// In en, this message translates to:
  /// **'Paper'**
  String get symbol_title_pap22;

  /// No description provided for @symbol_title_gl70.
  ///
  /// In en, this message translates to:
  /// **'Colorless glass'**
  String get symbol_title_gl70;

  /// No description provided for @symbol_title_gl71.
  ///
  /// In en, this message translates to:
  /// **'Green Glass'**
  String get symbol_title_gl71;

  /// No description provided for @symbol_title_gl72.
  ///
  /// In en, this message translates to:
  /// **'Brown Glass'**
  String get symbol_title_gl72;

  /// No description provided for @symbol_title_fe40.
  ///
  /// In en, this message translates to:
  /// **'Steel'**
  String get symbol_title_fe40;

  /// No description provided for @symbol_title_alu41.
  ///
  /// In en, this message translates to:
  /// **'Aluminum'**
  String get symbol_title_alu41;

  /// No description provided for @symbol_title_for50.
  ///
  /// In en, this message translates to:
  /// **'Wood'**
  String get symbol_title_for50;

  /// No description provided for @symbol_title_for51.
  ///
  /// In en, this message translates to:
  /// **'Cork'**
  String get symbol_title_for51;

  /// No description provided for @symbol_title_tex60.
  ///
  /// In en, this message translates to:
  /// **'Cotton'**
  String get symbol_title_tex60;

  /// No description provided for @symbol_title_tex61.
  ///
  /// In en, this message translates to:
  /// **'Jute'**
  String get symbol_title_tex61;

  /// No description provided for @symbol_title_cx80.
  ///
  /// In en, this message translates to:
  /// **'Paper and cardboard/various metals'**
  String get symbol_title_cx80;

  /// No description provided for @symbol_title_cx81.
  ///
  /// In en, this message translates to:
  /// **'Paper and cardboard/plastic'**
  String get symbol_title_cx81;

  /// No description provided for @symbol_title_cx82.
  ///
  /// In en, this message translates to:
  /// **'Paper and cardboard/aluminum'**
  String get symbol_title_cx82;

  /// No description provided for @symbol_title_cx83.
  ///
  /// In en, this message translates to:
  /// **'Paper and cardboard/sheet metal'**
  String get symbol_title_cx83;

  /// No description provided for @symbol_title_cx84.
  ///
  /// In en, this message translates to:
  /// **'Paper and cardboard/plastic/aluminum'**
  String get symbol_title_cx84;

  /// No description provided for @symbol_title_cx85.
  ///
  /// In en, this message translates to:
  /// **'Paper and cardboard/plastic/aluminum/sheet metal'**
  String get symbol_title_cx85;

  /// No description provided for @symbol_title_cx90.
  ///
  /// In en, this message translates to:
  /// **'Plastic/aluminum'**
  String get symbol_title_cx90;

  /// No description provided for @symbol_title_cx91.
  ///
  /// In en, this message translates to:
  /// **'Plastic/sheet metal'**
  String get symbol_title_cx91;

  /// No description provided for @symbol_title_cx92.
  ///
  /// In en, this message translates to:
  /// **'Plastic/various metals'**
  String get symbol_title_cx92;

  /// No description provided for @symbol_title_cx95.
  ///
  /// In en, this message translates to:
  /// **'Glass/plastic'**
  String get symbol_title_cx95;

  /// No description provided for @symbol_title_cx96.
  ///
  /// In en, this message translates to:
  /// **'Glass/aluminum'**
  String get symbol_title_cx96;

  /// No description provided for @symbol_title_cx97.
  ///
  /// In en, this message translates to:
  /// **'Glass/sheet metal'**
  String get symbol_title_cx97;

  /// No description provided for @symbol_title_cx98.
  ///
  /// In en, this message translates to:
  /// **'Glass/various metals'**
  String get symbol_title_cx98;

  /// No description provided for @symbol_description_pet01.
  ///
  /// In en, this message translates to:
  /// **'a semi-crystalline polymer from the polyester group, made from ethylene glycol and terephthalic acid.'**
  String get symbol_description_pet01;

  /// No description provided for @symbol_description_hdpe02.
  ///
  /// In en, this message translates to:
  /// **'ethene polymer. It belongs to the group of polyolefins, consisting of carbon and hydrogen.'**
  String get symbol_description_hdpe02;

  /// No description provided for @symbol_description_pvc03.
  ///
  /// In en, this message translates to:
  /// **'a polymer from the group of vinyl polymers, obtained from vinyl chloride.'**
  String get symbol_description_pvc03;

  /// No description provided for @symbol_description_ldpe04.
  ///
  /// In en, this message translates to:
  /// **'ethene polymer. It belongs to the group of polyolefins, consisting of carbon and hydrogen.'**
  String get symbol_description_ldpe04;

  /// No description provided for @symbol_description_pp05.
  ///
  /// In en, this message translates to:
  /// **'a polymer from the group of polyolefins, consisting of carbon and hydrogen. Obtained from propene.'**
  String get symbol_description_pp05;

  /// No description provided for @symbol_description_ps06.
  ///
  /// In en, this message translates to:
  /// **'styrene polymer. Depending on the polymerization method, several types of polystyrene are obtained: standard PS, high-impact (elastomer-reinforced) PS-HI and in the form of mixtures with other polymers such as ABS (acrylonitrile-butadiene-styrene).'**
  String get symbol_description_ps06;

  /// No description provided for @symbol_description_inne07.
  ///
  /// In en, this message translates to:
  /// **'All polymeric materials not included as separate symbols were considered other. They include many materials with different properties, including biodegradable polymeric materials.\n\nExamples of plastics - thermoplastics:\n● POM - poly(methylene oxide),\n● PMMA - poly(methyl methacrylate) (acrylic glass),\n● PA - polyamides,\n● PC - polycarbonate,\n● PTFE - polytetrafluoroethylene (Teflon),\n● ABS – acrylonitrile-butadiene-styrene.\n\nExamples of hardenable plastics (duroplasts):\n● Polyurethane PUR,\n● Resins (acrylic, epoxy, formaldehyde, and phenolic),\n● PAN – polyacrylonitrile, Bakelite. They are harmful and toxic.\n\nExamples of biodegradable polymer materials:\n● Starch/cellulose-based polymers,\n● PLA - poly(lactic acid),\n● PHA - poly(alkanoic acids),\n● PVA - poly(vinyl acetate),\n● PEG - poly(ethylene oxide).'**
  String get symbol_description_inne07;

  /// No description provided for @symbol_description_pap20.
  ///
  /// In en, this message translates to:
  /// **'consists of several sheets of corrugated paper and flat paper made of kraft paper, arranged alternately and glued together. This paper is made from waste paper or virgin fibers. They may consist of a different number of layers.'**
  String get symbol_description_pap20;

  /// No description provided for @symbol_description_pap21.
  ///
  /// In en, this message translates to:
  /// **'sheets of flat paper made of kraft paper glued together. This paper is made from waste paper or virgin fibers.'**
  String get symbol_description_pap21;

  /// No description provided for @symbol_description_pap22.
  ///
  /// In en, this message translates to:
  /// **'when we hear about paper, we see a ream of white sheets of paper, but depending on the additives used during production, the paper may have a different structure.'**
  String get symbol_description_pap22;

  /// No description provided for @symbol_description_gl70.
  ///
  /// In en, this message translates to:
  /// **'at the landfill, the cullet is sorted according to color, which is then melted down in a glassworks into new products.'**
  String get symbol_description_gl70;

  /// No description provided for @symbol_description_gl71.
  ///
  /// In en, this message translates to:
  /// **'the green color of the glass is intended only for an aesthetic effect and does not in any way affect the food stored inside. At the landfill, the cullet is sorted according to color, which is then melted down in a glassworks into new products.'**
  String get symbol_description_gl71;

  /// No description provided for @symbol_description_gl72.
  ///
  /// In en, this message translates to:
  /// **'the brown color of the glass limits the access of light, thus protecting the drinks to some extent. At the landfill, the cullet is sorted according to color, which is then melted down in a glassworks into new products.'**
  String get symbol_description_gl72;

  /// No description provided for @symbol_description_fe40.
  ///
  /// In en, this message translates to:
  /// **'steel is an alloy of iron and carbon that is heat treated.'**
  String get symbol_description_fe40;

  /// No description provided for @symbol_description_alu41.
  ///
  /// In en, this message translates to:
  /// **'aluminum is a very good material that allows for reprocessing and secondary use.'**
  String get symbol_description_alu41;

  /// No description provided for @symbol_description_for50.
  ///
  /// In en, this message translates to:
  /// **'wood waste includes residues from its processing, but also used products made of wood. Reusing wood helps reduce the cutting down of trees.'**
  String get symbol_description_for50;

  /// No description provided for @symbol_description_for51.
  ///
  /// In en, this message translates to:
  /// **'cork is a natural material, obtained from the bark of the cork oak. Harvesting it is not easy or frequent, so recycling it is very important.'**
  String get symbol_description_for51;

  /// No description provided for @symbol_description_tex60.
  ///
  /// In en, this message translates to:
  /// **'cotton is the fiber surrounding the seeds of the cotton plant. Cotton waste is scraps and leftovers remaining during the production process and used cotton products. In the second case, the problem is segregation by color.'**
  String get symbol_description_tex60;

  /// No description provided for @symbol_description_tex61.
  ///
  /// In en, this message translates to:
  /// **'plant material obtained from the jute plant. This material has a specific texture and smell. It is 100% biodegradable. It is used to make packaging, bags, but also decorations and interior design accessories.'**
  String get symbol_description_tex61;

  /// No description provided for @symbol_description_cx81.
  ///
  /// In en, this message translates to:
  /// **'materials made of plastic-coated paper. They are most often used as packaging for food products, e.g. frozen foods, chocolate, animal food.'**
  String get symbol_description_cx81;

  /// No description provided for @symbol_description_cx84.
  ///
  /// In en, this message translates to:
  /// **'packaging marked with this symbol is made of plastic-coated paper and aluminum. These are packages of juices, milk, butter, chocolate, chewing gum, etc.'**
  String get symbol_description_cx84;

  /// No description provided for @symbol_description_cx90.
  ///
  /// In en, this message translates to:
  /// **'packaging marked with this symbol is made of aluminum-coated plastic.'**
  String get symbol_description_cx90;

  /// No description provided for @symbol_properties_pet01.
  ///
  /// In en, this message translates to:
  /// **'thermoplastic, heavier than water, hard, stiff, chemically and thermally resistant, does not absorb water, dielectric (does not conduct electricity), non-toxic, non-biodegradable, but biocompatible, i.e. does not cause allergic reactions, transparent, recyclable.'**
  String get symbol_properties_pet01;

  /// No description provided for @symbol_properties_hdpe02.
  ///
  /// In en, this message translates to:
  /// **'thermoplastic, lighter than water, hard, stiff, non-toxic, cheap, milky white color, resistant to low temperatures, difficult to glue and decorate, recyclable..'**
  String get symbol_properties_hdpe02;

  /// No description provided for @symbol_properties_pvc03.
  ///
  /// In en, this message translates to:
  /// **'thermoplastic, heavier than water, white powder, chemically resistant, degrades already at 170ºC and is then toxic, durable, can be flexible and malleable or hard and brittle depending on the method of production, recyclable.'**
  String get symbol_properties_pvc03;

  /// No description provided for @symbol_properties_ldpe04.
  ///
  /// In en, this message translates to:
  /// **'thermoplastic, lighter than water, soft, transparent, non-toxic, cheap, resistant to low temperatures, not resistant to elevated temperatures, not resistant to loads, difficult to glue and decorate.'**
  String get symbol_properties_ldpe04;

  /// No description provided for @symbol_properties_pp05.
  ///
  /// In en, this message translates to:
  /// **'the lightest thermoplastic material, chemically and thermally resistant, hard, stiff, non-toxic, shrinkable, recyclable.'**
  String get symbol_properties_pp05;

  /// No description provided for @symbol_properties_ps06.
  ///
  /// In en, this message translates to:
  /// **'thermoplastic, safe, non-toxic, non-biodegradable with high biocompatibility, colorless, hard and brittle, recyclable, dyes can be used.'**
  String get symbol_properties_ps06;

  /// No description provided for @symbol_properties_pap20.
  ///
  /// In en, this message translates to:
  /// **'biodegradable and safe, can come into contact with food products.'**
  String get symbol_properties_pap20;

  /// No description provided for @symbol_properties_pap21.
  ///
  /// In en, this message translates to:
  /// **'biodegradable and safe, can come into contact with food products, in the following colors: white, gray or brown, can be covered with print or laminated with PE or PP foil.'**
  String get symbol_properties_pap21;

  /// No description provided for @symbol_usage_pet01.
  ///
  /// In en, this message translates to:
  /// **'\n● medycyna (protezy kości sklepienia czaszki, protezy naczyń krwionośnych, oznaczników chirurgicznych do podtrzymywania narządów wypreparowanych w czasie operacji, protezy więzadeł i ścięgien, elementy korpusu sztucznego serca), \n● opakowania (np. butelki na wodę, kubeczki do jogurtów, folie, tacki), \n● włókiennictwo (przędza dywanowa, włókna na tekstylia, włókna izolacyjne, polar), \n● budownictwo (płyty termoizolacyjne, płyty budowlane).'**
  String get symbol_usage_pet01;

  /// No description provided for @symbol_usage_hdpe02.
  ///
  /// In en, this message translates to:
  /// **'rury ciśnieniowe, złączki do rur, naczynia laboratoryjne, pojemniki, butelki, płyty, opakowania.'**
  String get symbol_usage_hdpe02;

  /// No description provided for @symbol_usage_pvc03.
  ///
  /// In en, this message translates to:
  /// **'\n● budownictwo (rury, kable, okleiny meblowe, wykładziny), \n● medycyna (strzykawki, cewniki, dreny, opakowania, ustniki do podawania powietrza, wzierniki laryngologiczne, elementy sztucznego serca, żyły krwionośne, implanty uszu).'**
  String get symbol_usage_pvc03;

  /// No description provided for @symbol_usage_ldpe04.
  ///
  /// In en, this message translates to:
  /// **'folie, opakowania, folie termokurczliwe, rękawice jednorazowe.'**
  String get symbol_usage_ldpe04;

  /// No description provided for @symbol_usage_pp05.
  ///
  /// In en, this message translates to:
  /// **'\n● przemysł włókienniczy (włókna, tkaniny, sznury, sieci, włókniny), \n● przemysł medyczny (siatki chirurgiczne, taśmy urologiczne, protezy kości sklepienia czaszki, protezy kości oczodołu, siatki chirurgiczne do operacyjnego leczenia przepuklin, części mikroskopowe, strzykawki, rozgałęźniki i łączniki do drenów, ściany namiotów tlenowych, probówki na krew), \n● opakowania, \n● materiały rolnicze.'**
  String get symbol_usage_pp05;

  /// No description provided for @symbol_usage_ps06.
  ///
  /// In en, this message translates to:
  /// **'produkcja opakowań na suche produkty, wieczka do jednorazowych kubków, pudełka, sztuczna biżuteria, zabawki.'**
  String get symbol_usage_ps06;

  /// No description provided for @symbol_usage_pap20.
  ///
  /// In en, this message translates to:
  /// **'transport and storage, packaging, product separation, protective material during renovations, construction element in artistic works.'**
  String get symbol_usage_pap20;

  /// No description provided for @symbol_usage_pap21.
  ///
  /// In en, this message translates to:
  /// **'packaging (e.g. dividers, separators inside cardboard packaging), tube-shaped packaging and decorative gift packaging, notebook covers and school folders.'**
  String get symbol_usage_pap21;

  /// No description provided for @symbol_usage_pap22.
  ///
  /// In en, this message translates to:
  /// **'packaging made of paper, newspapers, catalogues, books, notebooks, documents, wrapping paper, paper bags.'**
  String get symbol_usage_pap22;

  /// No description provided for @symbol_usage_gl70.
  ///
  /// In en, this message translates to:
  /// **'food packaging, tiles, kitchen countertops, optical glasses.'**
  String get symbol_usage_gl70;

  /// No description provided for @symbol_usage_gl71.
  ///
  /// In en, this message translates to:
  /// **'food packaging, tiles, kitchen countertops.'**
  String get symbol_usage_gl71;

  /// No description provided for @symbol_usage_gl72.
  ///
  /// In en, this message translates to:
  /// **'production of bottles for medicinal waters and beer. In addition to food packaging, we can also use recycled material to produce, for example, tiles and kitchen countertops.'**
  String get symbol_usage_gl72;

  /// No description provided for @symbol_usage_fe40.
  ///
  /// In en, this message translates to:
  /// **'car bodywork, ships, roof coverings, packaging, e.g. canning cans.'**
  String get symbol_usage_fe40;

  /// No description provided for @symbol_usage_alu41.
  ///
  /// In en, this message translates to:
  /// **'we most often encounter aluminum packaging for drinks, food and aluminum foil.'**
  String get symbol_usage_alu41;

  /// No description provided for @symbol_usage_for50.
  ///
  /// In en, this message translates to:
  /// **'production of chipboards and furniture, as fuel, in gardening and as animal bedding.'**
  String get symbol_usage_for50;

  /// No description provided for @symbol_usage_for51.
  ///
  /// In en, this message translates to:
  /// **'bottle stoppers, cork boards, coasters, decorative items, bags, fillers, floor and wall coverings.'**
  String get symbol_usage_for51;

  /// No description provided for @symbol_usage_tex60.
  ///
  /// In en, this message translates to:
  /// **'clothes, bandages and towels.'**
  String get symbol_usage_tex60;

  /// No description provided for @symbol_usage_tex61.
  ///
  /// In en, this message translates to:
  /// **'bags, but also decorations and interior design accessories.'**
  String get symbol_usage_tex61;

  /// No description provided for @symbol_facts_pet01.
  ///
  /// In en, this message translates to:
  /// **'\n ● PET was patented in 1941 by John Rex Whinfield, James Tennant Dickson, and the Calico Printers\' Association in Manchester.\n ● The PET bottle was invented by Nathaniel C. Wyeth, an engineer at DuPont and the brother of American painter Andrew Wyeth. The patent was issued to Wyeth\'s company in 1973 and later transferred to DuPont.\n ● PET bottles and sunlight help millions of people in developing countries obtain drinking water. Using a system called SODIS (solar water disinfection), residents expose water-filled PET bottles to the sun for several hours or days – depending on the amount of available sunlight – as a simple yet effective way to destroy pathogenic bacteria and obtain safe drinking water.\n ● A single PET bottle (0.5 liters) is strong enough to hold 50 times its weight in water.\n ● A 2-liter PET bottle, which weighed 68 grams in 1980, now weighs only 42 grams. The average weight of a single-use 0.5-liter PET water bottle is currently 9.9 grams, nearly half of what it was in 2000.\n ● PET is the most commonly recycled plastic in the world.\n ● PET is used to make a popular filament for 3D printing.'**
  String get symbol_facts_pet01;

  /// No description provided for @symbol_facts_hdpe02.
  ///
  /// In en, this message translates to:
  /// **'\n ● Polyethylene was first synthesized by the German chemist Hans von Pechman, who produced it in 1898 while heating diazomethane. Eugen Bamberger and Friedrich Tschimer examined the white, waxy substance and discovered that it consists of many -CH2- groups, naming it polymethylene.\n ● The material is resistant to mold, fungi, and rot, allowing it to maintain its shape for a long time without losing structural integrity, even in wet or humid environments.'**
  String get symbol_facts_hdpe02;

  /// No description provided for @symbol_facts_pvc03.
  ///
  /// In en, this message translates to:
  /// **'\n ● PVC is one of the oldest synthetic materials with the longest history in industrial production.\n ● Researchers accidentally discovered PVC at least twice in the 19th century. The first discovery in 1838 was made by French physicist and chemist Henri Victor Regnault, and the second in 1872 by German Eugen Baumann. In both cases, the polymer appeared as a white solid in flasks with the newly discovered gaseous vinyl chloride, exposed to sunlight. The material was difficult to process, and no one could meet the challenges of commercial applications.\n ● In 1913, German inventor Friedrich Heinrich August Klatte patented PVC. His method involved polymerizing vinyl chloride using sunlight.\n ● PVC is the third most widely used synthetic plastic polymer in the world, right after polyethylene and polypropylene.\n ● In the 1950s and 1960s, the boom in the music industry paved the way for its earliest mass-market applications. To this day, you can find old vinyl records that are a testament to the durability of this resilient material.'**
  String get symbol_facts_pvc03;

  /// No description provided for @symbol_facts_ldpe04.
  ///
  /// In en, this message translates to:
  /// **'\n ● Polyethylene was first synthesized by the German chemist Hans von Pechman, who accidentally produced it in 1898 while heating diazomethane. His colleagues Eugen Bamberger and Friedrich Tschimer examined the white, waxy substance and discovered that it consists of many -CH2- groups, naming it polymethylene.\n ● Despite being a low-density material, LDPE is produced in a high-pressure process.\n ● Many purchased food products are found in containers that are almost always made from LDPE sheets. This is because LDPE is one of the few types of plastics considered safe for food, as it does not contain BPA (bisphenol A). Storing and consuming food from LDPE plastic containers is completely safe because the unique chemical composition of LDPE does not contain traces of BPA.\n ● The loose crystalline structure of LDPE makes this material very flexible and has the ability to return to its original shape after compression.'**
  String get symbol_facts_ldpe04;

  /// No description provided for @symbol_facts_pp05.
  ///
  /// In en, this message translates to:
  /// **'\n ● Discovered in 1951 during an attempt to transform propylene into gasoline by J. Paul Hogan and Robert L. Banks of Phillips Petroleum Company.\n ● PP is a semi-crystalline polymer, meaning that the synthetic material exhibits organized and tightly packed molecular chains. Crystalline areas are called spherulites and can vary in shape and size, with amorphous areas occurring between crystalline regions. The degree of crystallinity affects many properties of the polymer. The semi-crystalline nature of PP gives this material a hazy appearance.\n ● PP has the lightest mass of all polymers and is also the polymer with the lowest density.\n ● Recycled PP is currently used in applications such as battery casings, paint cans, household storage, flower pots, composite wood, and furniture.\n ● Due to its lightweight, PP products generate less solid waste compared to other plastics.\n ● PP also has good temperature resistance, making it an excellent choice for applications in microwaves or for hot filling. This is due to the high melting temperature of PP – the working temperature range of PP reaches 146°C, and the heating temperature in a microwave and hot filling ranges from 100 to 120°C.'**
  String get symbol_facts_pp05;

  /// No description provided for @symbol_facts_ps06.
  ///
  /// In en, this message translates to:
  /// **'\n ● It is often used in its foamed form - styrofoam. It is used for packaging protection, food packaging, and in construction.\\n ● Polystyrene was discovered accidentally by the German pharmacist Eduard Simon in 1839. From storax, the resin of the oriental sweetgum tree Liquidambar orientalis, he distilled an oily substance which he named styrol, although he did not know what he had discovered. It wasn\'t until 1922 that another German, chemist Hermann Staudinger, analyzed and described this substance.\\n ● In 1953, Hermann Staudinger received the Nobel Prize in Chemistry for his research.\\n ● Styrofoam, a type of polystyrene, was developed by the Dow Chemical Company, also by accident. Dow employee Ray McIntire was trying to develop a flexible insulator by combining materials under pressure. As a result, he created Styrofoam, a material that expanded 40 times and was much lighter than regular polystyrene.'**
  String get symbol_facts_ps06;

  /// No description provided for @symbol_facts_pap20.
  ///
  /// In en, this message translates to:
  /// **'remember, before throwing it into the blue container, check if the material being discarded is not wet or contaminated. It cannot be mixed with other materials; in that case, you must separate them.'**
  String get symbol_facts_pap20;

  /// No description provided for @symbol_facts_fe40.
  ///
  /// In en, this message translates to:
  /// **'before putting steel packaging into the yellow container, remove labels and food residues. Note that needles, cans from construction, chemical, and hazardous materials are not suitable for recycling.'**
  String get symbol_facts_fe40;

  /// No description provided for @symbol_facts_tex60.
  ///
  /// In en, this message translates to:
  /// **'material produced after recycling is weaker than the original material; it is used for the production of, among others, mops, wipes, and shopping bags.'**
  String get symbol_facts_tex60;

  /// No description provided for @symbol_tooltips_pap21.
  ///
  /// In en, this message translates to:
  /// **'remember to check whether the material being thrown away is not wet or dirty before throwing it into the blue container. It cannot be combined with another material, then you must separate them.'**
  String get symbol_tooltips_pap21;

  /// No description provided for @symbol_tooltips_pap22.
  ///
  /// In en, this message translates to:
  /// **'remember to check whether the material being thrown away is not wet or dirty before throwing it into the blue container. It cannot be combined with another material, then you must separate them.'**
  String get symbol_tooltips_pap22;

  /// No description provided for @symbol_tooltips_gl70.
  ///
  /// In en, this message translates to:
  /// **'remember that you can throw food and cosmetics glass packaging into the green glass container, the packaging of which is not permanently connected to another material. You cannot throw mixed packaging, ceramics, heat-resistant glass, light bulbs, mirrors, glass, thermometers and packaging for medicines, oils, chemicals or hazardous substances into glass containers.'**
  String get symbol_tooltips_gl70;

  /// No description provided for @symbol_tooltips_gl71.
  ///
  /// In en, this message translates to:
  /// **'remember that you can throw food and cosmetics glass packaging into the green glass container, the packaging of which is not permanently connected to another material. You cannot throw mixed packaging, ceramics, heat-resistant glass, light bulbs, mirrors, glass, thermometers and packaging for medicines, oils, chemicals or hazardous substances into glass containers.'**
  String get symbol_tooltips_gl71;

  /// No description provided for @symbol_tooltips_gl72.
  ///
  /// In en, this message translates to:
  /// **'remember that you can throw food and cosmetics glass packaging into the green glass container, the packaging of which is not permanently connected to another material. You cannot throw mixed packaging, ceramics, heat-resistant glass, light bulbs, mirrors, glass, thermometers and packaging for medicines, oils, chemicals or hazardous substances into glass containers.'**
  String get symbol_tooltips_gl72;

  /// No description provided for @symbol_tooltips_alu40.
  ///
  /// In en, this message translates to:
  /// **'before throwing steel packaging into the yellow container, remove labels and food residues. Remember that needles and cans of construction, chemical and hazardous materials are not suitable for recycling.'**
  String get symbol_tooltips_alu40;

  /// No description provided for @symbol_tooltips_alu41.
  ///
  /// In en, this message translates to:
  /// **'before throwing packaging into the yellow container, remove labels and food residues. Remember that needles and cans of construction, chemical and hazardous materials are not suitable for recycling.'**
  String get symbol_tooltips_alu41;

  /// No description provided for @symbol_tooltips_cx80.
  ///
  /// In en, this message translates to:
  /// **'the letter \'x\' in the symbol may be replaced by the abbreviation of the dominant material. Packaging marked with this symbol can be thrown away in the yellow container. You don\'t have to wash the packaging thoroughly before throwing it away, just remove any food remains.'**
  String get symbol_tooltips_cx80;

  /// No description provided for @symbol_tooltips_cx81.
  ///
  /// In en, this message translates to:
  /// **'The letter \'x\' in the symbol can be replaced with the abbreviation of the dominant material. Packaging marked with this symbol can be disposed of in the yellow container. Before disposal, you don\'t need to wash the packaging thoroughly, just remove food residues,'**
  String get symbol_tooltips_cx81;

  /// No description provided for @symbol_tooltips_cx82.
  ///
  /// In en, this message translates to:
  /// **'The letter \'x\' in the symbol can be replaced with the abbreviation of the dominant material. Packaging marked with this symbol can be disposed of in the yellow container. Before disposal, you don\'t need to wash the packaging thoroughly, just remove food residues,'**
  String get symbol_tooltips_cx82;

  /// No description provided for @symbol_tooltips_cx83.
  ///
  /// In en, this message translates to:
  /// **'The letter \'x\' in the symbol can be replaced with the abbreviation of the dominant material. Packaging marked with this symbol can be disposed of in the yellow container. Before disposal, you don\'t need to wash the packaging thoroughly, just remove food residues,'**
  String get symbol_tooltips_cx83;

  /// No description provided for @symbol_tooltips_cx84.
  ///
  /// In en, this message translates to:
  /// **'The letter \'x\' in the symbol can be replaced with the abbreviation of the dominant material. Packaging marked with this symbol can be disposed of in the yellow container. Before disposal, you don\'t need to wash the packaging thoroughly, just remove food residues,'**
  String get symbol_tooltips_cx84;

  /// No description provided for @symbol_tooltips_cx85.
  ///
  /// In en, this message translates to:
  /// **'The letter \'x\' in the symbol can be replaced with the abbreviation of the dominant material. Packaging marked with this symbol can be disposed of in the yellow container. Before disposal, you don\'t need to wash the packaging thoroughly, just remove food residues,'**
  String get symbol_tooltips_cx85;

  /// No description provided for @symbol_tooltips_cx90.
  ///
  /// In en, this message translates to:
  /// **'The letter \'x\' in the symbol can be replaced with the abbreviation of the dominant material. Packaging marked with this symbol can be disposed of in the yellow container. Before disposal, you don\'t need to wash the packaging thoroughly, just remove food residues,'**
  String get symbol_tooltips_cx90;

  /// No description provided for @symbol_tooltips_cx91.
  ///
  /// In en, this message translates to:
  /// **'The letter \'x\' in the symbol can be replaced with the abbreviation of the dominant material. Packaging marked with this symbol can be disposed of in the yellow container. Before disposal, you don\'t need to wash the packaging thoroughly, just remove food residues,'**
  String get symbol_tooltips_cx91;

  /// No description provided for @symbol_tooltips_cx92.
  ///
  /// In en, this message translates to:
  /// **'The letter \'x\' in the symbol can be replaced with the abbreviation of the dominant material. Packaging marked with this symbol can be disposed of in the yellow container. Before disposal, you don\'t need to wash the packaging thoroughly, just remove food residues,'**
  String get symbol_tooltips_cx92;

  /// No description provided for @symbol_tooltips_cx95.
  ///
  /// In en, this message translates to:
  /// **'The letter \'x\' in the symbol can be replaced with the abbreviation of the dominant material. Packaging marked with this symbol can be disposed of in the yellow container. Before disposal, you don\'t need to wash the packaging thoroughly, just remove food residues,'**
  String get symbol_tooltips_cx95;

  /// No description provided for @symbol_tooltips_cx96.
  ///
  /// In en, this message translates to:
  /// **'The letter \'x\' in the symbol can be replaced with the abbreviation of the dominant material. Packaging marked with this symbol can be disposed of in the yellow container. Before disposal, you don\'t need to wash the packaging thoroughly, just remove food residues,'**
  String get symbol_tooltips_cx96;

  /// No description provided for @symbol_tooltips_cx97.
  ///
  /// In en, this message translates to:
  /// **'The letter \'x\' in the symbol can be replaced with the abbreviation of the dominant material. Packaging marked with this symbol can be disposed of in the yellow container. Before disposal, you don\'t need to wash the packaging thoroughly, just remove food residues,'**
  String get symbol_tooltips_cx97;

  /// No description provided for @symbol_tooltips_cx98.
  ///
  /// In en, this message translates to:
  /// **'The letter \'x\' in the symbol can be replaced with the abbreviation of the dominant material. Packaging marked with this symbol can be disposed of in the yellow container. Before disposal, you don\'t need to wash the packaging thoroughly, just remove food residues,'**
  String get symbol_tooltips_cx98;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'assets/images/home/home-top-right-en.png'**
  String get search;

  /// No description provided for @list.
  ///
  /// In en, this message translates to:
  /// **'assets/images/home/home-down-left-en.png'**
  String get list;

  /// No description provided for @glossary.
  ///
  /// In en, this message translates to:
  /// **'assets/images/home/home-top-left-en.png'**
  String get glossary;

  /// No description provided for @authors.
  ///
  /// In en, this message translates to:
  /// **'assets/images/home/home-down-right-en.png'**
  String get authors;

  /// No description provided for @game.
  ///
  /// In en, this message translates to:
  /// **'assets/images/home/game-en.png'**
  String get game;

  /// No description provided for @glossary_description.
  ///
  /// In en, this message translates to:
  /// **'Polymer – a chemical substance consisting of many times repeated units called units. The basis of the monomeric unit (mer) is carbon (C). We distinguish:\n  ● natural polymers - naturally occurring in nature, such as: rubber, wood, proteins, nucleic acids (DNA and RNA), starch, cellulose, collagen (skin component),\n● synthetic polymers (polymer materials) - produced in polymerization processes, which additionally contain auxiliary agents improving properties or processing possibilities. The most popular materials include: polyolefins, polyvinyl chloride, polyethylene terephthalate, polycarbonate, polystyrene, polyamide.\n\nPolymerization - a method of obtaining synthetic polymers in a chemical reaction by combining smaller molecules (monomers - single units) into long chains.\n\nThermoplastics - also known as thermoplastics, belong to the group of plastomers. It is capable of repeatedly changing from solid to plastic and liquid and vice versa without significant changes in properties. They can be processed many times, i.e. recycled. There are semi-crystalline (hard and brittle) and amorphous (flexible) thermoplastics.\n\nDuroplasts – also known as hardenable plastics, belong to the group of plastomers. They transform irreversibly: under the influence of heat (thermosets), chemical factors (chemosets) or physical factors (elastomers - rubber, caoutchouc). They are infusible and insoluble. They are not recyclable, cannot be recycled, and are not degradable. For their disposal, the coking method is used (coke oven gas and coke are produced).\n\nElastomers – have the ability to reversibly deform under the influence of applied forces. These include both natural materials (natural rubber) and synthetic materials (rubber, silicone, synthetic rubber). Elastomers change shape under the action of compressive, shear and tension forces, and then return to their original shape and dimensions when these forces are removed. Due to their elasticity, they perfectly dampen vibrations and shocks and contribute to reducing the noise emitted by devices.\n\nDegradable plastics (including biodegradable) are natural and synthetic materials which, depending on aerobic or anaerobic processes, are completely decomposed by microorganisms (bacteria and fungi) into carbon dioxide, methane, water, biomass and inorganic materials.\n\nRecycling - is the process of reusing raw materials and materials, i.e. returning them to circulation. This process is complex and multi-stage and includes: waste collection and storage, waste identification, separation and sorting, shredding, washing and drying, and reprocessing. There are 4 types of recycling:\n● mechanical (also known as material) recycling, which produces a secondary raw material, i.e. granulate for repeated processing.\n● raw material recycling (also known as chemical recycling) involves recovering raw materials using chemical reactions, e.g. processing packaging into new plastic products.\n● organic recycling used for biodegradable waste, also called composting. This waste is broken down by microorganisms.\n● thermal (or energy) recycling, which involves obtaining energy from waste combustion.'**
  String get glossary_description;

  /// No description provided for @glossary_law.
  ///
  /// In en, this message translates to:
  /// **'The markings, symbols and names were taken from the Regulation of the Minister of the Environment of September 3, 2014 on packaging labeling patterns.'**
  String get glossary_law;

  /// No description provided for @authors_description.
  ///
  /// In en, this message translates to:
  /// **'The application was developed as part of the activities of the CARBON Polymer Engineering Scientific Club operating at the Department of Technology and Processing of Polymer Plastics at the Faculty of Mechanical Engineering of the Lublin University of Technology. \n\n  The authors of the application are:\n  - Joanna Tomasik,\n  - Sebastian Druciak\n  together with the supervisor of the scientific club: Dr. Eng. Aneta Tor-Świątek.'**
  String get authors_description;

  /// No description provided for @sm_invitation.
  ///
  /// In en, this message translates to:
  /// **'Check our social media: '**
  String get sm_invitation;
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
