import 'package:crypto_wallet_ui_template/resources/localization/languages.dart';
import 'package:crypto_wallet_ui_template/resources/routes/app_routes.dart';
import 'package:crypto_wallet_ui_template/resources/themes/dark_theme.dart';
import 'package:crypto_wallet_ui_template/resources/themes/light_theme.dart';
import 'package:crypto_wallet_ui_template/view_models/controllers/theme_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: LightTheme().lightTheme,
      darkTheme: DarkTheme().darkTheme,
      themeMode: themeController.themeMode,
      translations: Languages(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
      getPages: AppRoutes.appRoutes(),
    );
  }
}
