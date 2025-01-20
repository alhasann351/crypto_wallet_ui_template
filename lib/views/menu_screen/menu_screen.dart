import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../responsive_widget.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final fontSize = MediaQuery.of(context).size.width * 0.025;
    final isMobile = ResponsiveWidget.isMobile(context);
    final isTablet = ResponsiveWidget.isTablet(context);
    final isDesktop = ResponsiveWidget.isDesktop(context);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: AppBar(
            centerTitle: true,
            title: AutoSizeText(
              minFontSize: 22,
              maxFontSize: 26,
              'menu_screen_title'.tr,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontFamily: 'amaranth',
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Center(
          child: isMobile
              ? const Text('Mobile Menu Screen')
              : isTablet
                  ? const Text('Tablet Menu Screen')
                  : isDesktop
                      ? const Text('Desktop Menu Screen')
                      : const SizedBox(),
        ),
      ],
    );
  }
}
