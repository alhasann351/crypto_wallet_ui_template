import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../responsive_widget.dart';

class OnboardingPageThree extends StatelessWidget {
  const OnboardingPageThree({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveWidget.isMobile(context);
    final isTablet = ResponsiveWidget.isTablet(context);
    final isDesktop = ResponsiveWidget.isDesktop(context);
    final fontSize = MediaQuery.of(context).size.width * 0.025;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/onboarding_image_three.webp',
            height: isMobile
                ? 220
                : isTablet
                    ? 250
                    : isDesktop
                        ? 270
                        : 0,
            width: isMobile
                ? 220
                : isTablet
                    ? 240
                    : isDesktop
                        ? 260
                        : 0,
          ),
          const SizedBox(
            height: 30,
          ),
          AutoSizeText(
            'onboarding_page_three_title'.tr,
            textAlign: TextAlign.center,
            minFontSize: 22,
            maxFontSize: 26,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              fontFamily: 'amaranth',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          AutoSizeText(
            'onboarding_page_three_description'.tr,
            textAlign: TextAlign.center,
            minFontSize: 18,
            maxFontSize: 20,
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
