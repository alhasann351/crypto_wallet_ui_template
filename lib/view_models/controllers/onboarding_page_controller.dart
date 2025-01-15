import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingPageController extends GetxController {
  final pageController = PageController().obs;
  RxString onboardingScreenSkip = 'onboarding_screen_skip_text'.tr.obs;
  RxInt currentPageIndex = 0.obs;
  static const onboardingScreenKay = 'onboardingScreenCompleted';

  Future<void> completeOnboardingScreen() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setBool(onboardingScreenKay, true);
  }

  Future<bool> isOnboardingScreenCompleted() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(onboardingScreenKay) ?? false;
  }
}
