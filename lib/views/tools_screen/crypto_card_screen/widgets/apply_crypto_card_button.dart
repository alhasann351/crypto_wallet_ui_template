import 'package:auto_size_text/auto_size_text.dart';
import 'package:crypto_wallet_ui_template/resources/colors/app_colors.dart';
import 'package:crypto_wallet_ui_template/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/components/custom_round_button.dart';
import '../../../../view_models/controllers/theme_controller.dart';

class ApplyCryptoCardButton extends StatelessWidget {
  const ApplyCryptoCardButton({super.key});

  @override
  Widget build(BuildContext context) {
    final fontSize = MediaQuery.of(context).size.width * 0.025;
    final themeController = Get.put(ThemeController());

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        color: AppColors.whiteColor,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            spacing: 10,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: AutoSizeText(
                      'Account balance',
                      minFontSize: 14,
                      maxFontSize: 16,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: fontSize,
                        fontFamily: 'amaranth',
                        color: AppColors.blackColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.topRight,
                      child: AutoSizeText(
                        '0.00 USDT',
                        minFontSize: 14,
                        maxFontSize: 16,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: fontSize,
                          fontFamily: 'amaranth',
                          color: AppColors.blackColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 200,
                child: CustomRoundButton(
                  buttonName: 'apply_card'.tr,
                  backgroundColor: themeController.isDarkMode.value
                      ? AppColors.brightCornflowerBlueColor
                      : AppColors.cryptoCardColor,
                  textStyle: const TextStyle(
                    color: AppColors.whiteColor,
                    fontFamily: 'amaranth',
                    fontWeight: FontWeight.bold,
                  ),
                  voidCallback: () {
                    AppUtils().showDialog(
                        'active_success_title'.tr, 'active_success_content'.tr);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
