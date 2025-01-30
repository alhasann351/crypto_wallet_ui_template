import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowAllCryptoCardApplyScreenMobileTablet extends StatelessWidget {
  const ShowAllCryptoCardApplyScreenMobileTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Get.arguments['showAllCryptoCardApplyScreenMobileTablet'],
    );
  }
}
