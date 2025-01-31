import 'package:crypto_wallet_ui_template/resources/components/back_button_design.dart';
import 'package:crypto_wallet_ui_template/resources/components/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../responsive_widget.dart';

class BasicVisaCard extends StatelessWidget {
  const BasicVisaCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveWidget.isMobile(context);

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CustomAppbar(
              backButton:
                  isMobile ? const BackButtonDesign() : const SizedBox(),
              title: 'crypto_card_title_1'.tr,
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
