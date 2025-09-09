import 'package:eldemeshki_delivery/core/util/styels.dart';
import 'package:eldemeshki_delivery/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class HeadTopOffersView extends StatelessWidget {
  const HeadTopOffersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styels.padding24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10,
        children: [
          const Text('Find discounts, Offers special \nmeals and more!', style: Styels.textStyle14),
          CustomElevatedButton(title: 'Check Offers', width: 180, height: 38, onPressed: () {}),
        ],
      ),
    );
  }
}
