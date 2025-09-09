import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:eldemeshki_delivery/core/util/app_router.dart';
import 'package:eldemeshki_delivery/core/util/styels.dart';
import 'package:eldemeshki_delivery/core/widgets/custom_dont_account.dart';
import 'package:eldemeshki_delivery/core/widgets/custom_elevated_button.dart';
import 'package:eldemeshki_delivery/fetuers/otpMobile/presentation/views/widgets/otp_input.dart';

class OtpToMobileViewBody extends StatelessWidget {
  const OtpToMobileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'We have sent an\nOTP to your Email',
            style: Styels.textStyle28,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          const Text(
            'Please check your Email,\n continue to reset your password',
            textAlign: TextAlign.center,
            style: Styels.textStyle14,
          ),
          const SizedBox(height: 35),
          const OtpInput(),
          const SizedBox(height: 30),
          CustomElevatedButton(
            title: 'Next',
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kNewPassWordView);
            },
          ),
          const SizedBox(height: 30),
          CustomDontAccount(title: 'Click Here', text: 'Didn\'t Receive? ', onTap: () {}),
        ],
      ),
    );
  }
}
