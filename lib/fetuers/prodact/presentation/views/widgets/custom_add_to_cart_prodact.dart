import 'package:flutter/material.dart';
import 'package:eldemeshki_delivery/consts.dart';

class CustomAddToCartProdact extends StatelessWidget {
  const CustomAddToCartProdact({super.key, required this.portions, required this.pricePerPortion});

  final int portions;
  final int pricePerPortion;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      clipBehavior: Clip.none,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: 90,
            height: 200,
            decoration: const BoxDecoration(
              color: kMainColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Container(
              width: 290,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
                boxShadow: [BoxShadow(color: Colors.grey.shade400, blurRadius: 10)],
              ),
              child: Column(
                spacing: 5,
                children: [
                  const Text('Total Price', style: TextStyle(fontSize: 16, color: Colors.black54)),
                  Text(
                    'Rs. ${portions * pricePerPortion}',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kMainColor,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 28),
                    ),
                    icon: const Icon(Icons.shopping_cart, color: Colors.white),
                    label: const Text(
                      'Add to Cart',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          right: 20,
          top: 70,
          child: Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 10)],
            ),
            padding: const EdgeInsets.all(8),
            child: const Icon(Icons.shopping_cart, color: kMainColor, size: 28),
          ),
        ),
      ],
    );
  }
}
