import 'package:flutter/material.dart';
import 'package:sohan_flutter_template/core/config/app_dark_colors.dart';
import 'package:sohan_flutter_template/core/config/app_light_colors.dart';

class AppBottomNavBarTheme{
  AppBottomNavBarTheme._();
  static const BottomNavigationBarThemeData bottomNavBarThemeLight = BottomNavigationBarThemeData(
    backgroundColor: Colors.white,
    selectedItemColor: AppLightColors.primaryColor,
    unselectedItemColor: AppLightColors.textSecondaryColor,
    elevation: 4,
  );

  static const BottomNavigationBarThemeData bottomNavBarThemeDark = BottomNavigationBarThemeData(
    backgroundColor: Colors.black,
    selectedItemColor: AppDarkColors.primaryColor,
    unselectedItemColor: AppDarkColors.textSecondaryColor,
    elevation: 4,
  );

}