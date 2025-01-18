import 'package:crypto_wallet_ui_template/resources/colors/app_colors.dart';
import 'package:crypto_wallet_ui_template/views/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../../responsive_widget.dart';
import '../../../view_models/controllers/bottom_navbar_controller.dart';
import '../../../view_models/controllers/theme_controller.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Get.put(ThemeController());
    final isMobile = ResponsiveWidget.isMobile(context);
    final isTablet = ResponsiveWidget.isTablet(context);
    final isDesktop = ResponsiveWidget.isDesktop(context);
    final bottomNavbarController = Get.put(BottomNavbarController());
    List<Widget> screens = [
      const HomeScreen(),
      const Center(child: Text('Swap Screen')),
      const Center(child: Text('Tools Screen')),
      const Center(child: Text('Menu Screen')),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
      child: GNav(
        selectedIndex: bottomNavbarController.currentScreen.value,
        onTabChange: (index) {
          bottomNavbarController.currentScreen.value = index;
        },
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
        gap: 8,
        tabBackgroundColor: themeController.isDarkMode.value
            ? AppColors.brightCornflowerBlueColor
            : AppColors.whiteColor,
        tabs: [
          GButton(
            icon: Icons.home_outlined,
            text: 'nav_home'.tr,
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'amaranth',
              fontSize: isMobile
                  ? 14
                  : isTablet
                      ? 16
                      : isDesktop
                          ? 17
                          : 14,
            ),
          ),
          GButton(
            icon: Icons.swipe_down_outlined,
            text: 'nav_swap'.tr,
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'amaranth',
              fontSize: isMobile
                  ? 14
                  : isTablet
                      ? 16
                      : isDesktop
                          ? 17
                          : 14,
            ),
          ),
          GButton(
            icon: Icons.build_outlined,
            text: 'nav_tools'.tr,
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'amaranth',
              fontSize: isMobile
                  ? 14
                  : isTablet
                      ? 16
                      : isDesktop
                          ? 17
                          : 14,
            ),
          ),
          GButton(
            icon: Icons.person_outline,
            text: 'nav_menu'.tr,
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'amaranth',
              fontSize: isMobile
                  ? 14
                  : isTablet
                      ? 16
                      : isDesktop
                          ? 17
                          : 14,
            ),
          ),
        ],
      ),
    );
  }
}
