import 'package:crypto_wallet_ui_template/responsive_widget.dart';
import 'package:crypto_wallet_ui_template/view_models/controllers/crypto_card_select_controller.dart';
import 'package:crypto_wallet_ui_template/views/home_screen/home_screen_appbar/home_screen_appbar.dart';
import 'package:crypto_wallet_ui_template/views/menu_screen/menu_screen.dart';
import 'package:crypto_wallet_ui_template/views/swap_screen/swap_screen.dart';
import 'package:crypto_wallet_ui_template/views/tools_screen/crypto_card_screen/widgets/crypto_card_apply_screen.dart';
import 'package:crypto_wallet_ui_template/views/tools_screen/widgets/show_screens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view_models/controllers/bottom_navbar_controller.dart';
import '../tools_screen/tools_screen.dart';
import '../tools_screen/widgets/tools_screen_appbar.dart';
import 'bottom_navbar/bottom_navbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final bottomNavbarController = Get.put(BottomNavbarController());
  final cryptoCardSelectController = Get.put(CryptoCardSelectController());

  @override
  Widget build(BuildContext context) {
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
              return ResponsiveWidget(
                mobile: mobileToolsScreen(),
                tablet: tabletToolsScreen(),
                desktop: desktopToolsScreen(),
              );
            case 3:
              return ResponsiveWidget(
                mobile: mobileMenuScreen(),
                tablet: tabletMenuScreen(),
                desktop: desktopMenuScreen(),
              );
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
          HomeScreenAppbar(),
        ],
      );

  Widget tabletHomeScreen() => const Column(
        children: [
          HomeScreenAppbar(),
        ],
      );

  Widget desktopHomeScreen() => const Column(
        children: [
          HomeScreenAppbar(),
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

  //tools screen items
  Widget mobileToolsScreen() => SafeArea(
        child: Column(
          children: [
            const ToolsScreenAppbar(),
            Expanded(
              child: ListView(
                children: [
                  const ToolsScreen(),
                ],
              ),
            ),
          ],
        ),
      );

  Widget tabletToolsScreen() => Row(
        children: [
          Expanded(
            flex: 2,
            child: ListView(
              children: [
                const ToolsScreenAppbar(),
                const SizedBox(height: 10),
                const ToolsScreen(),
              ],
            ),
          ),
          const Expanded(
            flex: 3,
            child: ShowScreens(),
          ),
        ],
      );

  Widget desktopToolsScreen() => Row(
        children: [
          Expanded(
            flex: 2,
            child: ListView(
              children: [
                const ToolsScreenAppbar(),
                const SizedBox(height: 10),
                const ToolsScreen(),
              ],
            ),
          ),
          const Expanded(
            flex: 3,
            child: ShowScreens(),
          ),
          const Expanded(flex: 2, child: CryptoCardApplyScreen()),
        ],
      );

  //menu screen items
  Widget mobileMenuScreen() => const Column(
        children: [
          MenuScreen(),
        ],
      );

  Widget tabletMenuScreen() => const Column(
        children: [
          MenuScreen(),
        ],
      );

  Widget desktopMenuScreen() => const Column(
        children: [
          MenuScreen(),
        ],
      );
}
