import 'package:flutter/material.dart';
import 'package:eldemeshki_delivery/consts.dart';
import 'package:eldemeshki_delivery/core/util/styels.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({super.key, required this.slidingAnimation});

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: slidingAnimation,
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: Column(
            spacing: 9,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Eldemeshki', style: Styels.textStyle34.copyWith(color: kMainColor)),
                  const Text('Restaurant', style: Styels.textStyle34),
                ],
              ),
              const Text('Food Delivery', style: Styels.textStyle10),
            ],
          ),
        );
      },
    );
  }
}
