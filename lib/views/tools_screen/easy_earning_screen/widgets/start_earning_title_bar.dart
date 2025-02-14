import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/colors/app_colors.dart';
import '../../../../resources/routes/routes_name.dart';
import '../../../../responsive_widget.dart';
import '../../../../utils/app_utils.dart';
import '../../../../view_models/controllers/easy_earning_history controller.dart';
import '../../../../view_models/controllers/theme_controller.dart';

class StartEarningTitleBar extends StatelessWidget {
  const StartEarningTitleBar({super.key});

  @override
  Widget build(BuildContext context) {
    final fontSize = MediaQuery.of(context).size.width * 0.025;
    final themeController = Get.put(ThemeController());
    final isMobile = ResponsiveWidget.isMobile(context);
    final isTablet = ResponsiveWidget.isTablet(context);
    final easyEarningHistoryController =
        Get.put(EasyEarningHistoryController());

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AutoSizeText(
          'start_earning'.tr,
          minFontSize: 18,
          maxFontSize: 20,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: TextStyle(
            fontSize: fontSize,
            fontFamily: 'amaranth',
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          spacing: 15,
          children: [
            GestureDetector(
              onTap: () {
                AppUtils().showDialog('faq'.tr, 'faq_content'.tr);
              },
              child: CircleAvatar(
                backgroundColor: themeController.isDarkMode.value
                    ? AppColors.brightCornflowerBlueColor
                    : AppColors.whiteColor,
                child: Icon(
                  Icons.help_outline_rounded,
                  color: themeController.isDarkMode.value
                      ? AppColors.whiteColor
                      : AppColors.blackColor,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                if (isMobile || isTablet) {
                  Get.toNamed(RoutesName.easyEarningHistoryScreen);
                } else {
                  easyEarningHistoryController.showEasyEarningHistoryScreen();
                }
              },
              child: CircleAvatar(
                backgroundColor: themeController.isDarkMode.value
                    ? AppColors.brightCornflowerBlueColor
                    : AppColors.whiteColor,
                child: Icon(
                  Icons.history_outlined,
                  color: themeController.isDarkMode.value
                      ? AppColors.whiteColor
                      : AppColors.blackColor,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
