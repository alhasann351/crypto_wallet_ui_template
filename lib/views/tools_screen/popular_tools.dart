import 'package:auto_size_text/auto_size_text.dart';
import 'package:crypto_wallet_ui_template/resources/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopularTools extends StatelessWidget {
  const PopularTools({super.key});

  @override
  Widget build(BuildContext context) {
    final fontSize = MediaQuery.of(context).size.width * 0.025;

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        spacing: 10,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: AutoSizeText(
              'popular'.tr,
              minFontSize: 18,
              maxFontSize: 22,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                fontFamily: 'amaranth',
              ),
            ),
          ),
          Row(
            spacing: 10,
            children: [
              Expanded(
                child: SizedBox(
                  height: 150,
                  child: Card(
                    elevation: 10,
                    color: AppColors.cardColor1,
                    shadowColor: AppColors.cardColor1,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 10, bottom: 0, left: 10, right: 10),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Image.asset(
                              'assets/icons/buy_sell_icon.png',
                              width: 50,
                              height: 50,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: AutoSizeText(
                              'buy_sell'.tr,
                              minFontSize: 16,
                              maxFontSize: 20,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                fontSize: fontSize,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'amaranth',
                                color: AppColors.whiteColor,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: AutoSizeText(
                              'buy_sell_des'.tr,
                              minFontSize: 14,
                              maxFontSize: 16,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                fontSize: fontSize,
                                fontFamily: 'amaranth',
                                color: AppColors.whiteColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SizedBox(
                  height: 150,
                  child: Card(
                    elevation: 10,
                    color: AppColors.cardColor2,
                    shadowColor: AppColors.cardColor2,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 10, bottom: 0, left: 10, right: 10),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Image.asset(
                              'assets/icons/crypto_card_icon.png',
                              width: 50,
                              height: 50,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: AutoSizeText(
                              'crypto_card'.tr,
                              minFontSize: 16,
                              maxFontSize: 20,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                fontSize: fontSize,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'amaranth',
                                color: AppColors.whiteColor,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: AutoSizeText(
                              'crypto_card_des'.tr,
                              minFontSize: 14,
                              maxFontSize: 16,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                fontSize: fontSize,
                                fontFamily: 'amaranth',
                                color: AppColors.whiteColor,
                              ),
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
        ],
      ),
    );
  }
}
