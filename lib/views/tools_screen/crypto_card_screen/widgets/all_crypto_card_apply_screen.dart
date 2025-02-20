import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllCryptoCardApplyScreen extends StatelessWidget {
  const AllCryptoCardApplyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Get.arguments['allCryptoCardApplyScreen'],
    );
  }
}
