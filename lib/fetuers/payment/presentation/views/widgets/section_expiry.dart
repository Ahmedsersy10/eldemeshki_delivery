import 'package:eldemeshki_delivery/core/util/styels.dart';
import 'package:eldemeshki_delivery/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SectionExpiry extends StatelessWidget {
  const SectionExpiry({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Expiry', style: Styels.textStyle18),
        SizedBox(width: 120, height: 50, child: CustomTextFormField(hintText: '      YY')),
        SizedBox(width: 120, height: 50, child: CustomTextFormField(hintText: '      MM')),
      ],
    );
  }
}
