import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:eldemeshki_delivery/core/util/app_router.dart';
import 'package:eldemeshki_delivery/core/util/styels.dart';
import 'package:eldemeshki_delivery/core/widgets/custom_dont_account.dart';
import 'package:eldemeshki_delivery/core/widgets/custom_elevated_button.dart';
import 'package:eldemeshki_delivery/core/widgets/custom_login_other.dart';
import 'package:eldemeshki_delivery/core/widgets/custom_text_form_field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 50),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Login', style: Styels.textStyle32),
            const SizedBox(height: 10),
            const Text('Add your details to login', style: Styels.textStyle18),
            const SizedBox(height: 35),
            CustomTextFormField(hintText: 'Your Email'),
            const SizedBox(height: 20),
            CustomTextFormField(obscureText: true, hintText: 'Password'),
            const SizedBox(height: 20),

            CustomElevatedButton(
              title: 'Login',
              onPressed: () {
                GoRouter.of(context).go(AppRouter.kHomeView);
              },
            ),
            const SizedBox(height: 20),
            CustomDontAccount(
              title: 'Reset',
              text: 'Forgot your password? ',
              onTap: () {
                GoRouter.of(context).push(AppRouter.kResetPassView);
              },
            ),
            const SizedBox(height: 55),
            const Text('or Login With', style: Styels.textStyle14),
            const SizedBox(height: 20),
            CustomLoginOther(
              title: 'Login with Facebook',
              color: const Color(0xff367FC0),
              onPressed: () {},
            ),
            const SizedBox(height: 20),
            CustomLoginOther(
              title: 'Login with Google',
              color: const Color(0xffDD4B39),
              onPressed: () {},
            ),
            const SizedBox(height: 55),
            CustomDontAccount(
              title: 'Sign Up',
              text: 'Don\'t have an Account? ',
              onTap: () {
                GoRouter.of(context).push(AppRouter.kSignUpView);
              },
            ),
          ],
        ),
      ),
    );
  }
}
