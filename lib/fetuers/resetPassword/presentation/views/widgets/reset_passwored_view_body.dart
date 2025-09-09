import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:eldemeshki_delivery/core/util/app_router.dart';
import 'package:eldemeshki_delivery/core/util/styels.dart';
import 'package:eldemeshki_delivery/core/widgets/custom_elevated_button.dart';
import 'package:eldemeshki_delivery/core/widgets/custom_text_form_field.dart';

class ResetPassworedViewBody extends StatelessWidget {
  const ResetPassworedViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('Reset Password', style: Styels.textStyle32),
          const SizedBox(height: 10),
          const Text(
            'Please enter your email to receive a\n link to  create a new password via email',
            textAlign: TextAlign.center,
            style: Styels.textStyle14,
          ),
          const SizedBox(height: 35),
          CustomTextFormField(hintText: 'Email'),
          const SizedBox(height: 30),
          CustomElevatedButton(
            title: 'Send',
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kOtpToMobileView);
            },
          ),
        ],
      ),
    );
  }
}
