import 'package:eldemeshki_delivery/consts.dart';
import 'package:flutter/material.dart';

class DeliveryInstructions extends StatelessWidget {
  const DeliveryInstructions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Delivery Instructions',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
          ),
          Text('+ Add Notes', style: TextStyle(fontSize: 15, color: kMainColor)),
        ],
      ),
    );
  }
}
