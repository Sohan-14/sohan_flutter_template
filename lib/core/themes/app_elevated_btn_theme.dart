import 'package:flutter/material.dart';
import 'package:sohan_flutter_template/core/config/app_dark_colors.dart';
import 'package:sohan_flutter_template/core/config/app_light_colors.dart';

class AppElevatedBtnTheme{
  AppElevatedBtnTheme._();
  static final ElevatedButtonThemeData elevatedButtonThemeLight = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: AppLightColors.whiteColor,
          backgroundColor: AppLightColors.primaryColor,
          disabledBackgroundColor:AppLightColors.greyColor,
          disabledForegroundColor: AppLightColors.greyColor,
          side: const BorderSide(color: AppLightColors.primaryColor),
          padding: EdgeInsets.symmetric(vertical: 18.0),
          textStyle: const TextStyle(
            fontSize: 16,
            color: AppLightColors.whiteColor,
            fontWeight: FontWeight.w600,
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0)
          )
      )
  );

  static final ElevatedButtonThemeData elevatedButtonThemeDark = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: AppDarkColors.whiteColor,
          backgroundColor: AppDarkColors.primaryColor,
          disabledBackgroundColor: AppDarkColors.greyColor,
          disabledForegroundColor: AppDarkColors.greyColor,
          side: const BorderSide(color: AppDarkColors.primaryColor),
          padding: EdgeInsets.symmetric(vertical: 18.0),
          textStyle: const TextStyle(
            fontSize: 16,
            color: AppDarkColors.whiteColor,
            fontWeight: FontWeight.w600,
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0)
          )
      )
  );
}