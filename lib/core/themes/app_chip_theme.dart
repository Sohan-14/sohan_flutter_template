import 'package:flutter/material.dart';
import 'package:sohan_flutter_template/core/config/app_dark_colors.dart';
import 'package:sohan_flutter_template/core/config/app_light_colors.dart';

class AppChipTheme{
  AppChipTheme._();
  static const ChipThemeData chipThemeLight = ChipThemeData(
    backgroundColor: AppLightColors.secondaryColor,
    iconTheme: IconThemeData(color: AppLightColors.textWhiteColor),
    labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppLightColors.textWhiteColor),
  );

  static const ChipThemeData chipThemeDark = ChipThemeData(
    backgroundColor: AppDarkColors.secondaryColor,
    iconTheme: IconThemeData(color: AppDarkColors.textWhiteColor),
    labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppDarkColors.textWhiteColor),
  );
}