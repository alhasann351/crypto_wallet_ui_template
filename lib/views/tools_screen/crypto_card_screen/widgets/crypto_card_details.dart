import 'package:auto_size_text/auto_size_text.dart';
import 'package:crypto_wallet_ui_template/resources/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CryptoCardDetails extends StatelessWidget {
  const CryptoCardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final fontSize = MediaQuery.of(context).size.width * 0.025;

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        elevation: 10,
        shadowColor: AppColors.cardColor2,
        color: AppColors.cardColor2.withValues(alpha: 0.3),
        clipBehavior: Clip.antiAlias,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    'assets/images/card.webp',
                    fit: BoxFit.cover,
                    height: 50,
                    width: 50,
                  ),
                  Image.asset(
                    'assets/images/visa.webp',
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
              AutoSizeText(
                'card_details_1'.tr,
                minFontSize: 16,
                maxFontSize: 18,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                  fontSize: fontSize,
                  fontFamily: 'amaranth',
                  color: AppColors.whiteColor,
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 10,
                children: [
                  Image.asset(
                    'assets/icons/wallet.png',
                    height: 30,
                    width: 30,
                  ),
                  AutoSizeText(
                    'card_details_2'.tr,
                    minFontSize: 15,
                    maxFontSize: 16,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: fontSize,
                      fontFamily: 'amaranth',
                      fontWeight: FontWeight.bold,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 10,
                children: [
                  Image.asset(
                    'assets/icons/approved.png',
                    height: 30,
                    width: 30,
                  ),
                  AutoSizeText(
                    'card_details_3'.tr,
                    minFontSize: 15,
                    maxFontSize: 16,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: fontSize,
                      fontFamily: 'amaranth',
                      fontWeight: FontWeight.bold,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 10,
                children: [
                  Image.asset(
                    'assets/icons/top_up.png',
                    height: 30,
                    width: 30,
                  ),
                  AutoSizeText(
                    'card_details_4'.tr,
                    minFontSize: 15,
                    maxFontSize: 16,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: fontSize,
                      fontFamily: 'amaranth',
                      fontWeight: FontWeight.bold,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
