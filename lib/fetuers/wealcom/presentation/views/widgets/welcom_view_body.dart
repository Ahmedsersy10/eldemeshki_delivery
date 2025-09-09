import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:eldemeshki_delivery/core/util/app_router.dart';
import 'package:eldemeshki_delivery/core/util/assets_data.dart';
import 'package:eldemeshki_delivery/core/widgets/custom_elevated_button.dart';
import 'package:eldemeshki_delivery/fetuers/wealcom/presentation/views/widgets/logo_welcom_view.dart';

class WelcomViewBody extends StatelessWidget {
  const WelcomViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AssetsData.backgruendSplash),
                fit: BoxFit.contain,
              ),
            ),
          ),
          Column(
            children: [
              const LogoWelcomView(),
              const SizedBox(height: 180),
              CustomElevatedButton(
                title: 'Login',
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kLoginView);
                },
              ),
              const SizedBox(height: 20),
              CustomElevatedButton(
                title: 'Create an Account',
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kSignUpView);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
