import 'package:crypto_wallet_ui_template/page_scroll_behavior.dart';
import 'package:crypto_wallet_ui_template/resources/localization/languages.dart';
import 'package:crypto_wallet_ui_template/resources/routes/app_routes.dart';
import 'package:crypto_wallet_ui_template/resources/themes/dark_theme.dart';
import 'package:crypto_wallet_ui_template/resources/themes/light_theme.dart';
import 'package:crypto_wallet_ui_template/view_models/controllers/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        scrollBehavior: PageScrollBehavior(),
        theme: LightTheme().lightTheme,
        darkTheme: DarkTheme().darkTheme,
        themeMode: themeController.themeMode,
        translations: Languages(),
        locale: const Locale('en', 'US'),
        fallbackLocale: const Locale('en', 'US'),
        getPages: AppRoutes.appRoutes(),
      ),
    );
  }
}
