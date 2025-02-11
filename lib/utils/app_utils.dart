import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../resources/colors/app_colors.dart';
import '../view_models/controllers/theme_controller.dart';

class AppUtils {
  final themeController = Get.find<ThemeController>();

  showDialog(String title, String content) {
    Get.defaultDialog(
      backgroundColor: AppColors.whiteColor,
      title: title,
      titleStyle: const TextStyle(
          fontFamily: 'amaranth',
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: AppColors.blackColor),
      content: Text(
        content,
        style: const TextStyle(
            fontFamily: 'amaranth', fontSize: 16, color: AppColors.greyColor),
      ),
      contentPadding: const EdgeInsets.all(20),
      confirm: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: themeController.isDarkMode.value
                ? AppColors.brightCornflowerBlueColor
                : AppColors.greenColor),
        onPressed: () {
          Get.back();
        },
        child: Text(
          'ok'.tr,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'amaranth',
              fontSize: 18,
              color: AppColors.whiteColor),
        ),
      ),
    );
  }
}
