import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingPageTwo extends StatelessWidget {
  const OnboardingPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final fontSize = MediaQuery.of(context).size.width * 0.025;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/onboarding_image_two.webp',
            height: 220,
            width: 220,
          ),
          const SizedBox(
            height: 30,
          ),
          AutoSizeText(
            'onboarding_page_two_title'.tr,
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
            'onboarding_page_two_description'.tr,
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
