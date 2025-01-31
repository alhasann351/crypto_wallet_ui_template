import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/components/back_button_design.dart';
import '../../../../resources/components/custom_appbar.dart';
import '../../../../responsive_widget.dart';

class BasicMasterCard extends StatelessWidget {
  const BasicMasterCard({super.key});

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
              title: 'crypto_card_title_2'.tr,
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
