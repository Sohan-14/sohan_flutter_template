import 'package:flutter/material.dart';
import 'package:sohan_flutter_template/core/config/app_dark_colors.dart';
import 'package:sohan_flutter_template/core/config/app_light_colors.dart';

class AppCardTheme{
  AppCardTheme._();
  static const CardTheme cardThemeLight = CardTheme(
    color: Colors.white,
    shadowColor: AppLightColors.shadowColor,
    elevation: 4,
  );

  static const CardTheme cardThemeDark = CardTheme(
    color: Colors.black,
    shadowColor: AppDarkColors.shadowColor,
    elevation: 4,
  );
}