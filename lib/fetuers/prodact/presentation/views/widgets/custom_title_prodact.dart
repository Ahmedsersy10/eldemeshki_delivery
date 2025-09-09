import 'package:flutter/material.dart';
import 'package:eldemeshki_delivery/core/util/styels.dart';

class CustomTitleProdact extends StatefulWidget {
  const CustomTitleProdact({super.key});

  @override
  State<CustomTitleProdact> createState() => _CustomTitleProdactState();
}

Icon icon = const Icon(Icons.favorite_outline);

class _CustomTitleProdactState extends State<CustomTitleProdact> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styels.padding24,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Tandoori Chicken Pizza',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900),
          ),
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 10)],
            ),
            child: Center(
              child: InkWell(
                onTap: () {
                  setState(() {
                    icon = const Icon(Icons.favorite, color: Colors.red);
                  });
                },
                child: icon,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
