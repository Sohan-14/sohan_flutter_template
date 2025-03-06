import 'package:flutter/material.dart';
import 'package:sohan_flutter_template/core/config/app_dark_colors.dart';
import 'package:sohan_flutter_template/core/config/app_light_colors.dart';

class AppTooltipTheme{
  AppTooltipTheme._();
  static const TooltipThemeData tooltipThemeLight = TooltipThemeData(
    decoration: BoxDecoration(
      color: AppLightColors.primaryColor,
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
    textStyle: TextStyle(color: Colors.white),
  );

  static const TooltipThemeData tooltipThemeDark = TooltipThemeData(
    decoration: BoxDecoration(
      color: AppDarkColors.primaryColor,
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
    textStyle: TextStyle(color: Colors.white),
  );

}