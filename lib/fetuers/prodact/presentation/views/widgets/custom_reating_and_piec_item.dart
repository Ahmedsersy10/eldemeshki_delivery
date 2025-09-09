import 'package:flutter/material.dart';
import 'package:eldemeshki_delivery/consts.dart';
import 'package:eldemeshki_delivery/core/util/styels.dart';

class CustomReatingAndPiecItem extends StatefulWidget {
  const CustomReatingAndPiecItem({super.key});

  @override
  State<CustomReatingAndPiecItem> createState() => _CustomReatingAndPiecItemState();
}
class _CustomReatingAndPiecItemState extends State<CustomReatingAndPiecItem> {
  int selectedStars = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styels.padding24,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: List.generate(5, (index) {
                  return GestureDetector(
                    child: Icon(
                      index < selectedStars ? Icons.star : Icons.star_border,
                      color: kMainColor,
                      size: 24,
                    ),
                    onTap: () {
                      setState(() {
                        selectedStars = index + 1;
                      });
                    },
                  );
                }),
              ),
              const SizedBox(height: 2),
              Text(
                '$selectedStars Star Ratings',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: kMainColor,
                ),
              ),
            ],
          ),
          const Text(
            'Rs. 750',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: kBlackColor),
          ),
        ],
      ),
    );
  }
}
