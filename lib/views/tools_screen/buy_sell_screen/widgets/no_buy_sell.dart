import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../responsive_widget.dart';

class NoBuySell extends StatelessWidget {
  const NoBuySell({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveWidget.isMobile(context);
    final isTablet = ResponsiveWidget.isTablet(context);
    final isDesktop = ResponsiveWidget.isDesktop(context);
    final fontSize = MediaQuery.of(context).size.width * 0.025;

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/box.png',
            height: isMobile
                ? 100
                : isTablet
                    ? 150
                    : isDesktop
                        ? 150
                        : 0,
            width: isMobile
                ? 100
                : isTablet
                    ? 150
                    : isDesktop
                        ? 150
                        : 0,
          ),
          const SizedBox(
            height: 10,
          ),
          AutoSizeText(
            'no_buy_sell_title'.tr,
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
          AutoSizeText(
            'no_buy_sell_des'.tr,
            textAlign: TextAlign.center,
            minFontSize: 14,
            maxFontSize: 16,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: fontSize,
              fontFamily: 'amaranth',
            ),
          ),
        ],
      ),
    );
  }
}
