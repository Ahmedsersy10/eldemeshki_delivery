import 'package:flutter/material.dart';
import 'package:eldemeshki_delivery/consts.dart';
import 'package:eldemeshki_delivery/core/util/styels.dart';

class CustomDontAccount extends StatelessWidget {
  const CustomDontAccount({
    super.key,
    required this.text,
    required this.onTap,
    required this.title,
  });
  final String text, title;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: Styels.textStyle14),
        GestureDetector(
          onTap: onTap,
          child: Text(
            title,
            style: const TextStyle(color: kMainColor, fontWeight: FontWeight.w900),
          ),
        ),
      ],
    );
  }
}
