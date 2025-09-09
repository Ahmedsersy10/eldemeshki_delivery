import 'package:eldemeshki_delivery/core/widgets/custom_app_bar_pop.dart';
import 'package:eldemeshki_delivery/fetuers/aboutUs/presentation/views/widgets/about_item.dart';
import 'package:flutter/material.dart';

class AboutusViewBody extends StatelessWidget {
  const AboutusViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      spacing: 20,
      children: [
        SizedBox(height: 20),
        CustomAppBarPop(title: 'About Us'),
        AboutItem(),
        AboutItem(),
        AboutItem(),
        AboutItem(),
      ],
    );
  }
}
