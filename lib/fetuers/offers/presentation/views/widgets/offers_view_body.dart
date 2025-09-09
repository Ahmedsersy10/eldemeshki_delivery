import 'package:eldemeshki_delivery/fetuers/home/presentation/views/widgets/app_bar_home_view.dart';
import 'package:eldemeshki_delivery/fetuers/offers/presentation/views/widgets/head_top_offers_view.dart';
import 'package:eldemeshki_delivery/fetuers/offers/presentation/views/widgets/list_view_offers_products.dart';
import 'package:flutter/material.dart';

class OffersViewBody extends StatelessWidget {
  const OffersViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 40),
        CustomAppBar(title: 'Latest Offers'),
        HeadTopOffersView(),
        ListViewOffersProducts(),
      ],
    );
  }
}
