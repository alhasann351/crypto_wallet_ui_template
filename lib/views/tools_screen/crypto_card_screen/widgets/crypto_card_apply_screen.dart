import 'package:auto_size_text/auto_size_text.dart';
import 'package:crypto_wallet_ui_template/view_models/controllers/crypto_card_select_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../responsive_widget.dart';

class CryptoCardApplyScreen extends StatelessWidget {
  const CryptoCardApplyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cryptoCardSelectController = Get.put(CryptoCardSelectController());

    return Obx(
      () {
        if (!cryptoCardSelectController.isScreenSelected.value) {
          final isTablet = ResponsiveWidget.isTablet(context);
          final isDesktop = ResponsiveWidget.isDesktop(context);
          final fontSize = MediaQuery.of(context).size.width * 0.025;

          return Column(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/enjoy_tools_benefits.webp',
                height: isTablet
                    ? 200
                    : isDesktop
                        ? 220
                        : 0,
                width: isTablet
                    ? 200
                    : isDesktop
                        ? 220
                        : 0,
              ),
              AutoSizeText(
                'enjoy_tools_benefits'.tr,
                textAlign: TextAlign.center,
                minFontSize: 16,
                maxFontSize: 20,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'amaranth',
                ),
              ),
            ],
          );
        }

        final selectedScreens =
            cryptoCardSelectController.selectedScreens.value!;
        return selectedScreens;
      },
    );
  }
}
