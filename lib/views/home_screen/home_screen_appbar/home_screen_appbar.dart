import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../view_models/controllers/theme_controller.dart';

class HomeScreenAppbar extends StatelessWidget {
  const HomeScreenAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final fontSize = MediaQuery.of(context).size.width * 0.025;
    final themeController = Get.put(ThemeController());

    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: AppBar(
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
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.qr_code_scanner_rounded,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_active_outlined,
            ),
          ),
          Obx(
            () => Switch(
                value: themeController.isDarkMode.value,
                onChanged: (value) {
                  themeController.switchTheme();
                }),
          ),
        ],
      ),
    );
  }
}
