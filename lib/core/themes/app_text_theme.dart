import 'package:flutter/material.dart';
import 'package:sohan_flutter_template/core/config/app_dark_colors.dart';
import 'package:sohan_flutter_template/core/config/app_light_colors.dart';

class AppTextTheme{
  AppTextTheme._();
  static const TextTheme lightTextTheme = TextTheme(
    displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: AppLightColors.textPrimaryColor),
    displayMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.w600, color: AppLightColors.textWhiteColor),
    bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: AppLightColors.textWhiteColor),
    bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: AppLightColors.textSecondaryColor),
  );

  static const TextTheme darkTextTheme = TextTheme(
    displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: AppDarkColors.textPrimaryColor),
    displayMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.w600, color: AppDarkColors.textWhiteColor),
    bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: AppDarkColors.textWhiteColor),
    bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: AppDarkColors.textSecondaryColor),
  );
}

