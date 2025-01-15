import 'dart:async';

import 'package:get/get.dart';

import '../../resources/routes/routes_name.dart';
import '../controllers/onboarding_page_controller.dart';

class OnboardingService {
  final onboardingPageController = Get.put(OnboardingPageController());

  Future<void> isOnboardingScreen() async {
    bool isOnboardingScreenCompleted =
        await onboardingPageController.isOnboardingScreenCompleted();
    if (isOnboardingScreenCompleted) {
      Timer(const Duration(seconds: 4),
          () => Get.offAllNamed(RoutesName.homeScreen));
    } else {
      Timer(const Duration(seconds: 4),
          () => Get.offAllNamed(RoutesName.onboardingScreen));
    }
  }
}
