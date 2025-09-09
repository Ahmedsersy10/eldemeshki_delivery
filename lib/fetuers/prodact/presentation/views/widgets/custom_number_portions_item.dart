import 'package:eldemeshki_delivery/consts.dart';
import 'package:eldemeshki_delivery/core/util/styels.dart';
import 'package:eldemeshki_delivery/fetuers/prodact/presentation/views/widgets/custom_add_to_cart_prodact.dart';
import 'package:flutter/material.dart';

class CustomNumberPortionsItem extends StatefulWidget {
  const CustomNumberPortionsItem({super.key});

  @override
  State<CustomNumberPortionsItem> createState() => _CustomNumberPortionsItemState();
}

class _CustomNumberPortionsItemState extends State<CustomNumberPortionsItem> {
  int portions = 0;
  final int pricePerPortion = 750;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: Styels.padding24,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Number of Portions',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
              ),
              Row(
                children: [
                  _roundedButton('-', () {
                    setState(() {
                      if (portions > 0) portions--;
                    });
                  }),
                  Container(
                    width: 50,
                    height: 40,
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      border: Border.all(color: kMainColor, width: 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        '$portions',
                        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  _roundedButton('+', () {
                    setState(() {
                      portions++;
                    });
                  }),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 30),
        CustomAddToCartProdact(portions: portions, pricePerPortion: pricePerPortion),
        const SizedBox(height: 100),
      ],
    );
  }

  Widget _roundedButton(String symbol, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(color: kMainColor, borderRadius: BorderRadius.circular(32)),
        child: Center(
          child: Text(
            symbol,
            style: const TextStyle(color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
