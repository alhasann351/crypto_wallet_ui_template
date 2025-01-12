import 'package:crypto_wallet_ui_template/resources/routes/routes_name.dart';
import 'package:crypto_wallet_ui_template/views/onboarding_screen/onboarding_screen.dart';
import 'package:get/get.dart';

import '../../views/splash_screen/splash_screen.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RoutesName.splashScreen,
          page: () => const SplashScreen(),
        ),
        GetPage(
          name: RoutesName.onboardingScreen,
          page: () => OnboardingScreen(),
          transition: Transition.zoom,
          transitionDuration: const Duration(milliseconds: 600),
        ),
      ];
}
