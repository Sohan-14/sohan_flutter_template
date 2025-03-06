import 'package:flutter/material.dart';
import 'package:sohan_flutter_template/core/config/app_dark_colors.dart';
import 'package:sohan_flutter_template/core/config/app_light_colors.dart';

class AppOutlineBtnTheme{
  AppOutlineBtnTheme._();
  static OutlinedButtonThemeData outlinedButtonThemeLight = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      side: BorderSide(color: AppLightColors.primaryColor),
    ),
  );

  static OutlinedButtonThemeData outlinedButtonThemeDark = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      side: BorderSide(color: AppDarkColors.primaryColor),
    ),
  );

}