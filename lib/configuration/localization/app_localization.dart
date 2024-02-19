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
  /// **'POLYMER/PLASTICS'**
  String get category_polimers;

  /// No description provided for @category_paper.
  ///
  /// In en, this message translates to:
  /// **'PAPER AND CARDBOARD'**
  String get category_paper;

  /// No description provided for @category_glass.
  ///
  /// In en, this message translates to:
  /// **'GLASS'**
  String get category_glass;

  /// No description provided for @category_steel.
  ///
  /// In en, this message translates to:
  /// **'STEEL AND ALUMINUM'**
  String get category_steel;

  /// No description provided for @category_wood.
  ///
  /// In en, this message translates to:
  /// **'WOOD AND CORK'**
  String get category_wood;

  /// No description provided for @category_cotton.
  ///
  /// In en, this message translates to:
  /// **'COTTON AND JUTE'**
  String get category_cotton;

  /// No description provided for @category_mixed.
  ///
  /// In en, this message translates to:
  /// **'COMPOSITE'**
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
  /// **'polymer from the polyester group. A polymer is a substance or material consisting of very large molecules called macromolecules, composed of many repeating subunits.'**
  String get symbol_description_pet01;

  /// No description provided for @symbol_description_hdpe02.
  ///
  /// In en, this message translates to:
  /// **'ethylene polymer. A polymer is a substance or material consisting of very large molecules called macromolecules, composed of many repeating subunits.'**
  String get symbol_description_hdpe02;

  /// No description provided for @symbol_description_pvc03.
  ///
  /// In en, this message translates to:
  /// **'polymer from the vinyl polymer group, obtained in vinyl chloride. A polymer is a substance or material consisting of very large molecules called macromolecules, composed of many repeating subunits.'**
  String get symbol_description_pvc03;

  /// No description provided for @symbol_description_ldpe04.
  ///
  /// In en, this message translates to:
  /// **'ethylene polymer. A polymer is a substance or material consisting of very large molecules called macromolecules, composed of many repeating subunits.'**
  String get symbol_description_ldpe04;

  /// No description provided for @symbol_description_pp05.
  ///
  /// In en, this message translates to:
  /// **'polymer from the polyolefin group, obtained from propene. A polymer is a substance or material consisting of very large molecules called macromolecules, composed of many repeating subunits.'**
  String get symbol_description_pp05;

  /// No description provided for @symbol_description_ps06.
  ///
  /// In en, this message translates to:
  /// **'styrene polymer. A polymer is a substance or material consisting of very large molecules called macromolecules, composed of many repeating subunits.'**
  String get symbol_description_ps06;

  /// No description provided for @symbol_description_inne07.
  ///
  /// In en, this message translates to:
  /// **'all polymeric materials not included as separate symbols were considered other. A polymer is a substance or material consisting of very large molecules called macromolecules, composed of many repeating subunits. They include many materials with different properties. Including biodegradable polymer materials.\n\n Examples of materials - thermoplastics: POM - poly(methylene oxide), PMMA - poly(methyl methacrylate) (acrylic glass), PA - polyamides.\n\n Examples of plastics - duroplasts: Bakelite, resins, PAN - polyacrylonitrile.\n\n Examples of biodegradable polymer materials: polymers based on starch/cellulose, PLA - poly(lactic acid), PHA - poly(alkanoic acids), PVA - poly(vinyl acetate), PEG - poly(ethylene oxide).\n '**
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
  /// **'thermoplastic, heavier than water, hard, stiff, chemically and thermally resistant, does not absorb water, dielectric (does not conduct electricity), non-toxic, non-biodegradable, but biocompatible, i.e. does not cause allergic reactions, transparent.'**
  String get symbol_properties_pet01;

  /// No description provided for @symbol_properties_hdpe02.
  ///
  /// In en, this message translates to:
  /// **'thermoplastic, lighter than water, hard, stiff, non-toxic, cheap, milky white color, resistant to low temperatures, difficult to glue and decorate.'**
  String get symbol_properties_hdpe02;

  /// No description provided for @symbol_properties_pvc03.
  ///
  /// In en, this message translates to:
  /// **'thermoplastic, heavier than water, white powder, chemically resistant, degrades already at 170ºC and is then toxic, durable, can be flexible and malleable or hard and brittle depending on the method of production.'**
  String get symbol_properties_pvc03;

  /// No description provided for @symbol_properties_ldpe04.
  ///
  /// In en, this message translates to:
  /// **'thermoplastic, lighter than water, soft, transparent, non-toxic, cheap, resistant to low temperatures, not resistant to elevated temperatures, not resistant to loads, difficult to glue and decorate.'**
  String get symbol_properties_ldpe04;

  /// No description provided for @symbol_properties_pp05.
  ///
  /// In en, this message translates to:
  /// **'the lightest thermoplastic material, chemically and thermally resistant, hard, stiff, non-toxic, shrinkable.'**
  String get symbol_properties_pp05;

  /// No description provided for @symbol_properties_ps06.
  ///
  /// In en, this message translates to:
  /// **'thermoplastic, non-biodegradable with high biocompatibility, colorless, hard and brittle, dyes can be used.'**
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
  /// **'medicine (skull bone prostheses, blood vessel prostheses, surgical markers for supporting organs prepared during surgery, ligament and tendon prostheses, elements of the body of an artificial heart), production of packaging (e.g. water bottles, yogurt cups, foil, trays), textile industry (carpet yarn, textile fibers, insulating fibers, fleece) and construction (thermal insulation boards, building boards).'**
  String get symbol_usage_pet01;

  /// No description provided for @symbol_usage_hdpe02.
  ///
  /// In en, this message translates to:
  /// **'pressure pipes, pipe fittings, laboratory vessels, containers, bottles, plates, packaging.'**
  String get symbol_usage_hdpe02;

  /// No description provided for @symbol_usage_pvc03.
  ///
  /// In en, this message translates to:
  /// **'construction (pipes, cables, furniture veneers, carpets), medicine (syringes, catheters, drains, packaging, mouthpieces for administering air, laryngological specula, elements of an artificial heart, blood veins, ear implants).'**
  String get symbol_usage_pvc03;

  /// No description provided for @symbol_usage_ldpe04.
  ///
  /// In en, this message translates to:
  /// **'foils, packaging, heat-shrinkable foils,b single-use gloves.'**
  String get symbol_usage_ldpe04;

  /// No description provided for @symbol_usage_pp05.
  ///
  /// In en, this message translates to:
  /// **'textile industry (fibers, fabrics, cords, nets, non-woven fabrics), medical industry (surgical meshes, urological tapes, cranial vault bone prostheses, orbital bone prostheses, surgical meshes for surgical treatment of hernias, microscopic parts, syringes, manifolds and connectors for drains, walls of oxygen tents, blood test tubes), packaging and agricultural materials.'**
  String get symbol_usage_pp05;

  /// No description provided for @symbol_usage_ps06.
  ///
  /// In en, this message translates to:
  /// **'production of packaging for dry products, lids for disposable cups, boxes, artificial jewelry, toys.'**
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

  /// No description provided for @symbol_facts_ps06.
  ///
  /// In en, this message translates to:
  /// **'it is often used in its foamed form - styrofoam. It is used for packaging protection, food packaging, and in construction.'**
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
  /// **'assets/images/home/home-top-left-en.png'**
  String get search;

  /// No description provided for @list.
  ///
  /// In en, this message translates to:
  /// **'assets/images/home/home-top-right-en.png'**
  String get list;

  /// No description provided for @game.
  ///
  /// In en, this message translates to:
  /// **'assets/images/home/home-down-left-en.png'**
  String get game;

  /// No description provided for @authors.
  ///
  /// In en, this message translates to:
  /// **'assets/images/home/home-down-right-en.png'**
  String get authors;

  /// No description provided for @authors_description.
  ///
  /// In en, this message translates to:
  /// **'The application was developed as part of the activities of the CARBON Polymer Engineering Scientific Club operating at the Department of Technology and Processing of Polymer Plastics at the Faculty of Mechanical Engineering of the Lublin University of Technology. \n\n  The authors of the application are:\n  - Joanna Tomasik,\n  - Sebastian Druciak\n  together with the supervisor of the scientific club: Dr. Eng. Aneta Tor-Świątek.'**
  String get authors_description;
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
