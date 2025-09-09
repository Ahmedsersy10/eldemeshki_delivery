import 'package:flutter/material.dart';
import 'package:eldemeshki_delivery/consts.dart';
import 'package:eldemeshki_delivery/core/util/styels.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.title,
    this.onPressed,
    this.width = 307,
    this.height = 56,
    this.style = Styels.textStyle20,
  });
  final String title;
  final void Function()? onPressed;
  final double width, height;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: title == 'Delete Card' ? const Color(0xFFF1F1F1) : kMainColor,
        minimumSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
          side: const BorderSide(color: kMainColor),
        ),
      ),
      child: Text(
        title,
        style:
            title == 'Delete Card'
                ? style.copyWith(color: kMainColor)
                : style.copyWith(color: Colors.white),
      ),
    );
  }
}
