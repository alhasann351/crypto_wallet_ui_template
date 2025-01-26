import 'package:crypto_wallet_ui_template/resources/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../view_models/controllers/theme_controller.dart';

class BuySellHistoryIcon extends StatelessWidget {
  const BuySellHistoryIcon({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Get.put(ThemeController());

    return GestureDetector(
      onTap: () {},
      child: CircleAvatar(
        backgroundColor: themeController.isDarkMode.value
            ? AppColors.brightCornflowerBlueColor
            : AppColors.whiteColor,
        child: Icon(
          Icons.history,
          color: themeController.isDarkMode.value
              ? AppColors.whiteColor
              : AppColors.blackColor,
        ),
      ),
    );
  }
}
