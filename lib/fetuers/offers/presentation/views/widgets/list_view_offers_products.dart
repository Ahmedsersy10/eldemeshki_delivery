import 'package:eldemeshki_delivery/core/util/assets_data.dart';
import 'package:eldemeshki_delivery/core/util/styels.dart';
import 'package:eldemeshki_delivery/fetuers/prodact/presentation/views/prodact_view.dart';
import 'package:flutter/material.dart';

class ListViewOffersProducts extends StatelessWidget {
  const ListViewOffersProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        itemCount: 4,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            width: double.infinity,
            height: 260,
            color: Colors.white,
            child: Column(
              spacing: 10,
              children: [
                Container(
                  height: 190,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(image: AssetImage(AssetsData.bigTest), fit: BoxFit.fill),
                    color: Color(0xFFf2f2f2),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (_) => const ProdactView()));
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Minute by tuk tuk', style: Styels.textStyle18),
                        Row(
                          children: [
                            Icon(Icons.star_rate_rounded, color: Colors.deepOrange, size: 16),
                            Text('4.9', style: Styels.textStyle12),
                            SizedBox(width: 10),
                            Text('(124 ratings) Café - estern Food', style: Styels.textStyle12),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
