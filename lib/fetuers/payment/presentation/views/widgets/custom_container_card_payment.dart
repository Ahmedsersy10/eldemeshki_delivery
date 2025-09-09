import 'package:eldemeshki_delivery/consts.dart';
import 'package:eldemeshki_delivery/core/util/styels.dart';
import 'package:eldemeshki_delivery/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class CustomContainerCardPayment extends StatelessWidget {
  const CustomContainerCardPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Styels.padding24,
      width: double.infinity,
      height: 200,
      decoration: const BoxDecoration(
        color: Color(0xFFF1F1F1),
        boxShadow: [BoxShadow(color: Color(0xCED3D3D3), offset: Offset(0, 10), blurRadius: 20)],
      ),
      child: Column(
        spacing: 5,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Cash/Card on delivery', style: Styels.textStyle16),
          const Divider(color: Color(0x62B6B7B7)),
          Row(
            spacing: 5,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Image(image: AssetImage('assets/images/visa.png')),
              const Text('**** **** **** 2187', style: Styels.textStyle14),
              CustomElevatedButton(
                title: 'Delete Card',
                style: Styels.textStyle14.copyWith(color: kMainColor),
                width: 30,
                height: 30,
                onPressed: () {},
              ),
            ],
          ),
          const Divider(color: Color(0x62B6B7B7)),
          const Text('Other Methods', style: Styels.textStyle16),
        ],
      ),
    );
  }
}
