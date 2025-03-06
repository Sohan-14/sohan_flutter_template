import 'package:flutter/material.dart';
import 'package:sohan_flutter_template/core/config/app_dark_colors.dart';
import 'package:sohan_flutter_template/core/config/app_light_colors.dart';

class AppTabBarTheme{
  AppTabBarTheme._();
  static const TabBarTheme tabBarThemeLight = TabBarTheme(
    labelColor: AppLightColors.primaryColor,
    unselectedLabelColor: AppLightColors.textSecondaryColor,
    indicator: UnderlineTabIndicator(
      borderSide: BorderSide(color: AppLightColors.primaryColor, width: 2),
    ),
  );

  static const TabBarTheme tabBarThemeDark = TabBarTheme(
    labelColor: AppDarkColors.primaryColor,
    unselectedLabelColor: AppDarkColors.textSecondaryColor,
    indicator: UnderlineTabIndicator(
      borderSide: BorderSide(color: AppDarkColors.primaryColor, width: 2),
    ),
  );

}