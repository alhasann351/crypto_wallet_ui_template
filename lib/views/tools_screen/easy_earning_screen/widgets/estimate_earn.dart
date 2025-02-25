import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/colors/app_colors.dart';
import '../../../../view_models/controllers/theme_controller.dart';

class EstimateEarn extends StatelessWidget {
  const EstimateEarn({super.key});

  @override
  Widget build(BuildContext context) {
    final fontSize = MediaQuery.of(context).size.width * 0.025;
    final themeController = Get.put(ThemeController());

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            'estimate_earn'.tr,
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
          AutoSizeText(
            '0 USDT',
            minFontSize: 16,
            maxFontSize: 18,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              fontFamily: 'amaranth',
              color: AppColors.textGreenColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AutoSizeText(
                      'Daily real-time reward',
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
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AutoSizeText(
                      'Duration',
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
                    AutoSizeText(
                      'Flexible',
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
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AutoSizeText(
                      'Subscription',
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
                    AutoSizeText(
                      '2025/03/29 00:27',
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
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AutoSizeText(
                      'Interest accrual time',
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
                    AutoSizeText(
                      '2025/03/29 01:27',
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
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AutoSizeText(
                      'Interest payment time',
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
                    AutoSizeText(
                      '2025/04/29 01:27',
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
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
