import 'package:crypto_wallet_ui_template/views/tools_screen/buy_sell_screen/widgets/buy_sell_all_status_toggle_button.dart';
import 'package:crypto_wallet_ui_template/views/tools_screen/buy_sell_screen/widgets/buy_sell_list.dart';
import 'package:crypto_wallet_ui_template/views/tools_screen/buy_sell_screen/widgets/no_buy_sell.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/components/back_button_design.dart';
import '../../../../resources/components/custom_appbar.dart';
import '../../../../view_models/controllers/buy_sell_all_status_button_controller.dart';

class BuySellHistoryScreen extends StatelessWidget {
  const BuySellHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final buySellAllStatusButtonController =
        Get.put(BuySellAllStatusButtonController());

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppbar(
                backButton: const BackButtonDesign(),
                title: 'buy_sell_history'.tr),
            const SizedBox(
              width: 10,
            ),
            const BuySellAllStatusToggleButton(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: Obx(
                  () => buySellAllStatusButtonController.currentTab.value
                      ? const BuySellList()
                      : const NoBuySell(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
