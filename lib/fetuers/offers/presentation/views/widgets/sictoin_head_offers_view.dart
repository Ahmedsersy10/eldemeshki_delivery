import 'package:eldemeshki_delivery/core/util/styels.dart';
import 'package:eldemeshki_delivery/fetuers/offers/presentation/views/widgets/head_top_offers_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SictoinHeadOffersView extends StatelessWidget {
  const SictoinHeadOffersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styels.padding16,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeadTopOffersView(),
          IconButton(onPressed: () {}, icon: const Icon(FontAwesomeIcons.cartShopping)),
        ],
      ),
    );
  }
}
