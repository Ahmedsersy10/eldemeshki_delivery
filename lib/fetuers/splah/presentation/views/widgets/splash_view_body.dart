import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:eldemeshki_delivery/core/util/app_prefs.dart';
import 'package:eldemeshki_delivery/core/util/app_router.dart';
import 'package:eldemeshki_delivery/core/util/assets_data.dart';
import 'package:eldemeshki_delivery/fetuers/splah/presentation/views/widgets/sliding_logo.dart';
import 'package:eldemeshki_delivery/fetuers/splah/presentation/views/widgets/sliding_text.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> textAnimation;
  late Animation<Offset> logoAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AssetsData.backgruendSplash),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SlidingLogo(slidingAnimation: logoAnimation),
            const SizedBox(height: 18),
            SlidingText(slidingAnimation: textAnimation),
          ],
        ),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(duration: const Duration(seconds: 2), vsync: this);

    textAnimation = Tween<Offset>(
      begin: const Offset(0, 4),
      end: const Offset(0, 0),
    ).animate(animationController);

    logoAnimation = Tween<Offset>(
      begin: const Offset(0, -4),
      end: const Offset(0, 0),
    ).animate(animationController);

    animationController.forward();
  }

  void navigateToHome() async {
    await Future.delayed(const Duration(seconds: 5));

    final prefs = await SharedPreferences.getInstance();
    final hasSeenOnboarding = prefs.getBool('onboarding_seen') ?? false;

    if (!mounted) return;

    if (hasSeenOnboarding) {
      GoRouter.of(context).go(AppRouter.kWelcomView);
    } else {
      GoRouter.of(context).go(AppRouter.kOnboardingView);
    }
  }
}
