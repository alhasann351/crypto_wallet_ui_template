import 'package:crypto_wallet_ui_template/resources/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/routes/routes_name.dart';
import '../../../../view_models/controllers/theme_controller.dart';

class PayoutAccountIcon extends StatelessWidget {
  const PayoutAccountIcon({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Get.put(ThemeController());

    return GestureDetector(
      onTap: () {
        Get.toNamed(RoutesName.payoutAccountScreen);
      },
      child: CircleAvatar(
        backgroundColor: themeController.isDarkMode.value
            ? AppColors.brightCornflowerBlueColor
            : AppColors.whiteColor,
        child: Icon(
          Icons.payments_outlined,
          color: themeController.isDarkMode.value
              ? AppColors.whiteColor
              : AppColors.blackColor,
        ),
      ),
    );
  }
}
