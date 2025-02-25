import 'package:crypto_wallet_ui_template/views/tools_screen/easy_earning_screen/widgets/deposit_amount_text_form_field.dart';
import 'package:crypto_wallet_ui_template/views/tools_screen/easy_earning_screen/widgets/earn_now_button.dart';
import 'package:crypto_wallet_ui_template/views/tools_screen/easy_earning_screen/widgets/earning_agreement.dart';
import 'package:crypto_wallet_ui_template/views/tools_screen/easy_earning_screen/widgets/estimate_earn.dart';
import 'package:crypto_wallet_ui_template/views/tools_screen/easy_earning_screen/widgets/select_plan.dart';
import 'package:crypto_wallet_ui_template/views/tools_screen/easy_earning_screen/widgets/start_earning_title_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/colors/app_colors.dart';
import '../../../resources/components/back_button_design.dart';
import '../../../resources/components/custom_appbar.dart';

class EasyEarningScreen extends StatelessWidget {
  const EasyEarningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CustomAppbar(
                backButton: const BackButtonDesign(), title: 'easy_earning'.tr),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    const StartEarningTitleBar(),
                    const SizedBox(
                      height: 20,
                    ),
                    Card(
                      color: AppColors.whiteColor.withValues(alpha: 0.2),
                      child: Column(
                        children: [
                          SelectPlan(),
                          const DepositAmountTextFormField(),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Card(
                      color: AppColors.whiteColor.withValues(alpha: 0.2),
                      child: const EstimateEarn(),
                    ),
                  ],
                ),
              ),
            ),
            const EarningAgreement(),
            const EarnNowButton(),
          ],
        ),
      ),
    );
  }
}
