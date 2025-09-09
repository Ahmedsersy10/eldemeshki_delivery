import 'package:eldemeshki_delivery/core/util/app_router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:eldemeshki_delivery/core/util/styels.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styels.padding24,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: Styels.textStyle24.copyWith(fontWeight: FontWeight.w900)),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kCheckOutView);
            },
            icon: const Icon(FontAwesomeIcons.cartShopping),
          ),
        ],
      ),
    );
  }
}
