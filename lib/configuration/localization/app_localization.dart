import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localization_de.dart';
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
    Locale('de'),
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

  /// No description provided for @category_polymers.
  ///
  /// In en, this message translates to:
  /// **'Polymer/Plastics'**
  String get category_polymers;

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
  /// **'all polymeric materials not included as separate symbols were considered as other. They include many materials with different properties. Including biodegradable polymeric materials.\n\n Examples of plastics - thermoplastics: \n ● POM - poly(oxide) methylene), \n ● PMMA - poly(methyl methacrylate) (acrylic glass), \n ● PA - polyamides, \n ● PC - polycarbonate, \n ● PTFE - polytetrafluoroethylene (Teflon), \n ● ABS - acrylonitrile-butadiene -styrene.\n\n Examples of hardenable plastics (duroplasts): \n ● PUR - polyurethane, \n ● resins:  \n   - acrylic,  \n   - epoxy,  \n   - formaldehyde \n   - phenolic, are harmful and toxic, \n ● PAN - polyacrylonitrile, bakelite. \n \n Examples of biodegradable polymer materials: \n ● starch/cellulose-based polymers, \n ● PLA - poly(lactic acid), polylactide, \n ● PGA - poly(glycolic acid), \n ● PHA - poly(alkanoic acids) , \n ● PVA - poly(vinyl acetate), \n ● PEG - poly(ethylene oxide), \n ● PCL - polycaprolactone.'**
  String get symbol_description_inne07;

  /// No description provided for @symbol_description_pap20.
  ///
  /// In en, this message translates to:
  /// **'consists of several sheets of corrugated paper and flat paper made of kraft paper, arranged alternately and glued together. This paper is made of waste paper or virgin fibers. They may consist of a different number of layers.'**
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
  /// **'thermoplastic, safe, non-toxic, non-biodegradable with high biocompatibility, colorless, hard and brittle, heavier than water, recyclable, dyes can be used.'**
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
  /// **'\n ● medicine (prosthetic bones of the skull vault, blood vessel prostheses, surgical markers for supporting organs prepared during surgery, ligament and tendon prostheses, elements of the body of an artificial heart), \n ● packaging (e.g. water bottles) , yogurt cups, foils, trays), \n ● textiles (carpet yarn, textile fibers, insulating fibers, fleece), \n ● construction (thermal insulation boards, building boards).'**
  String get symbol_usage_pet01;

  /// No description provided for @symbol_usage_hdpe02.
  ///
  /// In en, this message translates to:
  /// **'pressure pipes, pipe fittings, laboratory vessels, containers, bottles, plates, packaging.'**
  String get symbol_usage_hdpe02;

  /// No description provided for @symbol_usage_pvc03.
  ///
  /// In en, this message translates to:
  /// **'\n ● construction (pipes, cables, furniture veneers, carpets), \n ● medicine (syringes, catheters, drains, packaging, mouthpieces for administering air, ENT specula, artificial heart components, blood veins, ear implants ).'**
  String get symbol_usage_pvc03;

  /// No description provided for @symbol_usage_ldpe04.
  ///
  /// In en, this message translates to:
  /// **'foils, packaging, shrink films, disposable gloves.'**
  String get symbol_usage_ldpe04;

  /// No description provided for @symbol_usage_pp05.
  ///
  /// In en, this message translates to:
  /// **'\n ● textile industry (fibers, fabrics, ropes, nets, non-woven fabrics), \n ● medical industry (surgical meshes, urological tapes, cranial vault bone prostheses, orbital bone prostheses, surgical meshes for surgical treatment of hernias, microscopic parts, syringes, manifolds and connectors for tubing, walls of oxygen tents, blood test tubes), \n ● packaging, bottle stoppers, medicine packaging, \n ● agricultural materials.'**
  String get symbol_usage_pp05;

  /// No description provided for @symbol_usage_ps06.
  ///
  /// In en, this message translates to:
  /// **'production of dry product packaging, disposable cup lids, boxes, artificial jewelry, toys, thermoforming foils.'**
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
  /// **'\n ● PVC is one of the oldest synthetic materials with the longest history in industrial production.\n ● Early researchers accidentally discovered PVC at least twice in the 19th century. The first discovery in 1838 was made by the French physicist and chemist Henri Victor Regnault, and the second in 1872 by the German Eugen Baumann. In both cases, the polymer appeared as a white solid in flasks containing the newly discovered gaseous vinyl chloride, which were exposed to sunlight. The material was difficult to work with and no one met the challenges of application commercial applications.\n ● In 1913, German inventor Friedrich Heinrich August Klatte patented PVC. His method involved the polymerization of vinyl chloride using sunlight.\n ● It is the third most commonly used synthetic polymer in the world - after polyethylene and polypropylene.\n ● From 1950s and 1960s, it is used to produce vinyl records.'**
  String get symbol_facts_pvc03;

  /// No description provided for @symbol_facts_ldpe04.
  ///
  /// In en, this message translates to:
  /// **'\n ● Polyethylene was first synthesized by the German chemist Hans von Pechman, who produced it by accident in 1898 while heating diazomethane. His colleagues Eugen Bamberger and Friedrich Tschimer examined the white, waxy substance and discovered that it consisted of it from many -CH2- groups and called it polymethylene.\n ● Although it is a low-density plastic, LDPE is produced in a high-pressure process.\n ● Many purchased food products are in containers, which are almost always made of LDPE. This is because LDPE is one of the few varieties of plastics considered safe for food because it does not contain BPA (also known as bisphenol A). Storing and consuming food from LDPE containers is completely safe because the unique chemical composition of LDPE does not contain traces BPA.\n ● The loose crystalline structure of LDPE makes the material very flexible and able to return to its original form after being compressed.'**
  String get symbol_facts_ldpe04;

  /// No description provided for @symbol_facts_pp05.
  ///
  /// In en, this message translates to:
  /// **'\n ● It was discovered in 1951, while J. Paul Hogan and Robert L. Banks of the Phillips Petroleum Company were trying to convert propylene into gasoline.\n ● PP is a semi-crystalline polymer, which means that it exhibits an organized and tightly packed molecular chains. Areas of crystallinity are called spherulites and can vary in shape and size, with amorphous areas occurring between the crystalline areas. The degree of crystallinity affects many properties of the polymer. The semi-crystalline nature of PP gives the material a hazy appearance.\n ● PP has the lightest weight of all polymers and is also the lowest density polymer.\n ● Recycled PP is currently used in applications such as battery cases, paint cans, home storage, flower pots, composite wood and furniture.\n ● Thanks due to its light weight, PP products produce less solid waste compared to other plastics.\n ● PP also has good temperature resistance, making it an excellent choice for microwave or hot fill applications. This is due to the high melting point of PP - the maximum short-term use temperature of PP reaches 146°C, and the temperature of heating in a microwave oven and hot filling is from 100 to 120°C.'**
  String get symbol_facts_pp05;

  /// No description provided for @symbol_facts_ps06.
  ///
  /// In en, this message translates to:
  /// **'\n ● Polystyrene was discovered accidentally by the German pharmacist Edward Simon in 1839. From storax, the resin of the oriental sugar tree Liquidambar orientalis, he distilled an oily substance which he called styrol, but he did not know what he had discovered. It was not until 1922 another German, chemist, Hermann Staudinger, tested and described this substance.\n ● In 1953, Hermann Staudinger received the Nobel Prize in Chemistry for his research.\n ● Its foamed form is also often used - Styrofoam. It is used in packaging for product protection, as food packaging and in construction. \n ● Styrofoam was developed by the Dow Chemical Company, also by accident. Dow employee Ray McIntire tried to develop a flexible insulator by combining materials under pressure. As a result, he created Styrofoam, a material that expanded 40 times and was much lighter than ordinary polystyrene.'**
  String get symbol_facts_ps06;

  /// No description provided for @symbol_facts_pap20.
  ///
  /// In en, this message translates to:
  /// **'\n ● The first use of cardboard packaging appeared in 1817 for transporting hats. \n ● A manual machine for corrugating textiles was used by Edward Allen and Edward Healey from 1856. They received the first patent in London for the use of corrugated paper. \n ● Albert Jones, an American, obtained a patent for using corrugated paper to protect fragile items in 1871. In the same year, G. Smyth built a machine for producing cardboard.\n ● Currently, cardboard is produced using materials such as wood fibers or waste paper.\n ● The machine used to produce corrugated cardboard is called a corrugator. \n ● Paper undergoes the corrugation process using rollers that create waves on the paper surface. The next step is gluing the layers at high temperature and pressure. Then the layers are pressed in rollers, and finally, the cardboard is cut into appropriate sheets.'**
  String get symbol_facts_pap20;

  /// No description provided for @symbol_facts_pap21.
  ///
  /// In en, this message translates to:
  /// **'\n ● In 1916, five-layered cardboard was first produced at the Sefton Manufacturing Co. in Kokomo, Indiana, USA. In 1955, the production of seven-layered cardboard began in the USA.\n ● Cardboard is the thickest (up to 4 mm) paper product with a grammage greater than 315 g/m². It is a much stiffer and more durable material than paperboard. Cardboard consists of several layers of pulp.\n ● Cardboard is a paper product characterized by uniform and elastic material with a grammage ranging from 160 g/m² to 315 g/m². It is very easy to process and is used for making boxes, book covers, postcards, packaging, or folders, suitable for printing.\n ● The first cardboard packaging was created in the workshop of the English inventor and industrialist, Sir Malcolm Thonhilla, in 1817.'**
  String get symbol_facts_pap21;

  /// No description provided for @symbol_facts_pap22.
  ///
  /// In en, this message translates to:
  /// **'\n ● Paper was invented accidentally in China between 105 and 107 CE. \n ● Currently, paper is manufactured using cellulose fibers or wood pulp (shredded and ground wooden bales, usually pine). Other trees such as poplar, spruce, birch, fir, beech, or aspen are also used in production. Wood pulp is categorized as white (from spruce wood), brown (from pine wood), and chemical (from wood subjected to previous impregnation). \n ● Paper production also utilizes plant fibers (selected during the chemical pulping process) including cotton, linen, bamboo, hemp, reed, or straw, as well as waste paper.\n ● Contemporary paper consists of many non-fibrous substances such as organic fillers (potato starch) and inorganic fillers (talc, chalk, kaolin, or gypsum). Chemical substances such as hydrosulfite and dyes are also added to paper production, along with binding agents, coagulants, and waterproofing agents.\n ● Producing 1 ton of paper (200,000 sheets of A4) requires 17 trees (1 hectare of forest) and 1200 liters of water.\n ● Producing 1 sheet of A4 paper requires 10 liters of water.\n ● Paper consumption is steadily increasing, with global consumption at 55 kg per person annually, in Europe 147 kg per person annually, and in Poland 143 kg per person annually (Environmental Paper Network Report 2020). \n ● Remember! 1 tree provides oxygen for 10 people for 1 year.'**
  String get symbol_facts_pap22;

  /// No description provided for @symbol_facts_tex60.
  ///
  /// In en, this message translates to:
  /// **'material produced after recycling is weaker than the original material; it is used for the production of, among others, mops, wipes, and shopping bags.'**
  String get symbol_facts_tex60;

  /// No description provided for @symbol_tooltips_pap20.
  ///
  /// In en, this message translates to:
  /// **'remember, before throwing it into the blue container, check if the material being discarded is not wet or contaminated. It cannot be mixed with other materials; in that case, you must separate them.'**
  String get symbol_tooltips_pap20;

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

  /// No description provided for @game_soon.
  ///
  /// In en, this message translates to:
  /// **'assets/images/home/game-soon-en.png'**
  String get game_soon;

  /// No description provided for @glossary_polymer_header.
  ///
  /// In en, this message translates to:
  /// **'Polymer'**
  String get glossary_polymer_header;

  /// No description provided for @glossary_polymer.
  ///
  /// In en, this message translates to:
  /// **' - a chemical substance consisting of repeatedly repeated units called mers. The basis of the monomeric unit (mer) is carbon (C). We distinguish: \n ● natural polymers - naturally occurring in nature, such as: rubber, wood, proteins, nucleic acids (DNA and RNA), starch, cellulose, collagen (skin component), \n● synthetic polymers (polymer plastics) - produced in polymerization processes, which additionally contain auxiliary agents improving properties or processing possibilities. The most popular plastics include include: polyolefins, polyvinyl chloride, polyethylene terephthalate, polycarbonate, polystyrene, polyamide.'**
  String get glossary_polymer;

  /// No description provided for @glossary_polymerization_header.
  ///
  /// In en, this message translates to:
  /// **'Polymerization'**
  String get glossary_polymerization_header;

  /// No description provided for @glossary_polymerization.
  ///
  /// In en, this message translates to:
  /// **' - a method of obtaining synthetic polymers in a chemical reaction by combining smaller molecules (monomers - single units) into long chains.'**
  String get glossary_polymerization;

  /// No description provided for @glossary_thermoplastics_header.
  ///
  /// In en, this message translates to:
  /// **'Thermoplastics'**
  String get glossary_thermoplastics_header;

  /// No description provided for @glossary_thermoplastics.
  ///
  /// In en, this message translates to:
  /// **' - also known as plastics thermoplastics, belong to the group of plastomers. They are capable of repeatedly changing from solid to plastic and liquid and vice versa without significant changes in properties. They can be processed many times, i.e. recycled. There are semi-crystalline (hard and brittle) and amorphous (flexible) thermoplastics.'**
  String get glossary_thermoplastics;

  /// No description provided for @glossary_duroplastics_header.
  ///
  /// In en, this message translates to:
  /// **'Duroplastics'**
  String get glossary_duroplastics_header;

  /// No description provided for @glossary_duroplastics.
  ///
  /// In en, this message translates to:
  /// **' - also known as hardenable plastics, belong to the group of plastomers. They transform irreversibly: under the influence of heat (thermosets), chemical factors (chemosets) or physical factors (elastomers - rubber, caoutchouc). They are infusible and insoluble. They do not degrade, they are ground in the recycling process and used as an additive in the production of composites. For their disposal, the coking method is used (coke oven gas and coke are produced).'**
  String get glossary_duroplastics;

  /// No description provided for @glossary_elastomers_header.
  ///
  /// In en, this message translates to:
  /// **'Elastomers'**
  String get glossary_elastomers_header;

  /// No description provided for @glossary_elastomers.
  ///
  /// In en, this message translates to:
  /// **' – have the ability to reversibly deform under the influence of applied forces. These include both natural materials (natural rubber) and synthetic materials (rubber, silicone, synthetic rubber). Elastomers change shape under the action of compressive, shear and tension forces, and then return to their original shape and dimensions when these forces are removed. Due to their elasticity, they perfectly dampen vibrations and shocks and contribute to reducing the noise emitted by devices.'**
  String get glossary_elastomers;

  /// No description provided for @glossary_degradable_plastics_header.
  ///
  /// In en, this message translates to:
  /// **'Degradable plastics'**
  String get glossary_degradable_plastics_header;

  /// No description provided for @glossary_degradable_plastics.
  ///
  /// In en, this message translates to:
  /// **' (including biodegradable) - natural and synthetic materials which, depending on aerobic or anaerobic processes, are completely decomposed by microorganisms (bacteria and fungi) into carbon dioxide, methane, water, biomass and inorganic materials.'**
  String get glossary_degradable_plastics;

  /// No description provided for @glossary_recycling_header.
  ///
  /// In en, this message translates to:
  /// **'Recycling'**
  String get glossary_recycling_header;

  /// No description provided for @glossary_recycling.
  ///
  /// In en, this message translates to:
  /// **' - is the process of reusing raw materials and materials, i.e. returning them to circulation. This process is complex and multi-stage and includes: waste collection and storage, waste identification, separation and sorting, shredding, washing and drying, and reprocessing. There are 4 types of recycling: \n● mechanical (or material) recycling, which produces a secondary raw material, i.e. granulate for repeated processing. \n● raw material recycling (also known as chemical recycling) involves recovering raw materials using chemical reactions, e.g. processing packaging into new plastic products. \n● organic recycling used for biodegradable waste, also called composting. This waste is broken down by microorganisms. \n● thermal (or energy) recycling, which involves obtaining energy from burning waste.'**
  String get glossary_recycling;

  /// No description provided for @glossary_law.
  ///
  /// In en, this message translates to:
  /// **'The markings, symbols and names were taken from the Regulation of the Minister of the Environment of September 3, 2014 on packaging labeling patterns.'**
  String get glossary_law;

  /// No description provided for @authors_description.
  ///
  /// In en, this message translates to:
  /// **'The application was developed as part of the activities of the CARBON Polymer Engineering Scientific Club operating at the Department of Technology and Processing of Polymer Plastics at the Faculty of Mechanical Engineering of the Lublin University of Technology. \n\n  The authors of the application are:\n  ● Joanna Tomasik,\n  ● Sebastian Druciak\n  together with the supervisor of the scientific club: \n  ● Dr. Eng. Aneta Tor-Świątek.'**
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
  bool isSupported(Locale locale) => <String>['de', 'en', 'pl'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'de': return AppLocalizationsDe();
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
