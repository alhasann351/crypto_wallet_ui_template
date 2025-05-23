import 'package:animate_do/animate_do.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreenDesign extends StatelessWidget {
  const SplashScreenDesign({super.key});

  @override
  Widget build(BuildContext context) {
    final fontSize = MediaQuery.of(context).size.width * 0.025;

    return Scaffold(
      body: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ZoomIn(
            animate: true,
            duration: const Duration(seconds: 2),
            child: Image.asset(
              'assets/icons/app_icon.png',
              height: 90,
              width: 90,
            ),
          ),
          ZoomIn(
            animate: true,
            duration: const Duration(seconds: 2),
            child: Center(
              child: AutoSizeText(
                'app_title'.tr,
                minFontSize: 20,
                maxFontSize: 26,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'amaranth',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
