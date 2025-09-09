import 'package:eldemeshki_delivery/consts.dart';
import 'package:eldemeshki_delivery/core/util/styels.dart';
import 'package:flutter/material.dart';

class CustomContanerMoreView extends StatelessWidget {
  const CustomContanerMoreView({
    super.key,
    required this.title,
    required this.icon,
    this.onPressed,
  });
  final String title;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styels.padding24,
      child: Container(
        padding: const EdgeInsets.only(left: 16),
        width: double.infinity,
        height: 100,
        decoration: BoxDecoration(
          color: const Color(0x85E7E7E7),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: const Color.fromARGB(255, 224, 224, 224),
              child: Icon(icon, color: kPrimaryFontColor),
            ),
            SizedBox(width: 130, child: Text(title, style: Styels.textStyle18)),
            const SizedBox(width: 30),
            CircleAvatar(
              radius: 18,
              backgroundColor: const Color.fromARGB(255, 224, 224, 224),
              child: IconButton(
                onPressed: onPressed,
                icon: const Icon(Icons.chevron_right_outlined, size: 20),
                color: kPrimaryFontColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
