import 'package:flutter/material.dart';
import 'package:sohan_flutter_template/core/config/app_dark_colors.dart';
import 'package:sohan_flutter_template/core/config/app_light_colors.dart';

class AppTextTheme{
  AppTextTheme._();
  static const TextTheme lightTextTheme = TextTheme(
    displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: AppLightColors.textPrimaryColor),
    displayMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.w600, color: AppLightColors.textWhiteColor),
    displaySmall:  TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: AppLightColors.textWhiteColor),

    headlineLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: AppLightColors.textBlackColor),
    headlineMedium: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600, color: AppLightColors.textBlackColor),
    headlineSmall: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: AppLightColors.textBlackColor),

    titleLarge: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: AppLightColors.textBlackColor),
    titleMedium: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: AppLightColors.textBlackColor),
    titleSmall: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: AppLightColors.textBlackColor),

    bodyLarge: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: AppLightColors.textBlackColor),
    bodyMedium: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal, color: AppLightColors.textBlackColor),
    bodySmall: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500, color: AppLightColors.textBlackColor),

    labelLarge: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal, color: AppLightColors.textBlackColor),
    labelMedium: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal, color: AppLightColors.textBlackColor),
    labelSmall: TextStyle(fontSize: 10.0, fontWeight: FontWeight.normal, color: AppLightColors.textBlackColor),
  );

  static const TextTheme darkTextTheme = TextTheme(
    displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: AppDarkColors.textPrimaryColor),
    displayMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.w600, color: AppDarkColors.textWhiteColor),
    displaySmall:  TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: AppDarkColors.textWhiteColor),

    headlineLarge: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, color: AppDarkColors.textBlackColor),
    headlineMedium: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w600, color: AppDarkColors.textBlackColor),
    headlineSmall: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: AppDarkColors.textBlackColor),

    titleLarge: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: AppDarkColors.textBlackColor),
    titleMedium: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: AppDarkColors.textBlackColor),
    titleSmall: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, color: AppDarkColors.textBlackColor),

    bodyLarge: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: AppDarkColors.textBlackColor),
    bodyMedium: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal, color: AppDarkColors.textBlackColor),
    bodySmall: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500, color: AppDarkColors.textBlackColor),

    labelLarge: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal, color: AppDarkColors.textBlackColor),
    labelMedium: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal, color: AppDarkColors.textBlackColor),
    labelSmall: TextStyle(fontSize: 10.0, fontWeight: FontWeight.normal, color: AppDarkColors.textBlackColor),
  );
}

