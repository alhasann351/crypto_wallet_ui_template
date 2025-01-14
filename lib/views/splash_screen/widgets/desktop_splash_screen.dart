import 'package:animate_do/animate_do.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/colors/app_colors.dart';
import '../../../view_models/controllers/theme_controller.dart';
import '../../onboarding_screen/onboarding_screen.dart';

class DesktopSplashScreen extends StatelessWidget {
  DesktopSplashScreen({super.key});

  final themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        splash: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ZoomIn(
              animate: true,
              duration: const Duration(seconds: 2),
              child: Image.asset(
                'assets/icons/app_icon.png',
                height: 180,
                width: 180,
              ),
            ),
            ZoomIn(
              animate: true,
              duration: const Duration(seconds: 2),
              child: Text(
                'app_title'.tr,
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'amaranth',
                    color: themeController.isDarkMode.value
                        ? AppColors.lightColor
                        : AppColors.darkColor),
              ),
            ),
          ],
        ),
        splashIconSize: 230,
        duration: 4000,
        backgroundColor: themeController.isDarkMode.value
            ? AppColors.darkColor
            : AppColors.lightColor,
        nextScreen: OnboardingScreen(),
      ),
    );
  }
}
