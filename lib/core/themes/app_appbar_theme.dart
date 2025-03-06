import 'package:flutter/material.dart';
import 'package:sohan_flutter_template/core/config/app_dark_colors.dart';
import 'package:sohan_flutter_template/core/config/app_light_colors.dart';

class AppAppbarTheme{
  AppAppbarTheme._();
  static const AppBarTheme appBarThemeLight = AppBarTheme(
    backgroundColor: AppLightColors.primaryColor,
    iconTheme: IconThemeData(color: AppLightColors.textWhiteColor),
    titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppLightColors.textWhiteColor),
  );

  static const AppBarTheme appBarThemeDark = AppBarTheme(
    backgroundColor: AppDarkColors.primaryColor,
    iconTheme: IconThemeData(color: AppDarkColors.textWhiteColor),
    titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppDarkColors.textWhiteColor),
  );
}