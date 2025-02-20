import 'package:crypto_wallet_ui_template/views/home_screen/home_screen.dart';
import 'package:crypto_wallet_ui_template/views/home_screen/widgets/home_screen_appbar.dart';
import 'package:crypto_wallet_ui_template/views/menu_screen/menu_screen.dart';
import 'package:crypto_wallet_ui_template/views/swap_screen/swap_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view_models/controllers/bottom_navbar_controller.dart';
import '../bottom_navbar/bottom_navbar.dart';
import '../tools_screen/tools_screen.dart';

class MainScreensShow extends StatefulWidget {
  const MainScreensShow({super.key});

  @override
  State<MainScreensShow> createState() => _MainScreensShowState();
}

class _MainScreensShowState extends State<MainScreensShow> {
  final bottomNavbarController = Get.put(BottomNavbarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () {
          switch (bottomNavbarController.currentScreen.value) {
            case 0:
              return const HomeScreen();
            case 1:
              return const SwapScreen();
            case 2:
              return const ToolsScreen();
            case 3:
              return const MenuScreen();
            default:
              const HomeScreenAppbar();
          }
          return const SizedBox();
        },
      ),
      bottomNavigationBar: const BottomNavbar(),
    );
  }
}
