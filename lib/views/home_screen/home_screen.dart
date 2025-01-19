import 'package:crypto_wallet_ui_template/responsive_widget.dart';
import 'package:crypto_wallet_ui_template/views/swap_screen/swap_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view_models/controllers/bottom_navbar_controller.dart';
import 'bottom_navbar/bottom_navbar.dart';
import 'header_design/header_design.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bottomNavbarController = Get.put(BottomNavbarController());

    return Scaffold(
      body: Obx(
        () {
          switch (bottomNavbarController.currentScreen.value) {
            case 0:
              return ResponsiveWidget(
                mobile: mobileHomeScreen(),
                tablet: tabletHomeScreen(),
                desktop: desktopHomeScreen(),
              );
            case 1:
              return ResponsiveWidget(
                mobile: mobileSwapScreen(),
                tablet: tabletSwapScreen(),
                desktop: desktopSwapScreen(),
              );
            case 2:
              return const Center(child: Text('Tools Screen'));
            case 3:
              return const Center(child: Text('Menu Screen'));
            default:
              ResponsiveWidget(
                mobile: mobileHomeScreen(),
                tablet: tabletHomeScreen(),
                desktop: desktopHomeScreen(),
              );
          }
          return const SizedBox();
        },
      ),
      bottomNavigationBar: const BottomNavbar(),
    );
  }

  //home screen items
  Widget mobileHomeScreen() => const Column(
        children: [
          HeaderDesign(),
        ],
      );
  Widget tabletHomeScreen() => const Column(
        children: [
          HeaderDesign(),
        ],
      );
  Widget desktopHomeScreen() => const Column(
        children: [
          HeaderDesign(),
        ],
      );

  //swap screen items
  Widget mobileSwapScreen() => const Column(
        children: [
          SwapScreen(),
        ],
      );
  Widget tabletSwapScreen() => const Column(
        children: [
          SwapScreen(),
        ],
      );
  Widget desktopSwapScreen() => const Column(
        children: [
          SwapScreen(),
        ],
      );
}
