import 'package:eldemeshki_delivery/consts.dart';
import 'package:eldemeshki_delivery/core/util/styels.dart';
import 'package:flutter/material.dart';

class CustomContanerProfileView extends StatelessWidget {
  const CustomContanerProfileView({super.key, required this.hint, required this.title});
  final String hint, title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styels.padding24,
      child: Container(
        padding: const EdgeInsets.only(left: 30, top: 7),
        width: double.infinity,
        height: 65,
        decoration: BoxDecoration(
          color: const Color.fromARGB(134, 231, 231, 231),
          borderRadius: BorderRadius.circular(32),
        ),
        child: Column(
          spacing: 3,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(hint, style: Styels.textStyle14.copyWith(color: kSecondaryFontColor)),
            Text(title, style: Styels.textStyle18),
          ],
        ),
      ),
    );
  }
}
