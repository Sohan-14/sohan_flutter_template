import 'package:flutter/material.dart';
import 'package:sohan_flutter_template/core/config/app_dark_colors.dart';
import 'package:sohan_flutter_template/core/config/app_light_colors.dart';

class AppChipTheme{
  AppChipTheme._();
  static ChipThemeData chipThemeLight = ChipThemeData(
      disabledColor: AppLightColors.greyColor.withValues(alpha: 0.4),
      labelStyle: const TextStyle(color:  AppLightColors.blackColor),
      selectedColor: Colors.blue,
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
      checkmarkColor:  AppLightColors.whiteColor
  );

  static ChipThemeData chipThemeDark = ChipThemeData(
      disabledColor: AppDarkColors.greyColor,
      labelStyle: const TextStyle(color: AppDarkColors.whiteColor),
      selectedColor: AppDarkColors.primaryColor,
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
      checkmarkColor: AppDarkColors.whiteColor
  );
}