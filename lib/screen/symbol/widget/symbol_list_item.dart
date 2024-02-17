import 'package:eco360/screen/symbol/symbol_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:eco360/model/symbol.dart';

class SymbolListItem extends StatelessWidget {
  const SymbolListItem(this.symbol, {super.key});

  final Symbol symbol;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: SizedBox(
        width: 100,
        height: 100,
        child: Image(
          image: AssetImage(symbol.assetPath),
        ),
      ),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => SymbolDetailsScreen(symbol)));
      },
    );
  }
}
