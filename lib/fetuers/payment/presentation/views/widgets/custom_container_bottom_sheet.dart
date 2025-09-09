import 'package:eldemeshki_delivery/consts.dart';
import 'package:eldemeshki_delivery/core/util/styels.dart';
import 'package:eldemeshki_delivery/core/widgets/custom_elevated_button.dart';
import 'package:eldemeshki_delivery/core/widgets/custom_text_form_field.dart';
import 'package:eldemeshki_delivery/fetuers/payment/presentation/views/widgets/section_expiry.dart';
import 'package:flutter/material.dart';

class CustomContainerBottomSheet extends StatefulWidget {
  const CustomContainerBottomSheet({super.key});

  @override
  State<CustomContainerBottomSheet> createState() => _CustomContainerBottomSheetState();
}

class _CustomContainerBottomSheetState extends State<CustomContainerBottomSheet> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 650,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),

        child: Padding(
          padding: Styels.padding24,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.close, size: 24),
                    color: kMainColor,
                  ),
                ],
              ),
              const Text('Add Credit/Debit Card', style: Styels.textStyle16),
              const SizedBox(height: 10),
              const Divider(color: Color(0x62B6B7B7)),
              const SizedBox(height: 15),
              CustomTextFormField(hintText: 'Card Number'),
              const SizedBox(height: 15),
              const SectionExpiry(),
              const SizedBox(height: 15),
              CustomTextFormField(hintText: 'Card Number'),
              const SizedBox(height: 15),
              CustomTextFormField(hintText: 'Card Number'),
              const SizedBox(height: 15),
              CustomTextFormField(hintText: 'Card Number'),
              const SizedBox(height: 15),
              const Divider(color: Color(0x62B6B7B7)),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('You can remove this card at anytime ', style: Styels.textStyle14),
                  Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 15),
              CustomElevatedButton(title: 'Add Card', onPressed: () {}),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
