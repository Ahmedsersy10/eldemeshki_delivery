import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:eldemeshki_delivery/core/util/styels.dart';

class TextFieldSearch extends StatelessWidget {
  const TextFieldSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styels.padding24,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: const Icon(FontAwesomeIcons.searchengin),
          fillColor: const Color(0xFFf2f2f2),
          filled: true,
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
          hintText: 'Search food',
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: Styels.borderRadius16,
      borderSide: const BorderSide(color: Color(0xFFf2f2f2), width: 1),
    );
  }
}
