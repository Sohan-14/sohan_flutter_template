import 'package:flutter/material.dart';

class AppBottomSheetTheme{
  AppBottomSheetTheme._();
  static const BottomSheetThemeData bottomSheetThemeLight = BottomSheetThemeData(
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
    elevation: 8,
  );

  static const BottomSheetThemeData bottomSheetThemeDark = BottomSheetThemeData(
    backgroundColor: Colors.black,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(16))),
    elevation: 8,
  );

}