import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:eldemeshki_delivery/core/util/styels.dart';

// ignore: must_be_immutable
class CustomDropdownButtonFormField extends StatelessWidget {
  CustomDropdownButtonFormField({super.key});
  final List<String> egyptGovernorates = [
    'Cairo',
    'Giza',
    'Alexandria',
    'Aswan',
    'Asyut',
    'Beheira',
    'Beni Suef',
    'Dakahlia',
    'Damietta',
    'Faiyum',
    'Gharbia',
    'Ismailia',
    'Kafr El Sheikh',
    'Luxor',
    'Matrouh',
    'Minya',
    'Monufia',
    'New Valley',
    'North Sinai',
    'Port Said',
    'Qalyubia',
    'Qena',
    'Red Sea',
    'Sharqia',
    'Sohag',
    'South Sinai',
    'Suez',
  ];
  String? selectedGovernorate;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 150),
      child: DropdownButtonFormField<String>(
        dropdownColor: Colors.white,

        icon: const Icon(
          FontAwesomeIcons.chevronDown, // أيقونة مختلفة
          color: Colors.deepOrange, // اللون
          size: 16, // الحجم
        ),
        decoration: const InputDecoration(
          hintText: 'Current Location',
          suffixIconColor: Colors.orange,
          hintStyle: Styels.textStyle16,
          border: InputBorder.none,
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
