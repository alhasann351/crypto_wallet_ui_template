import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resources/colors/app_colors.dart';

class MoreTools extends StatelessWidget {
  const MoreTools({super.key});

  @override
  Widget build(BuildContext context) {
    final fontSize = MediaQuery.of(context).size.width * 0.025;
    final toolsTitle = [
      'simple_earn_title'.tr,
      'gift_cards_title'.tr,
      'marketplace_title'.tr,
      'loan_title'.tr,
      'mobile_top_up_title'.tr,
      'bulk_payment_title'.tr,
      'tip_box_title'.tr,
      'request_title'.tr,
      'payment_button_title'.tr,
      'airdrop_arena_title'.tr,
      'giveaway_title'.tr,
    ];
    final toolsDes = [
      'simple_earn_des'.tr,
      'gift_card_des'.tr,
      'marketplace_des'.tr,
      'loan_des'.tr,
      'mobile_top_up_des'.tr,
      'bulk_payment_des'.tr,
      'tip_box_des'.tr,
      'request_des'.tr,
      'payment_button_des'.tr,
      'airdrop_arena_des'.tr,
      'giveaway_des'.tr,
    ];
    final cardColors = [
      AppColors.cardColor1,
      AppColors.cardColor2,
      AppColors.cardColor3,
      AppColors.cardColor4,
      AppColors.cardColor5,
      AppColors.cardColor1,
      AppColors.cardColor2,
      AppColors.cardColor3,
      AppColors.cardColor4,
      AppColors.cardColor5,
      AppColors.cardColor1,
    ];

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        spacing: 10,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: AutoSizeText(
              'more'.tr,
              minFontSize: 18,
              maxFontSize: 22,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                fontFamily: 'amaranth',
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: toolsTitle.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Expanded(
                child: Card(
                  color: cardColors[index],
                  shadowColor: cardColors[index],
                  elevation: 10,
                  clipBehavior: Clip.antiAlias,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        top: 0,
                        right: 0,
                        bottom: 0,
                        left: 0,
                        child: AutoSizeText(
                          toolsTitle[index],
                          minFontSize: 16,
                          maxFontSize: 20,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: fontSize,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'amaranth',
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 15,
                        right: 0,
                        bottom: 0,
                        left: 0,
                        child: AutoSizeText(
                          toolsDes[index],
                          minFontSize: 14,
                          maxFontSize: 18,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: fontSize,
                            fontFamily: 'amaranth',
                            color: AppColors.whiteColor,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 25,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ],
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
