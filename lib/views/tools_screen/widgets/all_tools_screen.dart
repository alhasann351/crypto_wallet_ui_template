import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllToolsScreen extends StatelessWidget {
  const AllToolsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Get.arguments['allToolsScreen'],
    );
  }
}
