import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/colors/app_colors.dart';
import '../../../view_models/controllers/theme_controller.dart';

class HomeScreenAppbar extends StatelessWidget {
  const HomeScreenAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final fontSize = MediaQuery.of(context).size.width * 0.025;
    final themeController = Get.put(ThemeController());

    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: AppBar(
        title: AutoSizeText(
          minFontSize: 22,
          maxFontSize: 26,
          'app_title'.tr,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontFamily: 'amaranth',
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Obx(
            () => IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                backgroundColor: themeController.isDarkMode.value
                    ? AppColors.brightCornflowerBlueColor
                    : AppColors.whiteColor,
                child: Icon(
                  Icons.qr_code_scanner_rounded,
                  color: themeController.isDarkMode.value
                      ? AppColors.whiteColor
                      : AppColors.blackColor,
                ),
              ),
            ),
          ),
          Obx(
            () => IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                backgroundColor: themeController.isDarkMode.value
                    ? AppColors.brightCornflowerBlueColor
                    : AppColors.whiteColor,
                child: Icon(
                  Icons.notifications_active_outlined,
                  color: themeController.isDarkMode.value
                      ? AppColors.whiteColor
                      : AppColors.blackColor,
                ),
              ),
            ),
          ),
          Obx(
            () => Switch(
                value: themeController.isDarkMode.value,
                onChanged: (value) {
                  themeController.switchTheme();
                }),
          ),
        ],
      ),
    );
  }
}
