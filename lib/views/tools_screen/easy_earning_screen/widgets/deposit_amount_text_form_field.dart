import 'package:auto_size_text/auto_size_text.dart';
import 'package:crypto_wallet_ui_template/resources/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../view_models/controllers/theme_controller.dart';

class DepositAmountTextFormField extends StatelessWidget {
  const DepositAmountTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    final fontSize = MediaQuery.of(context).size.width * 0.025;
    final themeController = Get.put(ThemeController());

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            'deposit_amount'.tr,
            minFontSize: 16,
            maxFontSize: 18,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              fontFamily: 'amaranth',
              color: themeController.isDarkMode.value
                  ? AppColors.whiteColor
                  : AppColors.blackColor,
            ),
          ),
          TextFormField(
            cursorColor: AppColors.greyColor,
            keyboardType: TextInputType.number,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.blackColor,
            ),
            decoration: InputDecoration(
                suffixIcon: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Image.asset(
                    'assets/images/dollar.png',
                    height: 20,
                    width: 20,
                  ),
                ),
                filled: true,
                fillColor: AppColors.whiteColor,
                hintText: 'Min 1 USDT',
                hintStyle: const TextStyle(
                  color: AppColors.greyColor,
                  fontFamily: 'amaranth',
                  fontSize: 15,
                ),
                enabledBorder:
                    const OutlineInputBorder(borderSide: BorderSide.none),
                focusedBorder:
                    const OutlineInputBorder(borderSide: BorderSide.none)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AutoSizeText(
                'available'.tr,
                minFontSize: 14,
                maxFontSize: 16,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                  fontSize: fontSize,
                  fontFamily: 'amaranth',
                  color: themeController.isDarkMode.value
                      ? AppColors.whiteColor
                      : AppColors.blackColor,
                ),
              ),
              Row(
                children: [
                  AutoSizeText(
                    '0 USDT',
                    minFontSize: 14,
                    maxFontSize: 16,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: fontSize,
                      fontFamily: 'amaranth',
                      color: themeController.isDarkMode.value
                          ? AppColors.whiteColor
                          : AppColors.blackColor,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: AutoSizeText(
                      'MAX',
                      minFontSize: 14,
                      maxFontSize: 16,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: fontSize,
                        fontFamily: 'amaranth',
                        color: AppColors.textGreenColor,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
