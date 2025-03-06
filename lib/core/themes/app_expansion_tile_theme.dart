import 'package:flutter/material.dart';
import 'package:sohan_flutter_template/core/config/app_dark_colors.dart';
import 'package:sohan_flutter_template/core/config/app_light_colors.dart';

class AppExpansionTileTheme{
  AppExpansionTileTheme._();
  static const ExpansionTileThemeData expansionTileThemeLight = ExpansionTileThemeData(
    collapsedIconColor: AppLightColors.primaryColor,
    iconColor: AppLightColors.primaryColor,
    textColor: AppLightColors.textPrimaryColor,
  );

  static const ExpansionTileThemeData expansionTileThemeDark = ExpansionTileThemeData(
    collapsedIconColor: AppDarkColors.primaryColor,
    iconColor: AppDarkColors.primaryColor,
    textColor: AppDarkColors.textPrimaryColor,
  );


}