import 'package:eco360/screen/symbol/widget/symbol_list.dart';
import 'package:eco360/screen/symbol/widget/search_textfield.dart';
import 'package:flutter/material.dart';

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
      backgroundColor: Color.fromARGB(255, 127, 175, 90),
      appBar: AppBar(
        title: Text("Lista symboli"),
        backgroundColor: const Color.fromARGB(255, 252, 141, 75),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Search
            SearchTextField(
                controller, _onSearchValueChange, widget.shouldFocusOnSearch),
            SizedBox(height: 20,),
            ListOfSymbols(_searchValue)
            //Content
          ],
        ),
      ),
    );
  }
}