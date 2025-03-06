import 'package:flutter/material.dart';
import 'package:sohan_flutter_template/core/config/app_dark_colors.dart';
import 'package:sohan_flutter_template/core/config/app_light_colors.dart';

class AppAppbarTheme{
  AppAppbarTheme._();
  static AppBarTheme appBarThemeLight = AppBarTheme(
      elevation: 0,
      centerTitle: false,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      iconTheme: IconThemeData(
          color: AppLightColors.blackColor,
          size: 24.0
      ),
      actionsIconTheme: IconThemeData(
          color:  AppLightColors.blackColor,
          size: 24.0
      ),
      titleTextStyle: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w600,
          color:  AppLightColors.blackColor,
      )
  );

  static AppBarTheme appBarThemeDark = AppBarTheme(
      elevation: 0,
      centerTitle: false,
      scrolledUnderElevation: 0,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      iconTheme: IconThemeData(
          color: AppDarkColors.blackColor,
          size: 24.0
      ),
      actionsIconTheme: IconThemeData(
          color: AppDarkColors.blackColor,
          size: 24.0
      ),
      titleTextStyle: TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w600,
          color: AppDarkColors.blackColor,
      )
  );
}