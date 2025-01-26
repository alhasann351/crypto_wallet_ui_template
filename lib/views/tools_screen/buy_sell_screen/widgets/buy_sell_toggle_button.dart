import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../resources/colors/app_colors.dart';
import '../../../../../../view_models/controllers/buy_sell_toggle_button_controller.dart';

class BuySellToggleButton extends StatelessWidget {
  const BuySellToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    final buySellToggleButtonController =
        Get.put(BuySellToggleButtonController());
    final fontSize = MediaQuery.of(context).size.width * 0.025;
    final width = MediaQuery.of(context).size.width * 0.1;

    return SizedBox(
      height: 60,
      child: Card(
        color: AppColors.whiteColor,
        child: Row(
          spacing: 5,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => GestureDetector(
                onTap: () {
                  buySellToggleButtonController.currentSwitch.value = true;
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: AnimatedContainer(
                    height: 40,
                    width: width,
                    decoration: BoxDecoration(
                      color: buySellToggleButtonController.currentSwitch.value
                          ? AppColors.greenColor
                          : AppColors.whiteColor,
                      borderRadius: const BorderRadius.horizontal(
                        left: Radius.circular(25),
                        right: Radius.circular(25),
                      ),
                    ),
                    alignment: Alignment.center,
                    duration: const Duration(seconds: 1),
                    curve: Curves.linear,
                    child: AutoSizeText(
                      'buy'.tr,
                      minFontSize: 14,
                      maxFontSize: 16,
                      style: TextStyle(
                          color:
                              buySellToggleButtonController.currentSwitch.value
                                  ? AppColors.whiteColor
                                  : AppColors.blackColor,
                          fontWeight: FontWeight.bold,
                          fontSize: fontSize,
                          fontFamily: 'amaranth'),
                    ),
                  ),
                ),
              ),
            ),
            Obx(
              () => GestureDetector(
                onTap: () {
                  buySellToggleButtonController.currentSwitch.value = false;
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: AnimatedContainer(
                    height: 40,
                    width: width,
                    decoration: BoxDecoration(
                      color: buySellToggleButtonController.currentSwitch.value
                          ? AppColors.whiteColor
                          : AppColors.redColor,
                      borderRadius: const BorderRadius.horizontal(
                        right: Radius.circular(25),
                        left: Radius.circular(25),
                      ),
                    ),
                    alignment: Alignment.center,
                    duration: const Duration(seconds: 1),
                    curve: Curves.linear,
                    child: AutoSizeText(
                      'sell'.tr,
                      minFontSize: 14,
                      maxFontSize: 16,
                      style: TextStyle(
                          color:
                              buySellToggleButtonController.currentSwitch.value
                                  ? AppColors.blackColor
                                  : AppColors.whiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: fontSize,
                          fontFamily: 'amaranth'),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
