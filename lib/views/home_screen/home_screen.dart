import 'package:crypto_wallet_ui_template/responsive_widget.dart';
import 'package:flutter/material.dart';

import 'drawer_design/drawer_design.dart';
import 'header_design/header_design.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveWidget.isMobile(context);

    return Scaffold(
      drawer: isMobile
          ? Padding(
              padding: const EdgeInsets.all(10),
              child: SafeArea(
                child: Drawer(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: const DrawerDesign(),
                ),
              ),
            )
          : const SizedBox(),
      body: ResponsiveWidget(
        mobile: mobile(),
        tablet: tablet(),
        desktop: desktop(),
      ),
    );
  }

  Widget mobile() => const Column(
        children: [
          HeaderDesign(),
        ],
      );
  Widget tablet() => const Row(
        children: [
          Expanded(flex: 2, child: DrawerDesign()),
          Expanded(
            flex: 5,
            child: Column(
              children: [
                HeaderDesign(),
              ],
            ),
          ),
        ],
      );
  Widget desktop() => const Row(
        children: [
          Expanded(child: DrawerDesign()),
          Expanded(
            flex: 4,
            child: Column(
              children: [
                HeaderDesign(),
              ],
            ),
          ),
        ],
      );
}
