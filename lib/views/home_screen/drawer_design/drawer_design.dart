import 'package:crypto_wallet_ui_template/resources/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../view_models/controllers/theme_controller.dart';

class DrawerDesign extends StatelessWidget {
  const DrawerDesign({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Get.put(ThemeController());

    return Container(
      color: themeController.isDarkMode.value
          ? AppColors.darkColor
          : Colors.greenAccent.withValues(alpha: 0.3),
      child: Column(
        children: [Text('data'), Text('data'), Text('data')],
      ),
    );
  }
}
