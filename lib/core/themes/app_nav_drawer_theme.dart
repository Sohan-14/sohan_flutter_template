import 'package:flutter/material.dart';
import 'package:sohan_flutter_template/core/config/app_dark_colors.dart';
import 'package:sohan_flutter_template/core/config/app_light_colors.dart';

class AppNavDrawerTheme{
  AppNavDrawerTheme._();
  static const NavigationDrawerThemeData navigationDrawerThemeLight = NavigationDrawerThemeData(
    backgroundColor: Colors.white,
    indicatorColor: AppLightColors.primaryColor,
  );

  static const NavigationDrawerThemeData navigationDrawerThemeDark = NavigationDrawerThemeData(
    backgroundColor: Colors.black,
    indicatorColor: AppDarkColors.primaryColor,
  );

}