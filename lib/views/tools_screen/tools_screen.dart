import 'package:auto_size_text/auto_size_text.dart';
import 'package:crypto_wallet_ui_template/resources/routes/routes_name.dart';
import 'package:crypto_wallet_ui_template/view_models/controllers/crypto_card_select_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/colors/app_colors.dart';
import '../../../view_models/controllers/tools_controllers.dart';
import '../../responsive_widget.dart';
import '../../view_models/controllers/easy_earning_history controller.dart';
import '../../view_models/controllers/payout_account_buy_sell_history_controller.dart';

class ToolsScreen extends StatefulWidget {
  const ToolsScreen({super.key});

  @override
  State<ToolsScreen> createState() => _ToolsScreenState();
}

class _ToolsScreenState extends State<ToolsScreen> {
  final toolsController = Get.put(ToolsController());
  final cryptoCardSelectController = Get.put(CryptoCardSelectController());
  final payoutAccountBuySellHistoryController =
      Get.put(PayoutAccountBuySellHistoryController());
  final easyEarningHistoryController = Get.put(EasyEarningHistoryController());

  @override
  Widget build(BuildContext context) {
    final fontSize = MediaQuery.of(context).size.width * 0.025;
    final isMobile = ResponsiveWidget.isMobile(context);
    final isDesktop = ResponsiveWidget.isDesktop(context);
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
      AppColors.cardColor2,
      AppColors.cardColor3,
    ];

    return Padding(
      padding: const EdgeInsets.all(10),
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
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: toolsTitle.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: SizedBox(
                height: 80,
                child: GestureDetector(
                  onTap: () {
                    isMobile
                        ? Get.toNamed(
                            RoutesName.showAllToolsScreenMobile,
                            arguments: {
                              'showAllToolsScreenMobile':
                                  toolsController.screens[index]
                            },
                          )
                        : toolsController
                            .selectScreens(toolsController.screens[index]);
                    isDesktop
                        ? cryptoCardSelectController.clearSelection()
                        : const SizedBox();
                    isDesktop
                        ? payoutAccountBuySellHistoryController.resetToDefault()
                        : const SizedBox();
                    isDesktop
                        ? easyEarningHistoryController.resetToDefault()
                        : const SizedBox();
                  },
                  child: Card(
                    color: cardColors[index],
                    shadowColor: cardColors[index],
                    elevation: 10,
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
                                    color: AppColors.whiteColor,
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
                                    color: AppColors.whiteColor,
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
                              color: AppColors.whiteColor,
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
        ],
      ),
    );
  }
}
