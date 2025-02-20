import 'package:crypto_wallet_ui_template/resources/components/back_button_design.dart';
import 'package:crypto_wallet_ui_template/views/tools_screen/buy_sell_screen/widgets/buy_currency.dart';
import 'package:crypto_wallet_ui_template/views/tools_screen/buy_sell_screen/widgets/buy_sell_history_icon.dart';
import 'package:crypto_wallet_ui_template/views/tools_screen/buy_sell_screen/widgets/buy_sell_toggle_button.dart';
import 'package:crypto_wallet_ui_template/views/tools_screen/buy_sell_screen/widgets/payout_account_icon.dart';
import 'package:crypto_wallet_ui_template/views/tools_screen/buy_sell_screen/widgets/sell_currency.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../view_models/controllers/buy_sell_toggle_button_controller.dart';

class BuySellScreen extends StatefulWidget {
  const BuySellScreen({super.key});

  @override
  State<BuySellScreen> createState() => _BuySellScreenState();
}

class _BuySellScreenState extends State<BuySellScreen> {
  @override
  Widget build(BuildContext context) {
    final buySellToggleButtonController =
        Get.put(BuySellToggleButtonController());

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackButtonDesign(),
                  BuySellToggleButton(),
                  Row(
                    spacing: 10,
                    children: [
                      PayoutAccountIcon(),
                      BuySellHistoryIcon(),
                    ],
                  ),
                ],
              ),
              Obx(() => buySellToggleButtonController.currentSwitch.value
                  ? const BuyCurrency()
                  : const SellCurrency()),
            ],
          ),
        ),
      ),
    );
  }
}
