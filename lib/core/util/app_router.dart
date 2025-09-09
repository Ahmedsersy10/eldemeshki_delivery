import 'package:eldemeshki_delivery/fetuers/checkout/presentation/views/checkout_view.dart';
import 'package:eldemeshki_delivery/fetuers/splah/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';
import 'package:eldemeshki_delivery/fetuers/newPassword/presentation/views/new_password_view.dart';
import 'package:eldemeshki_delivery/fetuers/otpMobile/presentation/views/otp_to_mobile_view.dart';
import 'package:eldemeshki_delivery/fetuers/signUp/presentation/views/signup_view.dart';
import 'package:eldemeshki_delivery/fetuers/home/presentation/views/home_view.dart';
import 'package:eldemeshki_delivery/fetuers/resetPassword/presentation/views/reset_password_view.dart';
import 'package:eldemeshki_delivery/fetuers/login/presentation/views/login_view.dart';
import 'package:eldemeshki_delivery/fetuers/wealcom/presentation/views/wealcom_view.dart';
import 'package:eldemeshki_delivery/fetuers/wealcom/presentation/views/widgets/onboarding_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AppRouter {
  static const kOnboardingView = '/onboarding';
  static const kWelcomView = '/welcomView';
  static const kLoginView = '/loginView';
  static const kSignUpView = '/signUpView';
  static const kResetPassView = '/resetPassView';
  static const kOtpToMobileView = '/otpMobileView';
  static const kNewPassWordView = '/newPassWordView';
  static const kHomeView = '/homeView';
  static const kCheckOutView = '/checkOutView';

  static GoRouter router() {
    return GoRouter(
      initialLocation: '/',
      redirect: (context, state) async {
        final prefs = await SharedPreferences.getInstance();
        final hasSeen = prefs.getBool('onboarding_seen') ?? false;

        if (state.fullPath == '/') {
          // في المرة الأولى نتحقق من حالة Onboarding
          return hasSeen ? AppRouter.kWelcomView : AppRouter.kOnboardingView;
        }

        return null; // لا تغيير
      },
      routes: <RouteBase>[
        GoRoute(path: '/', builder: (context, state) => const SplashView()),
        GoRoute(path: kOnboardingView, builder: (context, state) => const OnboardingView()),
        GoRoute(path: kWelcomView, builder: (context, state) => const WelcomView()),
        GoRoute(path: kLoginView, builder: (context, state) => const LoginView()),
        GoRoute(path: kSignUpView, builder: (context, state) => const SignUpView()),
        GoRoute(path: kResetPassView, builder: (context, state) => const ResetPasswordView()),
        GoRoute(path: kOtpToMobileView, builder: (context, state) => const OtpToMobileView()),
        GoRoute(path: kNewPassWordView, builder: (context, state) => const NewPasswordView()),
        GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
        GoRoute(path: kCheckOutView, builder: (context, state) => const CheckoutView()),
      ],
    );
  }
}
