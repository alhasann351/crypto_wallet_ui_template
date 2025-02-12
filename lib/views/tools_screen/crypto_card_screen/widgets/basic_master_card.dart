import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/colors/app_colors.dart';
import '../../../../resources/components/back_button_design.dart';
import '../../../../resources/components/custom_appbar.dart';
import '../../../../responsive_widget.dart';
import 'apply_crypto_card_button.dart';
import 'card_fees_details.dart';
import 'native_currency_card.dart';

class BasicMasterCard extends StatelessWidget {
  const BasicMasterCard({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveWidget.isMobile(context);
    final fontSize = MediaQuery.of(context).size.width * 0.025;

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CustomAppbar(
              backButton:
                  isMobile ? const BackButtonDesign() : const SizedBox(),
              title: 'crypto_card_title_2'.tr,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    SizedBox(
                      height: 150,
                      child: Card(
                        elevation: 10,
                        shadowColor: AppColors.cryptoCardColor,
                        color: AppColors.cryptoCardColor,
                        clipBehavior: Clip.antiAlias,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Stack(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    'assets/images/card.webp',
                                    fit: BoxFit.cover,
                                    height: 50,
                                    width: 50,
                                  ),
                                  Image.asset(
                                    'assets/images/dollar.png',
                                    fit: BoxFit.cover,
                                    height: 35,
                                    width: 35,
                                  ),
                                  Image.asset(
                                    'assets/images/cryptocurrency.webp',
                                    fit: BoxFit.cover,
                                    height: 35,
                                    width: 35,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: AutoSizeText(
                                  'Virtual Card',
                                  minFontSize: 16,
                                  maxFontSize: 18,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontSize: fontSize,
                                    fontFamily: 'amaranth',
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: AutoSizeText(
                                  'Basic MASTER Card',
                                  minFontSize: 16,
                                  maxFontSize: 18,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: TextStyle(
                                    fontSize: fontSize,
                                    fontFamily: 'amaranth',
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Align(
                      alignment: Alignment.topLeft,
                      child: AutoSizeText(
                        'activation_card'.tr,
                        minFontSize: 18,
                        maxFontSize: 20,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: fontSize,
                          fontFamily: 'amaranth',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const CardFeesDetails(),
                    const SizedBox(height: 15),
                    Align(
                      alignment: Alignment.topLeft,
                      child: AutoSizeText(
                        'native_currency'.tr,
                        minFontSize: 18,
                        maxFontSize: 20,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: fontSize,
                          fontFamily: 'amaranth',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const NativeCurrencyCard(),
                  ],
                ),
              ),
            ),
            const ApplyCryptoCardButton(),
          ],
        ),
      ),
    );
  }
}
