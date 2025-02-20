import 'package:auto_size_text/auto_size_text.dart';
import 'package:crypto_wallet_ui_template/resources/components/custom_appbar.dart';
import 'package:crypto_wallet_ui_template/resources/routes/routes_name.dart';
import 'package:crypto_wallet_ui_template/views/tools_screen/payment_button_screen/payment_button_screen.dart';
import 'package:crypto_wallet_ui_template/views/tools_screen/payment_request_screen/payment_request_screen.dart';
import 'package:crypto_wallet_ui_template/views/tools_screen/tip_jar_screen/tip_jar_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/colors/app_colors.dart';
import 'airdrop_arena_screen/airdrop_arena_screen.dart';
import 'batch_payments_screen/batch_payments_screen.dart';
import 'buy_sell_screen/buy_sell_screen.dart';
import 'crypto_card_screen/crypto_card_screen.dart';
import 'crypto_giveaway_screen/crypto_giveaway_screen.dart';
import 'easy_earning_screen/easy_earning_screen.dart';
import 'gift_card_screen/gift_cards_screen.dart';
import 'loans_screen/loans_screen.dart';
import 'market_place_screen/market_place_screen.dart';
import 'mobile_recharge_screen/mobile_recharge_screen.dart';

class ToolsScreen extends StatefulWidget {
  const ToolsScreen({super.key});

  @override
  State<ToolsScreen> createState() => _ToolsScreenState();
}

class _ToolsScreenState extends State<ToolsScreen> {
  @override
  Widget build(BuildContext context) {
    final fontSize = MediaQuery.of(context).size.width * 0.025;
    final toolsTitle = [
      'buy_sell'.tr,
      'crypto_card'.tr,
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
      'buy_sell_des'.tr,
      'crypto_card_des'.tr,
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
    final toolsScreens = [
      const BuySellScreen(),
      const CryptoCardScreen(),
      const EasyEarningScreen(),
      const GiftCardScreen(),
      const MarketPlaceScreen(),
      const LoansScreen(),
      const MobileRechargeScreen(),
      const BatchPaymentsScreen(),
      const TipJarScreen(),
      const PaymentRequestScreen(),
      const PaymentButtonScreen(),
      const AirdropArenaScreen(),
      const CryptoGiveawayScreen(),
    ];

    return SafeArea(
      child: Column(
        children: [
          CustomAppbar(backButton: const SizedBox(), title: 'nav_tools'.tr),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: toolsTitle.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: SizedBox(
                    height: 80,
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed(
                          RoutesName.allToolsScreen,
                          arguments: {'allToolsScreen': toolsScreens[index]},
                        );
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
                                      toolsTitle[index],
                                      minFontSize: 16,
                                      maxFontSize: 18,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: fontSize,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'amaranth',
                                        color: AppColors.blackColor,
                                      ),
                                    ),
                                    AutoSizeText(
                                      toolsDes[index],
                                      minFontSize: 14,
                                      maxFontSize: 16,
                                      overflow: TextOverflow.ellipsis,
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
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
