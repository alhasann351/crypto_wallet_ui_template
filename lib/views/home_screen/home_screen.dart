import 'package:auto_size_text/auto_size_text.dart';
import 'package:crypto_wallet_ui_template/responsive_widget.dart';
import 'package:crypto_wallet_ui_template/views/home_screen/home_screen_appbar/home_screen_appbar.dart';
import 'package:crypto_wallet_ui_template/views/menu_screen/menu_screen.dart';
import 'package:crypto_wallet_ui_template/views/swap_screen/swap_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view_models/controllers/bottom_navbar_controller.dart';
import '../../view_models/controllers/tools_controllers.dart';
import '../tools_screen/tools_screen.dart';
import '../tools_screen/widgets/tools_screen_appbar.dart';
import 'bottom_navbar/bottom_navbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final toolsController = Get.put(ToolsController());
  final bottomNavbarController = Get.put(BottomNavbarController());

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
          Expanded(
            flex: 3,
            child: Obx(
              () {
                if (toolsController.selectedScreens.value == null) {
                  final isTablet = ResponsiveWidget.isTablet(context);
                  final isDesktop = ResponsiveWidget.isDesktop(context);
                  final fontSize = MediaQuery.of(context).size.width * 0.025;

                  return Column(
                    spacing: 10,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/tools_image.webp',
                        height: isTablet
                            ? 200
                            : isDesktop
                                ? 220
                                : 0,
                        width: isTablet
                            ? 200
                            : isDesktop
                                ? 220
                                : 0,
                      ),
                      AutoSizeText(
                        'no_selected_tools'.tr,
                        textAlign: TextAlign.center,
                        minFontSize: 16,
                        maxFontSize: 20,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: fontSize,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'amaranth',
                        ),
                      ),
                    ],
                  );
                }

                final selectedScreens = toolsController.selectedScreens.value!;
                return selectedScreens;
              },
            ),
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
          Expanded(
            flex: 3,
            child: Obx(
              () {
                if (toolsController.selectedScreens.value == null) {
                  final isTablet = ResponsiveWidget.isTablet(context);
                  final isDesktop = ResponsiveWidget.isDesktop(context);
                  final fontSize = MediaQuery.of(context).size.width * 0.025;

                  return Column(
                    spacing: 10,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/tools_image.webp',
                        height: isTablet
                            ? 200
                            : isDesktop
                                ? 220
                                : 0,
                        width: isTablet
                            ? 200
                            : isDesktop
                                ? 220
                                : 0,
                      ),
                      AutoSizeText(
                        'no_selected_tools'.tr,
                        textAlign: TextAlign.center,
                        minFontSize: 16,
                        maxFontSize: 20,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: fontSize,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'amaranth',
                        ),
                      ),
                    ],
                  );
                }

                final selectedScreens = toolsController.selectedScreens.value!;
                return selectedScreens;
              },
            ),
          ),
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.red,
              )),
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
