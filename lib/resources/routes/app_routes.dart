import 'package:crypto_wallet_ui_template/resources/routes/routes_name.dart';
import 'package:crypto_wallet_ui_template/views/onboarding_screen/onboarding_screen.dart';
import 'package:crypto_wallet_ui_template/views/tools_screen/buy_sell_screen/widgets/buy_sell_history_screen.dart';
import 'package:crypto_wallet_ui_template/views/tools_screen/buy_sell_screen/widgets/payout_account_screen.dart';
import 'package:crypto_wallet_ui_template/views/tools_screen/crypto_card_screen/widgets/all_crypto_card_apply_screen.dart';
import 'package:crypto_wallet_ui_template/views/tools_screen/easy_earning_screen/widgets/easy_earning_history_screen.dart';
import 'package:crypto_wallet_ui_template/views/tools_screen/widgets/all_tools_screen.dart';
import 'package:get/get.dart';

import '../../views/main_screens_show/main_screens_show.dart';
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
          name: RoutesName.mainScreensShow,
          page: () => const MainScreensShow(),
          transition: Transition.zoom,
          transitionDuration: const Duration(milliseconds: 800),
        ),
        GetPage(
          name: RoutesName.allToolsScreen,
          page: () => const AllToolsScreen(),
          transition: Transition.zoom,
          transitionDuration: const Duration(milliseconds: 800),
        ),
        GetPage(
          name: RoutesName.allCryptoCardApplyScreen,
          page: () => const AllCryptoCardApplyScreen(),
          transition: Transition.zoom,
          transitionDuration: const Duration(milliseconds: 800),
        ),
        GetPage(
          name: RoutesName.payoutAccountScreen,
          page: () => const PayoutAccountScreen(),
          transition: Transition.zoom,
          transitionDuration: const Duration(milliseconds: 800),
        ),
        GetPage(
          name: RoutesName.buySellHistoryScreen,
          page: () => const BuySellHistoryScreen(),
          transition: Transition.zoom,
          transitionDuration: const Duration(milliseconds: 800),
        ),
        GetPage(
          name: RoutesName.easyEarningHistoryScreen,
          page: () => const EasyEarningHistoryScreen(),
          transition: Transition.zoom,
          transitionDuration: const Duration(milliseconds: 800),
        ),
      ];
}
