import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view_models/controllers/theme_controller.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Obx(
        () => Switch(
            value: themeController.isDarkMode.value,
            onChanged: (value) {
              themeController.switchTheme();
            }),
      ),
    ));
  }
}
