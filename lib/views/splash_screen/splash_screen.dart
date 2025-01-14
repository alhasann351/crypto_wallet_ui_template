import 'package:crypto_wallet_ui_template/responsive_widget.dart';
import 'package:crypto_wallet_ui_template/views/splash_screen/widgets/desktop_splash_screen.dart';
import 'package:crypto_wallet_ui_template/views/splash_screen/widgets/mobile_splash_screen.dart';
import 'package:crypto_wallet_ui_template/views/splash_screen/widgets/tablet_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view_models/controllers/theme_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final themeController = Get.put(ThemeController());

  @override
  void initState() {
    themeController.loadTheme();
    themeController.themeMode;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      mobile: MobileSplashScreen(),
      tablet: TabletSplashScreen(),
      desktop: DesktopSplashScreen(),
    );
  }
}
