import 'package:crypto_wallet_ui_template/resources/routes/routes_name.dart';
import 'package:crypto_wallet_ui_template/views/home_screen/home_screen.dart';
import 'package:crypto_wallet_ui_template/views/onboarding_screen/onboarding_screen.dart';
import 'package:crypto_wallet_ui_template/views/tools_screen/crypto_card_screen/widgets/show_all_crypto_card_apply_screen_mobile_tablet.dart';
import 'package:crypto_wallet_ui_template/views/tools_screen/show_all_tools_screen_mobile/show_all_tools_screen_mobile.dart';
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
          name: RoutesName.showAllToolsScreenMobile,
          page: () => const ShowAllToolsScreenMobile(),
          transition: Transition.zoom,
          transitionDuration: const Duration(milliseconds: 800),
        ),
        GetPage(
          name: RoutesName.showAllCryptoCardApplyScreenMobileTablet,
          page: () => const ShowAllCryptoCardApplyScreenMobileTablet(),
          transition: Transition.zoom,
          transitionDuration: const Duration(milliseconds: 800),
        ),
      ];
}
