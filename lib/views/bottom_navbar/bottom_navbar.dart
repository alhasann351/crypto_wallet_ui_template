import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../../resources/colors/app_colors.dart';
import '../../../view_models/controllers/bottom_navbar_controller.dart';
import '../../../view_models/controllers/theme_controller.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Get.put(ThemeController());
    final bottomNavbarController = Get.put(BottomNavbarController());

    return SafeArea(
      child: PopScope(
        canPop: false,
        onPopInvokedWithResult: (bool didPop, Object? result) async {
          if (bottomNavbarController.currentScreen.value != 0) {
            bottomNavbarController.currentScreen.value = 0;
          } else {
            SystemNavigator.pop();
          }
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
          child: Obx(
            () => GNav(
              selectedIndex: bottomNavbarController.currentScreen.value,
              onTabChange: (index) {
                bottomNavbarController.currentScreen.value = index;
              },
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
              gap: 8,
              tabBackgroundColor:
                  bottomNavbarController.currentScreen.value == 0
                      ? themeController.isDarkMode.value
                          ? AppColors.brightCornflowerBlueColor
                          : AppColors.whiteColor
                      : themeController.isDarkMode.value
                          ? AppColors.brightCornflowerBlueColor
                          : AppColors.whiteColor,
              tabs: [
                GButton(
                  icon: Icons.home_outlined,
                  text: 'nav_home'.tr,
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'amaranth',
                    fontSize: 14,
                  ),
                ),
                GButton(
                  icon: Icons.swipe_down_outlined,
                  text: 'nav_swap'.tr,
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'amaranth',
                    fontSize: 14,
                  ),
                ),
                GButton(
                  icon: Icons.build_outlined,
                  text: 'nav_tools'.tr,
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'amaranth',
                    fontSize: 14,
                  ),
                ),
                GButton(
                  icon: Icons.person_outline,
                  text: 'nav_menu'.tr,
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'amaranth',
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
