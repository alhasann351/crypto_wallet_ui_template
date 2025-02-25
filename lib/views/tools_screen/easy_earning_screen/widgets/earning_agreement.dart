import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/colors/app_colors.dart';
import '../../../../view_models/controllers/checkbox_controller.dart';
import '../../../../view_models/controllers/theme_controller.dart';

class EarningAgreement extends StatelessWidget {
  const EarningAgreement({super.key});

  @override
  Widget build(BuildContext context) {
    final checkboxController = Get.put(CheckboxController());
    final themeController = Get.put(ThemeController());
    final fontSize = MediaQuery.of(context).size.width * 0.025;

    return Row(
      children: [
        Obx(
          () => Checkbox(
              activeColor: themeController.isDarkMode.value
                  ? AppColors.brightCornflowerBlueColor
                  : AppColors.textGreenColor,
              checkColor: AppColors.whiteColor,
              value: checkboxController.isChecked.value,
              onChanged: (bool? value) {
                checkboxController.isChecked.value = value!;
              }),
        ),
        AutoSizeText(
          'I have reed and i agree to '.tr,
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
        Expanded(
          child: TextButton(
            onPressed: () {},
            child: AutoSizeText(
              'Earn Service agreement Earn Service agreement',
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
        ),
      ],
    );
  }
}
