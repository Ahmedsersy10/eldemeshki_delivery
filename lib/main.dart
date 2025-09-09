import 'package:eldemeshki_delivery/consts.dart';
import 'package:eldemeshki_delivery/core/widgets/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:eldemeshki_delivery/core/util/app_router.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final seenOnboarding = await OnboardingHelper.hasSeenOnboarding();
  await Supabase.initialize(url: kUrl, anonKey: kAnonKey);
  runApp(const EldemeshkiDelivery());
}

class EldemeshkiDelivery extends StatelessWidget {
  const EldemeshkiDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router(),
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
    );
  }
}
