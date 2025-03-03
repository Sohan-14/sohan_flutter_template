import 'package:flutter/material.dart';
import 'package:sohan_flutter_template/core/config/app_colors.dart';

class LightTheme{
  LightTheme._();
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    // primaryColor: AppColors.lightPrimaryColor,
    // scaffoldBackgroundColor: AppColors.lightScaffoldBackgroundColor,
    appBarTheme: AppBarTheme(
      // backgroundColor: AppColors.lightAppBarBackgroundColor,
      // foregroundColor: AppColors.lightAppBarTextColor,
      elevation: 2,
      centerTitle: true,
      titleTextStyle: TextStyle(
          // color: AppColors.lightAppBarTextColor, fontSize: 20, fontWeight: FontWeight.bold
      ),
    ),
    textTheme: TextTheme(
      // displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: AppColors.lightTextColor),
      // displayMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: AppColors.lightTextColor),
      // bodyLarge: TextStyle(fontSize: 16, color: AppColors.lightBodyTextColor),
      // bodyMedium: TextStyle(fontSize: 14, color: AppColors.lightBodyTextColor),
    ),
  );
}