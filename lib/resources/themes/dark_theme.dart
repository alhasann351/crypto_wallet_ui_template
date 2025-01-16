import 'package:crypto_wallet_ui_template/resources/colors/app_colors.dart';
import 'package:flutter/material.dart';

class DarkTheme {
  final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.darkColor,
    iconTheme: const IconThemeData(color: AppColors.whiteColor),
    appBarTheme: const AppBarTheme(backgroundColor: AppColors.darkColor),
    //drawerTheme: const DrawerThemeData(backgroundColor: AppColors.lightColor),
  );
}
