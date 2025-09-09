import 'package:eldemeshki_delivery/consts.dart';
import 'package:eldemeshki_delivery/core/util/styels.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InboxItem extends StatelessWidget {
  const InboxItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: Styels.padding24,
          child: Row(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(FontAwesomeIcons.circleDot, color: kMainColor, size: 16),
              Column(
                spacing: 10,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Text('MealMonkey Promotions', style: Styels.textStyle16),
                      const SizedBox(width: 70),
                      Text(
                        '6th July',
                        style: Styels.textStyle12.copyWith(color: const Color(0xFFB6B7B7)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 200,
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
                          style: Styels.textStyle14.copyWith(color: const Color(0xFFB6B7B7)),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                      const SizedBox(width: 60),
                      const Icon(FontAwesomeIcons.star, color: kMainColor, size: 20),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        const Divider(color: Color(0x5FB6B7B7), height: 30),
      ],
    );
  }
}
