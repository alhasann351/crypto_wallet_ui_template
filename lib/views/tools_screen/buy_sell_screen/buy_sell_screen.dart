import 'package:crypto_wallet_ui_template/resources/components/back_button_design.dart';
import 'package:crypto_wallet_ui_template/views/tools_screen/buy_sell_screen/widgets/buy_sell_toggle_button.dart';
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
                children: [
                  BackButtonDesign(),
                  BuySellToggleButton(),
                ],
              ),
              Obx(
                () => buySellToggleButtonController.currentSwitch.value
                    ? Container(
                        width: double.infinity,
                        height: 300,
                        color: Colors.green.shade100,
                        child: const Center(
                          child: Text(
                            "Buy Screen",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    : Container(
                        width: double.infinity,
                        height: 300,
                        color: Colors.red.shade100,
                        child: const Center(
                          child: Text(
                            "Sell Screen",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
