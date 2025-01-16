import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../responsive_widget.dart';

class HeaderDesign extends StatelessWidget {
  const HeaderDesign({super.key});

  @override
  Widget build(BuildContext context) {
    final fontSize = MediaQuery.of(context).size.width * 0.025;
    final isMobile = ResponsiveWidget.isMobile(context);
    final isTablet = ResponsiveWidget.isTablet(context);
    final isDesktop = ResponsiveWidget.isDesktop(context);

    /*return SafeArea(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AutoSizeText(
              minFontSize: 22,
              maxFontSize: 26,
              'app_title'.tr,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontFamily: 'amaranth',
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              spacing: 30,
              children: [
                Icon(
                  Icons.qr_code_scanner_rounded,
                  size: isMobile
                      ? 24
                      : isTablet
                          ? 30
                          : isDesktop
                              ? 36
                              : 24,
                ),
                Icon(
                  Icons.notifications_none_rounded,
                  size: isMobile
                      ? 24
                      : isTablet
                          ? 30
                          : isDesktop
                              ? 36
                              : 24,
                ),
              ],
            )
          ],
        ),
      ),
    );*/

    return AppBar(
      centerTitle: true,
      title: AutoSizeText(
        minFontSize: 22,
        maxFontSize: 26,
        'app_title'.tr,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontFamily: 'amaranth',
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: isMobile
          ? IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.menu_rounded))
          : null,
    );
  }
}
