import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:eldemeshki_delivery/core/util/styels.dart';
import 'package:eldemeshki_delivery/core/widgets/custom_dont_account.dart';
import 'package:eldemeshki_delivery/core/widgets/custom_elevated_button.dart';
import 'package:eldemeshki_delivery/core/widgets/custom_text_form_field.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 50),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Sign Up', style: Styels.textStyle32),
            const Text('Add your details to sign up', style: Styels.textStyle18),
            const SizedBox(height: 35),
            CustomTextFormField(hintText: 'Name'),
            const SizedBox(height: 20),
            CustomTextFormField(hintText: 'Email'),
            const SizedBox(height: 20),
            CustomTextFormField(hintText: 'Mobile No'),
            const SizedBox(height: 20),
            CustomTextFormField(hintText: 'Address'),
            const SizedBox(height: 20),
            CustomTextFormField(hintText: 'Password', obscureText: true),
            const SizedBox(height: 20),
            CustomTextFormField(hintText: 'Confirm Password', obscureText: true),
            const SizedBox(height: 20),
            CustomElevatedButton(
              title: 'Sign Up',
              onPressed: () {
                GoRouter.of(context).pop();
              },
            ),
            const SizedBox(height: 20),
            CustomDontAccount(
              title: 'Login',
              text: 'Already have an Account?',
              onTap: () {
                GoRouter.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
