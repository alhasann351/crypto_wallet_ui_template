import 'package:crypto_wallet_ui_template/resources/components/back_button_design.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../view_models/controllers/buy_sell_toggle_button_controller.dart';
import 'buy_sell_toggle_button/buy_sell_toggle_button.dart';

class BuySellToolsScreen extends StatefulWidget {
  const BuySellToolsScreen({super.key});

  @override
  State<BuySellToolsScreen> createState() => _BuySellToolsScreenState();
}

class _BuySellToolsScreenState extends State<BuySellToolsScreen> {
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
