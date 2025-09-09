import 'package:flutter/material.dart';
import 'package:eldemeshki_delivery/consts.dart';
import 'package:eldemeshki_delivery/core/util/styels.dart';

class HeadTitleListsHOmeView extends StatelessWidget {
  const HeadTitleListsHOmeView({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Styels.padding24,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: Styels.textStyle20),
          Text('View all', style: Styels.textStyle12.copyWith(color: kMainColor)),
        ],
      ),
    );
  }
}
