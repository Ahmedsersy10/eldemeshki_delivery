import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:eldemeshki_delivery/core/util/styels.dart';

class CustomLoginOther extends StatelessWidget {
  const CustomLoginOther({super.key, required this.title, this.onPressed, required this.color});
  final String title;
  final Color color;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        minimumSize: const Size(307, 56),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
      ),
      child: Row(
        spacing: 12,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            title == 'Login with Facebook'
                ? FontAwesomeIcons.facebookF
                : FontAwesomeIcons.googlePlusG,
            color: Colors.white,
          ),
          Text(title, style: Styels.textStyle16.copyWith(color: Colors.white)),
        ],
      ),
    );
  }
}
