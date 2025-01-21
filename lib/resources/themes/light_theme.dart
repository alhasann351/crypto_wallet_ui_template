import 'package:crypto_wallet_ui_template/resources/colors/app_colors.dart';
import 'package:flutter/material.dart';

class LightTheme {
  final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.lightColor,
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(foregroundColor: AppColors.blackColor),
    ),
    appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.lightColor,
        surfaceTintColor: AppColors.lightColor),
    cardTheme: const CardTheme(color: AppColors.whiteColor),
  );
}
