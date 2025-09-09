import 'package:eldemeshki_delivery/consts.dart';
import 'package:eldemeshki_delivery/core/util/styels.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Padding(
          padding: Styels.padding24,
          child: Row(
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(FontAwesomeIcons.solidBell, size: 20, color: kMainColor),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Your orders has been picked up', style: Styels.textStyle20),
                  Text('New', style: Styels.textStyle16),
                ],
              ),
            ],
          ),
        ),
        Divider(color: Color(0x5FB6B7B7), height: 30),
      ],
    );
  }
}
