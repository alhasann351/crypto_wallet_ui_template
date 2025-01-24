import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/colors/app_colors.dart';
import '../../../../view_models/controllers/buy_sell_toggle_button_controller.dart';

class BuySellToggleButton extends StatelessWidget {
  const BuySellToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    final buySellToggleButtonController =
        Get.put(BuySellToggleButtonController());

    return SizedBox(
      height: 60,
      width: 220,
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
                child: AnimatedContainer(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    color: buySellToggleButtonController.currentSwitch.value
                        ? Colors.green
                        : AppColors.whiteColor,
                    borderRadius: const BorderRadius.horizontal(
                      left: Radius.circular(25),
                      right: Radius.circular(25),
                    ),
                  ),
                  alignment: Alignment.center,
                  duration: const Duration(seconds: 1),
                  curve: Curves.linear,
                  child: Text(
                    'buy'.tr,
                    style: TextStyle(
                        color: buySellToggleButtonController.currentSwitch.value
                            ? AppColors.whiteColor
                            : AppColors.blackColor,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'amaranth'),
                  ),
                ),
              ),
            ),
            Obx(
              () => GestureDetector(
                onTap: () {
                  buySellToggleButtonController.currentSwitch.value = false;
                },
                child: AnimatedContainer(
                  height: 40,
                  width: 100,
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
                  child: Text(
                    'sell'.tr,
                    style: TextStyle(
                        color: buySellToggleButtonController.currentSwitch.value
                            ? AppColors.blackColor
                            : AppColors.whiteColor,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'amaranth'),
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
