import 'package:auto_size_text/auto_size_text.dart';
import 'package:crypto_wallet_ui_template/resources/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/components/custom_round_button.dart';
import '../../../../utils/app_utils.dart';
import '../../../../view_models/controllers/receive_currency_dropdown_items_controller.dart';
import '../../../../view_models/controllers/theme_controller.dart';

class BuyCurrency extends StatelessWidget {
  const BuyCurrency({super.key});

  @override
  Widget build(BuildContext context) {
    final fontSize = MediaQuery.of(context).size.width * 0.025;
    final receiveCurrencyDropdownItemsController =
        Get.put(ReceiveCurrencyDropdownItemsController());
    final themeController = Get.put(ThemeController());

    return Column(
      children: [
        ListView(
          shrinkWrap: true,
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 8),
                        AutoSizeText(
                          'you_pay'.tr,
                          minFontSize: 14,
                          maxFontSize: 16,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontSize: fontSize,
                            fontFamily: 'amaranth',
                          ),
                        ),
                        TextFormField(
                          cursorColor: AppColors.greyColor,
                          keyboardType: TextInputType.number,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColors.blackColor,
                          ),
                          decoration: InputDecoration(
                            hintText: 'enter_amount'.tr,
                            hintStyle: const TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppColors.greyColor,
                              fontFamily: 'amaranth',
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Obx(
                        () => DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                            value: receiveCurrencyDropdownItemsController
                                .selectedCurrency.value,
                            icon: const Icon(Icons.arrow_drop_down,
                                color: AppColors.blackColor),
                            style: const TextStyle(
                                fontFamily: 'amaranth',
                                fontSize: 14,
                                color: AppColors.blackColor),
                            dropdownColor: AppColors.whiteColor,
                            iconEnabledColor: AppColors.blackColor,
                            onChanged: (String? newValue) {
                              receiveCurrencyDropdownItemsController
                                  .selectedCurrency.value = newValue!;
                            },
                            items: receiveCurrencyDropdownItemsController.items
                                .map<DropdownMenuItem<String>>(
                              (currency) {
                                return DropdownMenuItem<String>(
                                  value: currency.text,
                                  child: Row(
                                    children: [
                                      Image.asset(currency.image,
                                          width: 20, height: 20),
                                      const SizedBox(width: 10),
                                      Text(
                                        currency.text,
                                        style: const TextStyle(
                                            fontFamily: 'amaranth',
                                            fontSize: 14,
                                            color: AppColors.blackColor),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ).toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 8),
                        AutoSizeText(
                          'you_receive'.tr,
                          minFontSize: 14,
                          maxFontSize: 16,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontSize: fontSize,
                            fontFamily: 'amaranth',
                          ),
                        ),
                        TextFormField(
                          cursorColor: AppColors.greyColor,
                          keyboardType: TextInputType.number,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColors.blackColor,
                          ),
                          decoration: InputDecoration(
                            hintText: 'enter_amount'.tr,
                            hintStyle: const TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppColors.greyColor,
                              fontFamily: 'amaranth',
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/dollar.png',
                          width: 25, height: 25),
                      const SizedBox(width: 10),
                      const Text(
                        'USDT',
                        style: TextStyle(
                            fontFamily: 'amaranth',
                            fontSize: 14,
                            color: AppColors.blackColor),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.swap_horiz_rounded,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '1.00 USD',
                  style: TextStyle(
                      fontFamily: 'amaranth',
                      fontSize: 14,
                      overflow: TextOverflow.ellipsis),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.drag_handle_rounded,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '1.00 USDT',
                  style: TextStyle(
                      fontFamily: 'amaranth',
                      fontSize: 14,
                      overflow: TextOverflow.ellipsis),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 200,
          child: CustomRoundButton(
            buttonName: 'buy'.tr,
            backgroundColor: themeController.isDarkMode.value
                ? AppColors.brightCornflowerBlueColor
                : AppColors.cryptoCardColor,
            textStyle: const TextStyle(
              color: AppColors.whiteColor,
              fontFamily: 'amaranth',
              fontWeight: FontWeight.bold,
            ),
            voidCallback: () {
              AppUtils()
                  .showDialog('buy_success_title'.tr, 'buy_success_content'.tr);
            },
          ),
        ),
      ],
    );
  }
}
