import 'package:crypto_wallet_ui_template/resources/colors/app_colors.dart';
import 'package:flutter/material.dart';

class LightTheme {
  final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.whiteColor,
    iconTheme: const IconThemeData(color: AppColors.blackColor),
    //appBarTheme: const AppBarTheme(backgroundColor: AppColors.lightColor),
    //drawerTheme: const DrawerThemeData(backgroundColor: AppColors.lightColor),
  );
}
