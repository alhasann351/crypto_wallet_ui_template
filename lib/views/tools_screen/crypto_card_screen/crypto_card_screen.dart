import 'package:crypto_wallet_ui_template/resources/components/back_button_design.dart';
import 'package:crypto_wallet_ui_template/resources/components/custom_appbar.dart';
import 'package:crypto_wallet_ui_template/views/tools_screen/crypto_card_screen/widgets/crypto_card_details.dart';
import 'package:crypto_wallet_ui_template/views/tools_screen/crypto_card_screen/widgets/crypto_cards_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CryptoCardScreen extends StatelessWidget {
  const CryptoCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CustomAppbar(
                backButton: const BackButtonDesign(), title: 'crypto_card'.tr),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  const CryptoCardDetails(),
                  const CryptoCardsList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
