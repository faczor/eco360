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

      cursorColor: Color.fromARGB(255, 252, 141, 75),
      decoration: const InputDecoration(
        filled: true,
        prefixIcon: Icon(Icons.search, color:  Color.fromARGB(255, 252, 141, 75),),
        fillColor: Color.fromARGB(255, 172, 211, 127),
        focusedBorder: UnderlineInputBorder(
          borderSide:
              BorderSide(color: Color.fromARGB(255, 252, 141, 75), width: 2.0),
        ),
      ),
    );
  }

  submitChanges(String value) {
    onChangeAction(value);
  }
}
