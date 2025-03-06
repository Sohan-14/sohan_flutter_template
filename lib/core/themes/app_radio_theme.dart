import 'package:flutter/material.dart';
import 'package:sohan_flutter_template/core/config/app_dark_colors.dart';
import 'package:sohan_flutter_template/core/config/app_light_colors.dart';

class AppRadioTheme{
  AppRadioTheme._();
  static const RadioThemeData radioThemeLight = RadioThemeData(
    fillColor: WidgetStatePropertyAll(AppLightColors.primaryColor),
  );

  static const RadioThemeData radioThemeDark = RadioThemeData(
    fillColor: WidgetStatePropertyAll(AppDarkColors.primaryColor),
  );

}