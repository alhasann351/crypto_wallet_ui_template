import 'package:crypto_wallet_ui_template/responsive_widget.dart';
import 'package:crypto_wallet_ui_template/views/splash_screen/widgets/splash_screen_design.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view_models/controllers/theme_controller.dart';
import '../../view_models/services/onboarding_service.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final themeController = Get.put(ThemeController());
  final onboardingService = OnboardingService();

  @override
  void initState() {
    themeController.loadTheme();
    themeController.themeMode;
    onboardingService.isOnboardingScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      mobile: SplashScreenDesign(),
      tablet: SplashScreenDesign(),
      desktop: SplashScreenDesign(),
    );
  }
}
