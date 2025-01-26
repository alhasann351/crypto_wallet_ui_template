import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../responsive_widget.dart';
import '../../../view_models/controllers/tools_controllers.dart';

class ShowScreens extends StatelessWidget {
  const ShowScreens({super.key});

  @override
  Widget build(BuildContext context) {
    final toolsController = Get.put(ToolsController());

    return Obx(
      () {
        if (toolsController.selectedScreens.value == null) {
          final isTablet = ResponsiveWidget.isTablet(context);
          final isDesktop = ResponsiveWidget.isDesktop(context);
          final fontSize = MediaQuery.of(context).size.width * 0.025;

          return Column(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/tools_image.webp',
                height: isTablet
                    ? 200
                    : isDesktop
                        ? 220
                        : 0,
                width: isTablet
                    ? 200
                    : isDesktop
                        ? 220
                        : 0,
              ),
              AutoSizeText(
                'no_selected_tools'.tr,
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
            ],
          );
        }

        final selectedScreens = toolsController.selectedScreens.value!;
        return selectedScreens;
      },
    );
  }
}
