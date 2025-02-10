import 'package:auto_size_text/auto_size_text.dart';
import 'package:crypto_wallet_ui_template/resources/colors/app_colors.dart';
import 'package:crypto_wallet_ui_template/resources/components/back_button_design.dart';
import 'package:crypto_wallet_ui_template/resources/components/custom_appbar.dart';
import 'package:crypto_wallet_ui_template/views/tools_screen/buy_sell_screen/widgets/accounts_list.dart';
import 'package:crypto_wallet_ui_template/views/tools_screen/buy_sell_screen/widgets/add_payout_dialog.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../responsive_widget.dart';
import '../../../../view_models/controllers/theme_controller.dart';

class PayoutAccountScreen extends StatelessWidget {
  const PayoutAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveWidget.isMobile(context);
    final isTablet = ResponsiveWidget.isTablet(context);
    final fontSize = MediaQuery.of(context).size.width * 0.025;
    final themeController = Get.put(ThemeController());

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppbar(
                backButton: isMobile
                    ? const BackButtonDesign()
                    : isTablet
                        ? const BackButtonDesign()
                        : const SizedBox(),
                title: 'payout_account'.tr),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.topLeft,
                child: AutoSizeText(
                  'all_accounts'.tr,
                  minFontSize: 16,
                  maxFontSize: 20,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: fontSize,
                    fontFamily: 'amaranth',
                  ),
                ),
              ),
            ),
            const Expanded(child: AccountsList()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.dialog(const AddPayoutDialog());
        },
        shape: const CircleBorder(),
        backgroundColor: themeController.isDarkMode.value
            ? AppColors.brightCornflowerBlueColor
            : AppColors.whiteColor,
        child: Icon(
          Icons.add_outlined,
          color: themeController.isDarkMode.value
              ? AppColors.whiteColor
              : AppColors.blackColor,
        ),
      ),
    );
  }
}
