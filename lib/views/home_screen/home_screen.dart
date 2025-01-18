import 'package:crypto_wallet_ui_template/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view_models/controllers/bottom_navbar_controller.dart';
import 'header_design/header_design.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomNavbarController = Get.put(BottomNavbarController());

    return PopScope(
      onPopInvokedWithResult: (bool didPop, Object? result) async {
        if (bottomNavbarController.currentScreen.value != 0) {
          bottomNavbarController.currentScreen.value = 0;
        }
      },
      child: Scaffold(
        //bottomNavigationBar: const BottomNavbar(),
        body: ResponsiveWidget(
          mobile: mobile(),
          tablet: tablet(),
          desktop: desktop(),
        ),
      ),
    );
  }

  Widget mobile() => const Column(
        children: [
          HeaderDesign(),
        ],
      );
  Widget tablet() => const Column(
        children: [
          HeaderDesign(),
        ],
      );
  Widget desktop() => const Column(
        children: [
          HeaderDesign(),
        ],
      );
}
