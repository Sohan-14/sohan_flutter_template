import 'package:flutter/material.dart';
import 'package:sohan_flutter_template/core/config/app_dark_colors.dart';
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

class DarkTheme{
  DarkTheme._();
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: AppDarkColors.primaryColor),
    brightness: Brightness.dark,
    primaryColor: AppDarkColors.primaryColor,
    scaffoldBackgroundColor: AppDarkColors.backgroundColor,
    textTheme: AppTextTheme.darkTextTheme,
    appBarTheme: AppAppbarTheme.appBarThemeDark,
    dividerColor: AppDarkColors.dividerColor,
    elevatedButtonTheme: AppElevatedBtnTheme.elevatedButtonThemeDark,
    outlinedButtonTheme: AppOutlineBtnTheme.outlinedButtonThemeDark,
    textButtonTheme: AppTextBtnTheme.textButtonThemeDark,
    inputDecorationTheme: AppInputDecorationTheme.inputDecorationThemeDark,
    cardTheme: AppCardTheme.cardThemeDark,
    chipTheme: AppChipTheme.chipThemeDark,
    dialogTheme: AppDialogueTheme.dialogueThemeDark,
    snackBarTheme: AppSnackBarTheme.snackBarThemeDark,
    switchTheme: AppSwitchTheme.switchThemeDark,
    progressIndicatorTheme: AppProgressIndicatorTheme.progressIndicatorThemeDark,
    tabBarTheme: AppTabBarTheme.tabBarThemeDark,
    bottomNavigationBarTheme: AppBottomNavBarTheme.bottomNavBarThemeDark,
    radioTheme: AppRadioTheme.radioThemeDark,
    tooltipTheme: AppTooltipTheme.tooltipThemeDark,
    pageTransitionsTheme: AppPageTransitionTheme.pageTransitionsTheme,
    scrollbarTheme: AppScrollBarTheme.scrollbarThemeDark,
    bottomSheetTheme: AppBottomSheetTheme.bottomSheetThemeDark,
    expansionTileTheme: AppExpansionTileTheme.expansionTileThemeDark,
    navigationDrawerTheme: AppNavDrawerTheme.navigationDrawerThemeDark,
    checkboxTheme: AppCheckBoxTheme.darkCheckBoxTheme
  );
}
