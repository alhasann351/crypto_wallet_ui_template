import 'package:crypto_wallet_ui_template/views/tools_screen/crypto_card_screen/widgets/crypto_card_apply_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../views/tools_screen/easy_earning_screen/widgets/easy_earning_history_screen.dart';

class EasyEarningHistoryController extends GetxController {
  var selectedScreen = Rx<Widget>(const CryptoCardApplyScreen());

  void showEasyEarningHistoryScreen() {
    selectedScreen.value = const EasyEarningHistoryScreen();
  }

  void resetToDefault() {
    selectedScreen.value = const CryptoCardApplyScreen();
  }
}
