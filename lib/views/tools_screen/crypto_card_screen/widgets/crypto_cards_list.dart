import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/colors/app_colors.dart';
import '../../../../resources/routes/routes_name.dart';
import '../../../../responsive_widget.dart';
import '../../../../view_models/controllers/crypto_card_select_controller.dart';

class CryptoCardsList extends StatelessWidget {
  const CryptoCardsList({super.key});

  @override
  Widget build(BuildContext context) {
    final fontSize = MediaQuery.of(context).size.width * 0.025;
    final cryptoCardSelectController = Get.put(CryptoCardSelectController());
    final isMobile = ResponsiveWidget.isMobile(context);
    final isTablet = ResponsiveWidget.isTablet(context);
    final isDesktop = ResponsiveWidget.isDesktop(context);
    final cryptoCardTitle = [
      'crypto_card_title_1'.tr,
      'crypto_card_title_2'.tr,
      'crypto_card_title_3'.tr,
      'crypto_card_title_4'.tr,
    ];
    final cryptoCardDes = [
      'crypto_card_des_1'.tr,
      'crypto_card_des_2'.tr,
      'crypto_card_des_3'.tr,
      'crypto_card_des_4'.tr,
    ];

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: cryptoCardTitle.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: SizedBox(
            height: 80,
            child: GestureDetector(
              onTap: () {
                if (isMobile || isTablet) {
                  Get.toNamed(
                    RoutesName.showAllCryptoCardApplyScreenMobileTablet,
                    arguments: {
                      'showAllCryptoCardApplyScreenMobileTablet':
                          cryptoCardSelectController.screens[index]
                    },
                  );
                } else {
                  cryptoCardSelectController
                      .selectScreens(cryptoCardSelectController.screens[index]);
                }
              },
              child: Card(
                color: AppColors.whiteColor,
                clipBehavior: Clip.antiAlias,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText(
                              cryptoCardTitle[index],
                              minFontSize: 16,
                              maxFontSize: 18,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: fontSize,
                                fontFamily: 'amaranth',
                                fontWeight: FontWeight.bold,
                                color: AppColors.blackColor,
                              ),
                            ),
                            AutoSizeText(
                              cryptoCardDes[index],
                              minFontSize: 14,
                              maxFontSize: 16,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: fontSize,
                                fontFamily: 'amaranth',
                                color: AppColors.blackColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Align(
                        alignment: Alignment.centerRight,
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          size: 20,
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
      },
    );
  }
}
