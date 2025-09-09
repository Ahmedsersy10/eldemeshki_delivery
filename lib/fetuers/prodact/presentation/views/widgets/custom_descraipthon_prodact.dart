import 'package:flutter/material.dart';
import 'package:eldemeshki_delivery/core/util/styels.dart';

class CustomDescraipthonProdact extends StatelessWidget {
  const CustomDescraipthonProdact({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styels.padding24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const Text('Description', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900)),
          const SizedBox(height: 10),
          const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare leo non mollis id cursus. Eu euismod faucibus in leo malesuada',
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
          ),
          const SizedBox(height: 15),
          Divider(color: Colors.grey.shade200),
          const SizedBox(height: 15),
          const Text(
            'Customize your Order',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
          ),
          const SizedBox(height: 15),
         
        ],
      ),
    );
  }
}
