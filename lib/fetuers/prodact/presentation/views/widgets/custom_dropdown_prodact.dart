import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:eldemeshki_delivery/core/util/styels.dart';

// ignore: must_be_immutable
class CustomDropdownItem extends StatelessWidget {
  CustomDropdownItem({super.key, required this.egyptGovernorates, required this.hintText});
  final List<String> egyptGovernorates;
  String? selectedGovernorate;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 0),
      child: DropdownButtonFormField<String>(
        dropdownColor: Colors.white,
        icon: const Icon(
          FontAwesomeIcons.chevronDown, // أيقونة مختلفة
          color: Colors.grey, // اللون
          size: 16, // الحجم
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: Styels.textStyle16,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Colors.grey.shade300),
          ),
        ),
        value: selectedGovernorate,
        items:
            egyptGovernorates.map((String governorate) {
              return DropdownMenuItem<String>(value: governorate, child: Text(governorate));
            }).toList(),
        onChanged: (String? newValue) {
          selectedGovernorate = newValue;
          // استدعِ setState لو داخل StatefulWidget
        },
      ),
    );
  }
}
