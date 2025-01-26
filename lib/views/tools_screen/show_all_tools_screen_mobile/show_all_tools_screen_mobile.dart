import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShowAllToolsScreenMobile extends StatelessWidget {
  const ShowAllToolsScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Get.arguments['showAllToolsScreenMobile'],
    );
  }
}
