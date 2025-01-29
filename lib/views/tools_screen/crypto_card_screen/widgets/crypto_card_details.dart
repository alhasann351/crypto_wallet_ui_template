import 'package:crypto_wallet_ui_template/resources/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../view_models/controllers/theme_controller.dart';

class CryptoCardDetails extends StatelessWidget {
  const CryptoCardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final fontSize = MediaQuery.of(context).size.width * 0.025;
    final themeController = Get.put(ThemeController());

    return SizedBox(
        height: 400,
        child: Card(
          elevation: 10,
          shadowColor: themeController.isDarkMode.value
              ? AppColors.brightCornflowerBlueColor
              : AppColors.greyColor,
          clipBehavior: Clip.antiAlias,
          child: Column(
            children: [
              Row(
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
              /*AutoSizeText(
                'USDT',
                minFontSize: 20,
                maxFontSize: 22,
                style: TextStyle(
                  fontSize: fontSize,
                  fontFamily: 'amaranth',
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),*/
            ],
          ),
        ));
  }
}
