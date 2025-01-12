import 'package:crypto_wallet_ui_template/responsive_widget.dart';
import 'package:crypto_wallet_ui_template/views/splash_screen/widgets/desktop_splash_screen.dart';
import 'package:crypto_wallet_ui_template/views/splash_screen/widgets/mobile_splash_screen.dart';
import 'package:crypto_wallet_ui_template/views/splash_screen/widgets/tablet_splash_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveWidget(
      mobile: MobileSplashScreen(),
      tablet: TabletSplashScreen(),
      desktop: DesktopSplashScreen(),
    );
  }
}
