import 'package:crypto_wallet_ui_template/views/tools_screen/crypto_card_screen/widgets/crypto_card_apply_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../views/tools_screen/buy_sell_screen/widgets/buy_sell_history_screen.dart';
import '../../views/tools_screen/buy_sell_screen/widgets/payout_account_screen.dart';

class PayoutAccountBuySellHistoryController extends GetxController {
  var selectedScreen = Rx<Widget>(const CryptoCardApplyScreen());

  void showPayoutScreen() {
    selectedScreen.value = const PayoutAccountScreen();
  }

  void showHistoryScreen() {
    selectedScreen.value = const BuySellHistoryScreen();
  }

  void resetToDefault() {
    selectedScreen.value = const CryptoCardApplyScreen();
  }
}
