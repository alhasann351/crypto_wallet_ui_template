import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../resources/colors/app_colors.dart';
import '../../../view_models/controllers/theme_controller.dart';
import '../../onboarding_screen/onboarding_screen.dart';

class TabletSplashScreen extends StatelessWidget {
  TabletSplashScreen({super.key});

  final themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: AnimatedSplashScreen(
        splash: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 250,
              width: 250,
              child: themeController.isDarkMode.value
                  ? Lottie.asset('assets/lottie/splash_dark_animation.json')
                  : Lottie.asset('assets/lottie/splash_light_animation.json'),
            ),
            Animate(
              effects: const [
                FadeEffect(
                  duration: Duration(seconds: 3),
                ),
              ],
              child: Text(
                'app_title'.tr,
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'amaranth',
                    color: themeController.isDarkMode.value
                        ? AppColors.splashLightColor
                        : AppColors.splashDarkColor),
              ),
            ),
          ],
        ),
        splashIconSize: 350,
        duration: 4000,
        backgroundColor: themeController.isDarkMode.value
            ? AppColors.splashDarkColor
            : AppColors.splashLightColor,
        nextScreen: OnboardingScreen(),
      ),
    );
  }
}
