import 'package:flutter/material.dart';
import 'package:sohan_flutter_template/core/config/app_dark_colors.dart';
import 'package:sohan_flutter_template/core/config/app_light_colors.dart';

class AppDialogueTheme{
  AppDialogueTheme._();
  static const DialogTheme dialogueThemeLight = DialogTheme(
    backgroundColor: AppLightColors.textWhiteColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
  );

  static const DialogTheme dialogueThemeDark = DialogTheme(
    backgroundColor: AppDarkColors.textWhiteColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
  );
}