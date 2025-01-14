import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends GetxController {
  static const key = 'isDarkMode';
  RxBool isDarkMode = false.obs;

  @override
  void onInit() {
    loadTheme();
    themeMode;
    super.onInit();
  }

  Future<void> switchTheme() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    isDarkMode.value = !isDarkMode.value;
    sharedPreferences.setBool(key, isDarkMode.value);
  }

  Future<void> loadTheme() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    isDarkMode.value = sharedPreferences.getBool(key) ?? false;
  }

  ThemeMode get themeMode =>
      isDarkMode.value ? ThemeMode.dark : ThemeMode.light;
}
