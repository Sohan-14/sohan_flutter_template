import 'package:flutter/material.dart';
import 'package:sohan_flutter_template/core/config/app_dark_colors.dart';
import 'package:sohan_flutter_template/core/config/app_light_colors.dart';

class AppInputDecorationTheme{
  AppInputDecorationTheme._();
  static const InputDecorationTheme inputDecorationThemeLight = InputDecorationTheme(
    filled: true,
    fillColor: Colors.white,
    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppLightColors.primaryColor, width: 2)),
    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: AppLightColors.borderPrimaryColor, width: 1)),
  );

  static const InputDecorationTheme inputDecorationThemeDark = InputDecorationTheme(
    filled: true,
    fillColor: Colors.black,
    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
    focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: AppDarkColors.primaryColor, width: 2)),
    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: AppDarkColors.borderPrimaryColor, width: 1)),
  );
}