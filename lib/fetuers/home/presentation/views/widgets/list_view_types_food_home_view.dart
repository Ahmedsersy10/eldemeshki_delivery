import 'package:flutter/material.dart';
import 'package:eldemeshki_delivery/core/util/assets_data.dart';
import 'package:eldemeshki_delivery/core/util/styels.dart';

class ListViewTypesFoodHomeView extends StatelessWidget {
  const ListViewTypesFoodHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            width: 100,
            height: 130,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(borderRadius: Styels.borderRadius16, color: Colors.white),
            child: Column(
              spacing: 10,
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
                const Center(child: Text('Sri Lankan', style: Styels.textStyle14)),
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
