import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../views/tools_screen/buy_sell_screen/widgets/buy_sell_history_screen.dart';
import '../../views/tools_screen/buy_sell_screen/widgets/payout_account_screen.dart';

class PayoutAccountBuySellHistoryController extends GetxController {
  var selectedScreen = Rx<Widget>(Container(
    child: Column(
      spacing: 10,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/enjoy_tools_benefits.webp',
        ),
        AutoSizeText(
          'enjoy_tools_benefits'.tr,
          textAlign: TextAlign.center,
          minFontSize: 16,
          maxFontSize: 20,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'amaranth',
          ),
        ),
      ],
    ),
  ));

  void showPayoutScreen() {
    selectedScreen.value = const PayoutAccountScreen();
  }

  void showHistoryScreen() {
    selectedScreen.value = const BuySellHistoryScreen();
  }
}
