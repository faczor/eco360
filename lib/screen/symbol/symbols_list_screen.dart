import 'dart:io';

import 'package:eco360/screen/symbol/widget/symbol_list.dart';
import 'package:eco360/screen/symbol/widget/search_textfield.dart';
import 'package:flutter/material.dart';
import 'package:eco360/configuration/localization/app_localization.dart';
import 'package:google_fonts/google_fonts.dart';

class SymbolList extends StatefulWidget {
  SymbolList(this.shouldFocusOnSearch, {super.key});

  final bool shouldFocusOnSearch;

  @override
  State<SymbolList> createState() => _SymbolListState();
}

class _SymbolListState extends State<SymbolList> {

  String _searchValue = '';

  final TextEditingController controller = TextEditingController();

  _onSearchValueChange(String value) {
    setState(() {
      _searchValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 173, 213, 127),
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.header_symbol_list, style: GoogleFonts.montserrat(),),
        backgroundColor: const Color.fromARGB(255, 252, 141, 75),
        leading: GestureDetector(
          child: Icon(FocusScope.of(context).hasFocus && widget.shouldFocusOnSearch ? Icons.close :Icons.arrow_back),
          onTap: () {
            FocusScope.of(context).unfocus();

            if(!FocusScope.of(context).hasFocus || !widget.shouldFocusOnSearch) {
              Navigator.pop(context);
            }
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Search
            SearchTextField(
                controller, _onSearchValueChange, widget.shouldFocusOnSearch),
            const SizedBox(height: 20,),
            ListOfSymbols(_searchValue)
            //Content
          ],
        ),
      ),
    );
  }
}
