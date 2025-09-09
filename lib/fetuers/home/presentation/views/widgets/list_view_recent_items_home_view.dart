import 'package:flutter/material.dart';
import 'package:eldemeshki_delivery/core/util/assets_data.dart';
import 'package:eldemeshki_delivery/core/util/styels.dart';

class ListViewRecentItemsHomeView extends StatelessWidget {
  const ListViewRecentItemsHomeView({super.key});

  @override
  Widget build(BuildContext context) {

    return SizedBox(

      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            width: 100,
            height: 120,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(borderRadius: Styels.borderRadius16, color: Colors.white),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage(AssetsData.smallTest),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: Styels.borderRadius16,
                    color: const Color(0xFFf2f2f2),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    spacing: 5,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mulberry Pizza by Josh', style: Styels.textStyle14),
                      Text('Café Western Food', style: Styels.textStyle12),
                      Row(
                        children: [
                          Icon(Icons.star_rate_rounded, color: Colors.deepOrange, size: 16),
                          Text('4.9', style: Styels.textStyle12),
                          Text('(124 Ratings)', style: Styels.textStyle12),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: 5,
      ),
    );
  }
}
