import 'package:eldemeshki_delivery/core/util/app_router.dart';
import 'package:eldemeshki_delivery/core/util/styels.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBarPop extends StatelessWidget {
  const CustomAppBarPop({
    super.key,
    this.colorIcon = Colors.black,
    this.colorPop = Colors.black,
    this.title = 'Food',
  });
  final Color colorIcon, colorPop;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.chevron_left_outlined, size: 40, color: colorPop),
          ),
          Text(title, style: Styels.textStyle24.copyWith(fontWeight: FontWeight.w900)),
          const Spacer(),
          IconButton(onPressed: () {
            GoRouter.of(context).push(AppRouter.kCheckOutView);
          }, icon: Icon(FontAwesomeIcons.cartShopping, color: colorIcon)),
        ],
      ),
    );
  }
}
