import 'package:flutter/material.dart';
import 'package:sohan_flutter_template/core/themes/dark_theme.dart';
import 'package:sohan_flutter_template/core/themes/light_theme.dart';

class AppTheme{
  AppTheme._();
  static ThemeData getTheme(ThemeMode themeMode) {
    if (themeMode == ThemeMode.dark) {
      return DarkTheme.darkTheme;
    } else if (themeMode == ThemeMode.light) {
      return LightTheme.lightTheme;
    }
    return LightTheme.lightTheme;
  }
}