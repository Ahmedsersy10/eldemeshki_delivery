import 'package:flutter/material.dart';
import 'package:eldemeshki_delivery/core/util/assets_data.dart';
import 'package:eldemeshki_delivery/core/util/styels.dart';

class ListViewMostPopularHomeView extends StatelessWidget {
  const ListViewMostPopularHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    double height = 190;
    double width = 250;
    return SizedBox(
      height: height,
      width: double.infinity,
      child: ListView.builder(
        
        itemBuilder: (context, index) {
          return Container(
            width: width,
            height: height,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(borderRadius: Styels.borderRadius16, color: Colors.white),
            child: Column(
              spacing: 10,
              children: [
                Container(
                  height: 120,
                  width: width,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage(AssetsData.bigTest),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: Styels.borderRadius16,
                    color: const Color(0xFFf2f2f2),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Minute by tuk tuk', style: Styels.textStyle14),
                      Row(
                        children: [
                          Icon(Icons.star_rate_rounded, color: Colors.deepOrange, size: 16),
                          Text('4.9', style: Styels.textStyle12),
                          SizedBox(width: 20),
                          Text('(124 ratings) Café     Western Food', style: Styels.textStyle12),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: 10,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
