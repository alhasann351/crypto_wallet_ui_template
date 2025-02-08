import 'package:auto_size_text/auto_size_text.dart';
import 'package:crypto_wallet_ui_template/view_models/controllers/buy_sell_all_status_button_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/colors/app_colors.dart';

class BuySellAllStatusToggleButton extends StatelessWidget {
  const BuySellAllStatusToggleButton({super.key});

  @override
  Widget build(BuildContext context) {
    final buySellAllStatusButtonController =
        Get.put(BuySellAllStatusButtonController());
    final fontSize = MediaQuery.of(context).size.width * 0.025;

    return SizedBox(
      height: 60,
      child: Row(
        spacing: 5,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Obx(
            () => GestureDetector(
              onTap: () {
                buySellAllStatusButtonController.currentTab.value = true;
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    color: buySellAllStatusButtonController.currentTab.value
                        ? AppColors.cardColor2
                        : AppColors.whiteColor,
                    borderRadius: const BorderRadius.horizontal(
                      left: Radius.circular(25),
                      right: Radius.circular(25),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: AutoSizeText(
                    'buy_sell'.tr,
                    minFontSize: 14,
                    maxFontSize: 16,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                        color: buySellAllStatusButtonController.currentTab.value
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
                buySellAllStatusButtonController.currentTab.value = false;
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    color: buySellAllStatusButtonController.currentTab.value
                        ? AppColors.whiteColor
                        : AppColors.cardColor5,
                    borderRadius: const BorderRadius.horizontal(
                      right: Radius.circular(25),
                      left: Radius.circular(25),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: AutoSizeText(
                    'all_status'.tr,
                    minFontSize: 14,
                    maxFontSize: 16,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                        color: buySellAllStatusButtonController.currentTab.value
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
    );
  }
}
