import 'package:flutter/material.dart';
import 'package:sohan_flutter_template/core/config/app_dark_colors.dart';
import 'package:sohan_flutter_template/core/config/app_light_colors.dart';

class AppFloatingActionBarTheme{
  AppFloatingActionBarTheme._();
  static const FloatingActionButtonThemeData fabThemeLight = FloatingActionButtonThemeData(
    backgroundColor: AppLightColors.primaryColor,
    foregroundColor: AppLightColors.textWhiteColor,
    elevation: 6,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
  );

  static const FloatingActionButtonThemeData fabThemeDark = FloatingActionButtonThemeData(
    backgroundColor: AppDarkColors.primaryColor,
    foregroundColor: AppDarkColors.textWhiteColor,
    elevation: 6,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
  );

}