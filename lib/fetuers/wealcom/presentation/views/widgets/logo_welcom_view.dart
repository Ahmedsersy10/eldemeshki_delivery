import 'package:eldemeshki_delivery/consts.dart';
import 'package:flutter/material.dart';
import 'package:eldemeshki_delivery/core/util/assets_data.dart';
import 'package:eldemeshki_delivery/core/util/styels.dart';

class LogoWelcomView extends StatelessWidget {
  const LogoWelcomView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(0, 3.4),
      children: [
        Container(
          height: 406,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage(AssetsData.organeTopShape), fit: BoxFit.cover),
          ),
        ),
        Column(
          children: [
            Container(
              height: 140,
              width: 220,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage(AssetsData.logo)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Eldemeshki', style: Styels.textStyle32.copyWith(color: kMainColor)),
                const Text('Restaurant', style: Styels.textStyle32),
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              'Discover the best foods from over 1,000\n restaurants and fast delivery to your\n doorstep',
              textAlign: TextAlign.center,
              style: Styels.textStyle14,
            ),
          ],
        ),
      ],
    );
  }
}
