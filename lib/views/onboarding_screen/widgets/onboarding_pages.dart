import 'package:auto_size_text/auto_size_text.dart';
import 'package:crypto_wallet_ui_template/resources/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../resources/routes/routes_name.dart';
import '../../../view_models/controllers/onboarding_page_controller.dart';
import '../../../view_models/controllers/theme_controller.dart';
import 'onboarding_pages/onboarding_page_four.dart';
import 'onboarding_pages/onboarding_page_one.dart';
import 'onboarding_pages/onboarding_page_three.dart';
import 'onboarding_pages/onboarding_page_two.dart';

class OnboardingPages extends StatelessWidget {
  const OnboardingPages({super.key});

  @override
  Widget build(BuildContext context) {
    final fontSize = MediaQuery.of(context).size.width * 0.025;
    final onboardingPageController = Get.put(OnboardingPageController());
    final themeController = Get.put(ThemeController());

    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () => PageView(
              controller: onboardingPageController.pageController.value,
              onPageChanged: (index) {
                onboardingPageController.currentPageIndex.value = index;
                if (index == 3) {
                  onboardingPageController.onboardingScreenSkip.value =
                      'onboarding_screen_finish_text'.tr;
                } else {
                  onboardingPageController.onboardingScreenSkip.value =
                      'onboarding_screen_skip_text'.tr;
                }
              },
              children: const [
                OnboardingPageOne(),
                OnboardingPageTwo(),
                OnboardingPageThree(),
                OnboardingPageFour(),
              ],
            ),
          ),
          Obx(
            () => Container(
              alignment: const Alignment(0, 0.8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.offAllNamed(RoutesName.mainScreensShow);
                      onboardingPageController.completeOnboardingScreen();
                    },
                    child: AutoSizeText(
                      onboardingPageController.onboardingScreenSkip.value,
                      minFontSize: 18,
                      maxFontSize: 22,
                      style: TextStyle(
                        fontSize: fontSize,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'amaranth',
                      ),
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: onboardingPageController.pageController.value,
                    count: 4,
                    axisDirection: Axis.horizontal,
                    effect: WormEffect(
                      activeDotColor: themeController.isDarkMode.value
                          ? AppColors.lightColor
                          : AppColors.darkColor,
                    ),
                  ),
                  onboardingPageController.currentPageIndex.value == 3
                      ? const SizedBox(
                          width: 10,
                        )
                      : GestureDetector(
                          onTap: () {
                            onboardingPageController.pageController.value
                                .nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.decelerate,
                            );
                          },
                          child: AutoSizeText(
                            'onboarding_screen_next_text'.tr,
                            minFontSize: 18,
                            maxFontSize: 22,
                            style: TextStyle(
                              fontSize: fontSize,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'amaranth',
                            ),
                          ),
                        ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
