import 'package:flutter/material.dart';
import 'package:sohan_flutter_template/core/config/app_colors.dart';

class DarkTheme{
  DarkTheme._();
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryDark,
    scaffoldBackgroundColor: AppColors.primaryBackgroundDark,
    appBarTheme: AppBarTheme(
      // backgroundColor: AppColors.darkAppBarBackgroundColor,
      // foregroundColor: AppColors.darkAppBarTextColor,
      elevation: 2,
      centerTitle: true,
      titleTextStyle: TextStyle(
          // color: AppColors.darkAppBarTextColor, fontSize: 20, fontWeight: FontWeight.bold
      ),
    ),
    // textTheme: TextTheme(
    //   displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: AppColors.darkTextColor),
    //   displayMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: AppColors.darkTextColor),
    //   bodyLarge: TextStyle(fontSize: 16, color: AppColors.darkBodyTextColor),
    //   bodyMedium: TextStyle(fontSize: 14, color: AppColors.darkBodyTextColor),
    // ),
  );
}
