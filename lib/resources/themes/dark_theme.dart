import 'package:crypto_wallet_ui_template/resources/colors/app_colors.dart';
import 'package:flutter/material.dart';

class DarkTheme {
  final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.darkColor,
    iconButtonTheme: IconButtonThemeData(
      style: IconButton.styleFrom(foregroundColor: AppColors.whiteColor),
    ),
    appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.darkColor,
        surfaceTintColor: AppColors.darkColor),
    cardTheme: const CardTheme(
      color: AppColors.brightCornflowerBlueColor,
    ),
  );
}
