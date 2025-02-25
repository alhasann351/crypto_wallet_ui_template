import 'package:auto_size_text/auto_size_text.dart';
import 'package:crypto_wallet_ui_template/resources/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../view_models/controllers/select_plan_controller.dart';
import '../../../../view_models/controllers/theme_controller.dart';

class SelectPlan extends StatelessWidget {
  SelectPlan({super.key});

  final selectPlanController = Get.put(SelectPlanController());
  final themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    final fontSize = MediaQuery.of(context).size.width * 0.025;
    final selectPlanTitle = [
      'Flexible',
      '30 days',
      '60 days',
      '90 days',
      '180 days',
      '360 days',
    ];
    final selectPlanArp = [
      '5.0% ARP',
      '6.0% ARP',
      '7.0% ARP',
      '8.0% ARP',
      '9.0% ARP',
      '10.0% ARP',
    ];

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            'select_plan'.tr,
            minFontSize: 16,
            maxFontSize: 18,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              fontFamily: 'amaranth',
              color: themeController.isDarkMode.value
                  ? AppColors.whiteColor
                  : AppColors.blackColor,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 80,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: selectPlanTitle.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 100,
                    child: GestureDetector(
                      onTap: () {
                        selectPlanController.updateSelectedPlan(index);
                      },
                      child: Obx(
                        () => Card(
                          color:
                              selectPlanController.selectedPlan.value == index
                                  ? themeController.isDarkMode.value
                                      ? AppColors.brightCornflowerBlueColor
                                          .withValues(alpha: 0.9)
                                      : AppColors.lightColor
                                  : AppColors.whiteColor,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AutoSizeText(
                                  selectPlanTitle[index],
                                  minFontSize: 16,
                                  maxFontSize: 18,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: fontSize,
                                    fontFamily: 'amaranth',
                                    color: selectPlanController
                                                .selectedPlan.value ==
                                            index
                                        ? themeController.isDarkMode.value
                                            ? AppColors.whiteColor
                                            : AppColors.greyColor
                                        : AppColors.greyColor,
                                  ),
                                ),
                                AutoSizeText(
                                  selectPlanArp[index],
                                  minFontSize: 16,
                                  maxFontSize: 18,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextStyle(
                                    fontSize: fontSize,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'amaranth',
                                    color: AppColors.blackColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
