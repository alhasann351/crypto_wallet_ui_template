import 'package:crypto_wallet_ui_template/resources/routes/routes_name.dart';
import 'package:crypto_wallet_ui_template/views/home_screen/home_screen.dart';
import 'package:crypto_wallet_ui_template/views/onboarding_screen/onboarding_screen.dart';
import 'package:get/get.dart';

import '../../views/splash_screen/splash_screen.dart';
import '../../views/tools_screen/buy_sell_screen/buy_sell_screen.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RoutesName.splashScreen,
          page: () => const SplashScreen(),
        ),
        GetPage(
          name: RoutesName.onboardingScreen,
          page: () => const OnboardingScreen(),
          transition: Transition.zoom,
          transitionDuration: const Duration(milliseconds: 800),
        ),
        GetPage(
          name: RoutesName.homeScreen,
          page: () => const HomeScreen(),
          transition: Transition.zoom,
          transitionDuration: const Duration(milliseconds: 800),
        ),
        GetPage(
          name: RoutesName.buySellScreen,
          page: () => const BuySellScreen(),
          transition: Transition.zoom,
          transitionDuration: const Duration(milliseconds: 800),
        ),
      ];
}
