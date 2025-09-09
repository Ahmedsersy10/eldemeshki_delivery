import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:eldemeshki_delivery/core/util/app_router.dart';
import 'package:eldemeshki_delivery/core/util/styels.dart';
import 'package:eldemeshki_delivery/core/widgets/custom_elevated_button.dart';
import 'package:eldemeshki_delivery/core/widgets/custom_text_form_field.dart';

class NewPasswordViewBody extends StatelessWidget {
  const NewPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('New Password', style: Styels.textStyle32),
          const SizedBox(height: 10),
          const Text(
            'Please enter your email to receive a\nlink to  create a new password via email',
            textAlign: TextAlign.center,
            style: Styels.textStyle14,
          ),
          const SizedBox(height: 35),
          CustomTextFormField(hintText: 'New Password'),
          const SizedBox(height: 20),
          CustomTextFormField(hintText: 'Confirm Password'),
          const SizedBox(height: 20),
          CustomElevatedButton(
            title: 'Next',
            onPressed: () {
              GoRouter.of(context).go(AppRouter.kLoginView);
            },
          ),
        ],
      ),
    );
  }
}
