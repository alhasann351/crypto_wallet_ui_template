import 'package:crypto_wallet_ui_template/resources/components/custom_round_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/colors/app_colors.dart';
import '../../../../utils/app_utils.dart';
import '../../../../view_models/controllers/theme_controller.dart';

class EarnNowButton extends StatelessWidget {
  const EarnNowButton({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Get.put(ThemeController());

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        width: 200,
        child: CustomRoundButton(
          buttonName: 'earn_now'.tr,
          backgroundColor: themeController.isDarkMode.value
              ? AppColors.brightCornflowerBlueColor
              : AppColors.cryptoCardColor,
          textStyle: const TextStyle(
            color: AppColors.whiteColor,
            fontFamily: 'amaranth',
            fontWeight: FontWeight.bold,
          ),
          voidCallback: () {
            AppUtils()
                .showDialog('earn_start_title'.tr, 'earn_success_content'.tr);
          },
        ),
      ),
    );
  }
}
