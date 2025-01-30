import 'package:crypto_wallet_ui_template/views/tools_screen/crypto_card_screen/widgets/basic_visa_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../views/tools_screen/crypto_card_screen/widgets/basic_master_card.dart';
import '../../views/tools_screen/crypto_card_screen/widgets/gold_master_card.dart';
import '../../views/tools_screen/crypto_card_screen/widgets/gold_visa_card.dart';

class CryptoCardSelectController extends GetxController {
  var screens = [
    const BasicVisaCard(),
    const BasicMasterCard(),
    const GoldVisaCard(),
    const GoldMasterCard(),
  ];
  var isScreenSelected = false.obs;
  var selectedScreens = Rxn<Widget>();

  void selectScreens(Widget widget) {
    selectedScreens.value = widget;
    isScreenSelected.value = true;
  }

  void clearSelection() {
    selectedScreens.value = null;
    isScreenSelected.value = false;
  }
}
