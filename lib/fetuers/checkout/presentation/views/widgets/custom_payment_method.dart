import 'package:eldemeshki_delivery/consts.dart';
import 'package:eldemeshki_delivery/core/util/styels.dart';
import 'package:flutter/material.dart';

class CustomPaymentMethod extends StatelessWidget {
  const CustomPaymentMethod({super.key, required this.cardNumber, required this.image});
  final String cardNumber, image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Styels.padding16,
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: const Color.fromARGB(255, 241, 241, 241),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(image, width: 50, height: 50),
          const SizedBox(width: 10),
          Text(cardNumber, style: Styels.textStyle16.copyWith(color: kSecondaryFontColor)),
          const Spacer(),
          Checkbox(value: false, onChanged: (value) {}, activeColor: kMainColor),
        ],
      ),
    );
  }
}
