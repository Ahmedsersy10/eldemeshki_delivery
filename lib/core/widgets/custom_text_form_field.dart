import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    super.key,
    required this.hintText,
    this.controller,
    this.obscureText = false, this.keyboardType,
  });
  final String hintText;
  final bool? obscureText;
  final TextInputType? keyboardType;
  TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText!,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This field is required';
        }
        return null;
      },
      keyboardType: keyboardType,
      controller: controller,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(18),
        fillColor: const Color(0xFFf2f2f2),
        filled: true,
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        focusedErrorBorder: buildOutlineInputBorder().copyWith(
          borderSide: const BorderSide(color: Colors.red, width: 1),
        ),
        errorBorder: buildOutlineInputBorder().copyWith(
          borderSide: const BorderSide(color: Colors.red, width: 1),
        ),
        hintText: hintText,
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(24),
      borderSide: const BorderSide(color: Color(0xff707070), width: 1),
    );
  }
}
