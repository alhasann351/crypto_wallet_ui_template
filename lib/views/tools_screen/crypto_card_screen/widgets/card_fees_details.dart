import 'package:auto_size_text/auto_size_text.dart';
import 'package:crypto_wallet_ui_template/resources/colors/app_colors.dart';
import 'package:crypto_wallet_ui_template/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardFeesDetails extends StatelessWidget {
  const CardFeesDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.whiteColor,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: _buildFeeItem(
                icon:
                    'assets/images/fees.png', // Replace with actual asset path
                title: 'activation_fee'.tr,
                amount: '10 USDT',
              ),
            ),
            Expanded(
              child: _buildFeeItem(
                icon:
                    'assets/images/top_up.png', // Replace with actual asset path
                title: 'initial_top_up'.tr,
                amount: '5 USDT',
                showInfoIcon: true,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeeItem({
    required String icon,
    required String title,
    required String amount,
    bool showInfoIcon = false,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(icon, width: 20, height: 20, fit: BoxFit.cover),
        const SizedBox(width: 5),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AutoSizeText(
                      title,
                      minFontSize: 14,
                      maxFontSize: 16,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: AppColors.greyColor,
                        fontFamily: 'amaranth',
                      ),
                    ),
                    if (showInfoIcon)
                      Padding(
                        padding: const EdgeInsets.only(left: 4),
                        child: GestureDetector(
                          onTap: () {
                            AppUtils().showDialog('top_up_info_title'.tr,
                                'top_up_info_content'.tr);
                          },
                          child: const Icon(
                            Icons.info_outline,
                            size: 20,
                            color: AppColors.greyColor,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              AutoSizeText(
                amount,
                minFontSize: 16,
                maxFontSize: 18,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'amaranth',
                    color: AppColors.blackColor),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
