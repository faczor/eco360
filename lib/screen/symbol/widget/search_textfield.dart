import 'package:eco360/config.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField(
      this.controller, this.onChangeAction, this.shouldFocusOnSearch,
      {super.key});

  final TextEditingController controller;
  final Function onChangeAction;
  final bool shouldFocusOnSearch;

  @override
  Widget build(BuildContext context) {
    return TextField(

      autofocus: shouldFocusOnSearch,
      controller: controller,
      textInputAction: TextInputAction.search,
      onChanged: (value) {
        submitChanges(value);
      },

      cursorColor: AppConfig.appBarBackground,
      decoration: InputDecoration(
        filled: true,
        prefixIcon: Icon(Icons.search, color:  AppConfig.appBarBackground,),
        fillColor: AppConfig.background,
        focusedBorder: UnderlineInputBorder(
          borderSide:
              BorderSide(color: AppConfig.appBarBackground, width: 2.0),
        ),
      ),
    );
  }

  submitChanges(String value) {
    onChangeAction(value);
  }
}
