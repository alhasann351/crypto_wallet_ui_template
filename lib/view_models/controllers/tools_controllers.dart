import 'package:crypto_wallet_ui_template/views/tools_screen/batch_payments_screen/batch_payments_screen.dart';
import 'package:crypto_wallet_ui_template/views/tools_screen/buy_sell_screen/buy_sell_screen.dart';
import 'package:crypto_wallet_ui_template/views/tools_screen/crypto_card_screen/crypto_card_screen.dart';
import 'package:crypto_wallet_ui_template/views/tools_screen/mobile_recharge_screen/mobile_recharge_screen.dart';
import 'package:crypto_wallet_ui_template/views/tools_screen/tip_jar_screen/tip_jar_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../views/tools_screen/airdrop_arena_screen/airdrop_arena_screen.dart';
import '../../views/tools_screen/crypto_giveaway_screen/crypto_giveaway_screen.dart';
import '../../views/tools_screen/easy_earning_screen/easy_earning_screen.dart';
import '../../views/tools_screen/gift_card_screen/gift_cards_screen.dart';
import '../../views/tools_screen/loans_screen/loans_screen.dart';
import '../../views/tools_screen/market_place_screen/market_place_screen.dart';
import '../../views/tools_screen/payment_button_screen/payment_button_screen.dart';
import '../../views/tools_screen/payment_request_screen/payment_request_screen.dart';

class ToolsController extends GetxController {
  var screens = [
    const BuySellScreen(),
    const CryptoCardScreen(),
    const EasyEarningScreen(),
    const GiftCardScreen(),
    const MarketPlaceScreen(),
    const LoansScreen(),
    const MobileRechargeScreen(),
    const BatchPaymentsScreen(),
    const TipJarScreen(),
    const PaymentRequestScreen(),
    const PaymentButtonScreen(),
    const AirdropArenaScreen(),
    const CryptoGiveawayScreen(),
  ];
  var selectedScreens = Rxn<Widget>();
  void selectScreens(Widget widget) {
    selectedScreens.value = widget;
  }
}
