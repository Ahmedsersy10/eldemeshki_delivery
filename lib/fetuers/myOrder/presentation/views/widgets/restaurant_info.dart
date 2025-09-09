import 'package:eldemeshki_delivery/consts.dart';
import 'package:eldemeshki_delivery/core/util/assets_data.dart';
import 'package:flutter/material.dart';

class RestaurantInfo extends StatelessWidget {
  const RestaurantInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(AssetsData.smallTest, width: 140, height: 100, fit: BoxFit.cover),
          ),
          const SizedBox(width: 12),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('King Burgers', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(Icons.star, color: kMainColor, size: 16),
                    SizedBox(width: 4),
                    Text('4.9 (124 ratings)', style: TextStyle(fontSize: 13, color: Colors.grey)),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      'Burger · Western Food',
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(Icons.location_on, size: 14, color: kMainColor),
                    SizedBox(width: 4),
                    Text(
                      'No 03, 4th Lane, Newyork',
                      style: TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
