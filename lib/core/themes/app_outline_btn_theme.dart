import 'package:flutter/material.dart';
import 'package:sohan_flutter_template/core/config/app_dark_colors.dart';
import 'package:sohan_flutter_template/core/config/app_light_colors.dart';

class AppOutlineBtnTheme{
  AppOutlineBtnTheme._();
  static OutlinedButtonThemeData outlinedButtonThemeLight = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.black,
        side: const BorderSide(color: Colors.blue),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: AppLightColors.blackColor),
        padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))
    )
  );

  static OutlinedButtonThemeData outlinedButtonThemeDark = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.white,
        side: const BorderSide(color: Colors.blue),
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: AppDarkColors.whiteColor),
        padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))
    )
  );

}