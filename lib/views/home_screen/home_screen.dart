import 'package:crypto_wallet_ui_template/responsive_widget.dart';
import 'package:flutter/material.dart';

import 'drawer_design/drawer_design.dart';
import 'header_design/header_design.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final fontSize = MediaQuery.of(context).size.width * 0.025;
    final isMobile = ResponsiveWidget.isMobile(context);
    final isTablet = ResponsiveWidget.isTablet(context);
    final isDesktop = ResponsiveWidget.isDesktop(context);

    return Scaffold(
      drawer: isMobile
          ? const Drawer(
              child: DrawerDesign(),
            )
          : null,
      body: ResponsiveWidget(
        mobile: mobile(),
        tablet: tablet(),
        desktop: desktop(),
      ),
    );
  }

  Widget mobile() => Column(
        children: [
          HeaderDesign(),
        ],
      );
  Widget tablet() => Row(
        children: [
          Expanded(flex: 2, child: DrawerDesign()),
          Expanded(
              flex: 5,
              child: Column(
                children: [
                  HeaderDesign(),
                  SizedBox(
                    height: 100,
                    width: 100,
                    child: Card(
                      color: Colors.white,
                    ),
                  ),
                  Card(
                    color: Colors.white,
                  ),
                ],
              )),
        ],
      );
  Widget desktop() => SizedBox();
}
