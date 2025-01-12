import 'package:crypto_wallet_ui_template/resources/localization/languages.dart';
import 'package:crypto_wallet_ui_template/resources/routes/app_routes.dart';
import 'package:crypto_wallet_ui_template/resources/themes/dark_theme.dart';
import 'package:crypto_wallet_ui_template/resources/themes/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: LightTheme().lightTheme,
      darkTheme: DarkTheme().darkTheme,
      themeMode: ThemeMode.system,
      translations: Languages(),
      locale: const Locale('bn', 'BD'),
      fallbackLocale: const Locale('en', 'US'),
      getPages: AppRoutes.appRoutes(),
    );
  }
}
