import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view_models/controllers/theme_controller.dart';
import '../colors/app_colors.dart';

class BackButtonDesign extends StatelessWidget {
  const BackButtonDesign({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Get.put(ThemeController());

    return GestureDetector(
      onTap: () {
        Get.back();
      },
      child: CircleAvatar(
        backgroundColor: themeController.isDarkMode.value
            ? AppColors.brightCornflowerBlueColor
            : AppColors.whiteColor,
        child: Icon(
          Icons.arrow_back_ios_rounded,
          color: themeController.isDarkMode.value
              ? AppColors.whiteColor
              : AppColors.blackColor,
        ),
      ),
    );
  }
}
