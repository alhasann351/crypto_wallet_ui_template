import 'package:crypto_wallet_ui_template/views/tools_screen/easy_earning_screen/widgets/start_earning_title_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/components/back_button_design.dart';
import '../../../resources/components/custom_appbar.dart';

class EasyEarningScreen extends StatelessWidget {
  const EasyEarningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CustomAppbar(
                backButton: const BackButtonDesign(), title: 'easy_earning'.tr),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    const StartEarningTitleBar(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
