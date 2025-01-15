import 'package:animate_do/animate_do.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/colors/app_colors.dart';
import '../../../responsive_widget.dart';
import '../../../view_models/controllers/theme_controller.dart';
import '../../onboarding_screen/onboarding_screen.dart';

class SplashScreenDesign extends StatelessWidget {
  const SplashScreenDesign({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveWidget.isMobile(context);
    final isTablet = ResponsiveWidget.isTablet(context);
    final isDesktop = ResponsiveWidget.isDesktop(context);
    final themeController = Get.put(ThemeController());
    final fontSize = MediaQuery.of(context).size.width * 0.025;

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
                height: isMobile
                    ? 90
                    : isTablet
                        ? 120
                        : isDesktop
                            ? 180
                            : 0,
                width: isMobile
                    ? 90
                    : isTablet
                        ? 120
                        : isDesktop
                            ? 180
                            : 0,
              ),
            ),
            ZoomIn(
              animate: true,
              duration: const Duration(seconds: 2),
              child: Center(
                child: AutoSizeText(
                  'app_title'.tr,
                  minFontSize: 20,
                  maxFontSize: 26,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: fontSize,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'amaranth',
                  ),
                ),
              ),
            ),
          ],
        ),
        splashIconSize: isMobile
            ? 150
            : isTablet
                ? 180
                : isDesktop
                    ? 230
                    : 0,
        duration: 4000,
        backgroundColor: themeController.isDarkMode.value
            ? AppColors.darkColor
            : AppColors.lightColor,
        nextScreen: const OnboardingScreen(),
      ),
    );
  }
}
