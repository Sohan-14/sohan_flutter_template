import 'package:flutter/material.dart';
import 'package:sohan_flutter_template/core/config/app_light_colors.dart';
import 'package:sohan_flutter_template/core/themes/app_appbar_theme.dart';
import 'package:sohan_flutter_template/core/themes/app_bottom_nav_bar_theme.dart';
import 'package:sohan_flutter_template/core/themes/app_bottom_sheet_theme.dart';
import 'package:sohan_flutter_template/core/themes/app_card_theme.dart';
import 'package:sohan_flutter_template/core/themes/app_check_box_theme.dart';
import 'package:sohan_flutter_template/core/themes/app_chip_theme.dart';
import 'package:sohan_flutter_template/core/themes/app_dialogue_theme.dart';
import 'package:sohan_flutter_template/core/themes/app_elevated_btn_theme.dart';
import 'package:sohan_flutter_template/core/themes/app_expansion_tile_theme.dart';
import 'package:sohan_flutter_template/core/themes/app_input_decoration_theme.dart';
import 'package:sohan_flutter_template/core/themes/app_nav_drawer_theme.dart';
import 'package:sohan_flutter_template/core/themes/app_outline_btn_theme.dart';
import 'package:sohan_flutter_template/core/themes/app_page_transition_theme.dart';
import 'package:sohan_flutter_template/core/themes/app_progress_indicator_theme.dart';
import 'package:sohan_flutter_template/core/themes/app_radio_theme.dart';
import 'package:sohan_flutter_template/core/themes/app_scroll_bar_theme.dart';
import 'package:sohan_flutter_template/core/themes/app_snack_bar_theme.dart';
import 'package:sohan_flutter_template/core/themes/app_switch_theme.dart';
import 'package:sohan_flutter_template/core/themes/app_tab_bar_theme.dart';
import 'package:sohan_flutter_template/core/themes/app_text_btn_theme.dart';
import 'package:sohan_flutter_template/core/themes/app_text_theme.dart';
import 'package:sohan_flutter_template/core/themes/app_tooltip_theme.dart';

class LightTheme{
  LightTheme._();
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: AppLightColors.primaryColor),
    brightness: Brightness.light,
    primaryColor: AppLightColors.primaryColor,
    scaffoldBackgroundColor: AppLightColors.backgroundColor,
    dividerColor: AppLightColors.dividerColor,
    appBarTheme: AppAppbarTheme.appBarThemeLight,
    textTheme: AppTextTheme.lightTextTheme,
    elevatedButtonTheme: AppElevatedBtnTheme.elevatedButtonThemeLight,
    outlinedButtonTheme: AppOutlineBtnTheme.outlinedButtonThemeLight,
    textButtonTheme: AppTextBtnTheme.textButtonThemeLight,
    inputDecorationTheme: AppInputDecorationTheme.inputDecorationThemeLight,
    cardTheme: AppCardTheme.cardThemeLight,
    chipTheme: AppChipTheme.chipThemeLight,
    dialogTheme: AppDialogueTheme.dialogueThemeLight,
    snackBarTheme: AppSnackBarTheme.snackBarThemeLight,
    switchTheme: AppSwitchTheme.switchThemeLight,
    progressIndicatorTheme: AppProgressIndicatorTheme.progressIndicatorThemeLight,
    tabBarTheme: AppTabBarTheme.tabBarThemeLight,
    bottomNavigationBarTheme: AppBottomNavBarTheme.bottomNavBarThemeLight,
    radioTheme: AppRadioTheme.radioThemeLight,
    tooltipTheme: AppTooltipTheme.tooltipThemeLight,
    pageTransitionsTheme: AppPageTransitionTheme.pageTransitionsTheme,
    scrollbarTheme: AppScrollBarTheme.scrollbarThemeLight,
    bottomSheetTheme: AppBottomSheetTheme.bottomSheetThemeLight,
    expansionTileTheme: AppExpansionTileTheme.expansionTileThemeLight,
    navigationDrawerTheme: AppNavDrawerTheme.navigationDrawerThemeLight,
    checkboxTheme: AppCheckBoxTheme.lightCheckBoxTheme,
  );
}