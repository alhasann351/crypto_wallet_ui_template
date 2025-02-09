import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/colors/app_colors.dart';
import '../../../../view_models/controllers/receive_currency_dropdown_items_controller.dart';

class AccountsList extends StatelessWidget {
  const AccountsList({super.key});

  @override
  Widget build(BuildContext context) {
    final fontSize = MediaQuery.of(context).size.width * 0.025;
    final receiveCurrencyDropdownItemsController =
        Get.put(ReceiveCurrencyDropdownItemsController());
    final currencyName = [
      'USD',
      'EUR',
      'JPY',
      'BDT',
      'IND',
    ];
    final bankName = [
      'Demo bank name',
      'Demo bank name',
      'Demo bank name',
      'Demo bank name',
      'Demo bank name',
    ];
    final accountNumber = [
      '123456789',
      '123456789',
      '123456789',
      '123456789',
      '123456789',
    ];
    final recipientName = [
      'Demo recipient name',
      'Demo recipient name',
      'Demo recipient name',
      'Demo recipient name',
      'Demo recipient name',
    ];

    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: ListView.builder(
        itemCount: currencyName.length,
        itemBuilder: (context, index) => SizedBox(
          child: GestureDetector(
            onTap: () {
              final bankNameTextEditingController =
                  TextEditingController(text: bankName[index]);
              final accountNumberTextEditingController =
                  TextEditingController(text: accountNumber[index]);
              final recipientNameTextEditingController =
                  TextEditingController(text: recipientName[index]);
              Get.dialog(Dialog(
                backgroundColor: AppColors.whiteColor,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    width: 300,
                    height: 550,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AutoSizeText(
                            'add_payout_account'.tr,
                            minFontSize: 16,
                            maxFontSize: 20,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.bold,
                              fontSize: fontSize,
                              fontFamily: 'amaranth',
                            ),
                          ),
                          const SizedBox(height: 15),
                          Align(
                            alignment: Alignment.topLeft,
                            child: AutoSizeText(
                              'receive_currency'.tr,
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
                          ),
                          const SizedBox(height: 8),
                          Obx(
                            () => DropdownButtonFormField(
                              style: const TextStyle(
                                  fontFamily: 'amaranth',
                                  fontSize: 14,
                                  color: AppColors.blackColor),
                              dropdownColor: AppColors.whiteColor,
                              iconEnabledColor: AppColors.blackColor,
                              value: receiveCurrencyDropdownItemsController
                                  .selectedItem.value,
                              hint: Text(
                                'select_currency'.tr,
                                style: const TextStyle(
                                  fontFamily: 'amaranth',
                                  fontSize: 14,
                                  color: AppColors.greyColor,
                                ),
                              ),
                              decoration: const InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.blackColor)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: AppColors.blackColor)),
                              ),
                              items: receiveCurrencyDropdownItemsController
                                  .items
                                  .map(
                                    (item) => DropdownMenuItem(
                                      value: item,
                                      child: Row(
                                        children: [
                                          Image.asset(item.image,
                                              width: 30, height: 30),
                                          const SizedBox(width: 10),
                                          Text(
                                            item.text,
                                            style: const TextStyle(
                                                fontFamily: 'amaranth',
                                                fontSize: 14,
                                                color: AppColors.blackColor),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                  .toList(),
                              onChanged: receiveCurrencyDropdownItemsController
                                  .setSelected,
                              validator: (value) =>
                                  value == null ? 'select_option'.tr : null,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Align(
                            alignment: Alignment.topLeft,
                            child: AutoSizeText(
                              'bank_name'.tr,
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
                          ),
                          const SizedBox(height: 8),
                          TextFormField(
                            controller: bankNameTextEditingController,
                            style: const TextStyle(
                                fontFamily: 'amaranth',
                                fontSize: 14,
                                color: AppColors.blackColor),
                            decoration: InputDecoration(
                              hintText: 'bank_name'.tr,
                              hintStyle: const TextStyle(
                                fontFamily: 'amaranth',
                                fontSize: 14,
                                color: AppColors.greyColor,
                              ),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColors.blackColor)),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColors.blackColor)),
                            ),
                          ),
                          const SizedBox(height: 15),
                          Align(
                            alignment: Alignment.topLeft,
                            child: AutoSizeText(
                              'recipient_name'.tr,
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
                          ),
                          const SizedBox(height: 8),
                          TextFormField(
                            controller: recipientNameTextEditingController,
                            style: const TextStyle(
                                fontFamily: 'amaranth',
                                fontSize: 14,
                                color: AppColors.blackColor),
                            decoration: InputDecoration(
                              hintText: 'recipient_name'.tr,
                              hintStyle: const TextStyle(
                                fontFamily: 'amaranth',
                                fontSize: 14,
                                color: AppColors.greyColor,
                              ),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColors.blackColor)),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColors.blackColor)),
                            ),
                          ),
                          const SizedBox(height: 15),
                          Align(
                            alignment: Alignment.topLeft,
                            child: AutoSizeText(
                              'account_number'.tr,
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
                          ),
                          const SizedBox(height: 8),
                          TextFormField(
                            controller: accountNumberTextEditingController,
                            style: const TextStyle(
                                fontFamily: 'amaranth',
                                fontSize: 14,
                                color: AppColors.blackColor),
                            decoration: InputDecoration(
                              hintText: 'account_number'.tr,
                              hintStyle: const TextStyle(
                                fontFamily: 'amaranth',
                                fontSize: 14,
                                color: AppColors.greyColor,
                              ),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColors.blackColor)),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColors.blackColor)),
                            ),
                          ),
                          const SizedBox(height: 15),
                          Align(
                            alignment: Alignment.topLeft,
                            child: AutoSizeText(
                              'note'.tr,
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
                          ),
                          const SizedBox(height: 8),
                          TextFormField(
                            style: const TextStyle(
                                fontFamily: 'amaranth',
                                fontSize: 14,
                                color: AppColors.blackColor),
                            decoration: InputDecoration(
                              hintText: 'note'.tr,
                              hintStyle: const TextStyle(
                                fontFamily: 'amaranth',
                                fontSize: 14,
                                color: AppColors.greyColor,
                              ),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColors.blackColor)),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: AppColors.blackColor)),
                            ),
                          ),
                          const SizedBox(height: 15),
                          Row(
                            spacing: 10,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Get.back();
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColors.redColor),
                                child: AutoSizeText(
                                  'delete'.tr,
                                  minFontSize: 14,
                                  maxFontSize: 16,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextStyle(
                                    color: AppColors.whiteColor,
                                    fontSize: fontSize,
                                    fontFamily: 'amaranth',
                                  ),
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Get.back();
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColors.greenColor),
                                child: AutoSizeText(
                                  'save'.tr,
                                  minFontSize: 14,
                                  maxFontSize: 16,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  style: TextStyle(
                                    color: AppColors.whiteColor,
                                    fontSize: fontSize,
                                    fontFamily: 'amaranth',
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ));
            },
            child: Card(
              color: AppColors.whiteColor,
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 10, right: 10, bottom: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        AutoSizeText(
                          'Currency: ',
                          textAlign: TextAlign.center,
                          minFontSize: 14,
                          maxFontSize: 18,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: fontSize,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'amaranth',
                            color: AppColors.blackColor,
                          ),
                        ),
                        Expanded(
                          child: AutoSizeText(
                            currencyName[index],
                            textAlign: TextAlign.start,
                            minFontSize: 14,
                            maxFontSize: 14,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: fontSize,
                              fontFamily: 'amaranth',
                              color: AppColors.greyColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        AutoSizeText(
                          'Bank name: ',
                          textAlign: TextAlign.center,
                          minFontSize: 14,
                          maxFontSize: 18,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: fontSize,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'amaranth',
                            color: AppColors.blackColor,
                          ),
                        ),
                        Expanded(
                          child: AutoSizeText(
                            bankName[index],
                            textAlign: TextAlign.start,
                            minFontSize: 14,
                            maxFontSize: 14,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: fontSize,
                              fontFamily: 'amaranth',
                              color: AppColors.greyColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        AutoSizeText(
                          'Account number: ',
                          textAlign: TextAlign.center,
                          minFontSize: 14,
                          maxFontSize: 18,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: fontSize,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'amaranth',
                            color: AppColors.blackColor,
                          ),
                        ),
                        Expanded(
                          child: AutoSizeText(
                            accountNumber[index],
                            textAlign: TextAlign.start,
                            minFontSize: 14,
                            maxFontSize: 14,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: fontSize,
                              fontFamily: 'amaranth',
                              color: AppColors.greyColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        AutoSizeText(
                          'Recipient name: ',
                          textAlign: TextAlign.center,
                          minFontSize: 14,
                          maxFontSize: 18,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: fontSize,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'amaranth',
                            color: AppColors.blackColor,
                          ),
                        ),
                        Expanded(
                          child: AutoSizeText(
                            recipientName[index],
                            textAlign: TextAlign.start,
                            minFontSize: 14,
                            maxFontSize: 14,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: fontSize,
                              fontFamily: 'amaranth',
                              color: AppColors.greyColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
