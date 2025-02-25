import 'package:get/get.dart';

class SelectPlanController extends GetxController {
  RxInt selectedPlan = 0.obs;

  void updateSelectedPlan(int index) {
    selectedPlan.value = index;
  }
}
