import 'package:flutter/material.dart';

class AppColors{
  AppColors._();

  // Light Theme Colors
  static const Color primaryLight = Color(0xFF4B68FF);
  static const Color secondaryLight = Color(0xFFFFE248);
  static const Color accentLight = Color(0xFFB0C7FF);

  // Dark Theme Colors
  static const Color primaryDark = Color(0xFF4B68FF);
  static const Color secondaryDark = Color(0xFFFFE248);
  static const Color accentDark = Color(0xFFB0C7FF);

  // Gradient colors
  static const Gradient linearGradient = LinearGradient(
      begin: Alignment(0.0, 0.0),
      end: Alignment(0.707, -0.707),
      colors: [
        Color(0xffff9a9e),
        Color(0xfffad0c4),
        Color(0xfffad0c4),
      ]
  );

  // Text colors for light
  static const Color textPrimaryLight = Color(0xFF333333);
  static const Color textSecondaryLight = Color(0xFF6C757D);
  static const Color textWhiteLight = Colors.white;

  // Text colors for  dark theme
  static const Color textPrimaryDark = Color(0xFFB0B0B0);
  static const Color textSecondaryDark = Color(0xFF8E8E8E);
  static const Color textWhiteDark = Colors.white;



  // Background colors for light
  static const Color backgroundLight = Color(0xFFF6F6F6);
  static const Color primaryBackgroundLight = Color(0xFFF3F5FF);

  // Background colors for dark theme
  static const Color backgroundDark = Color(0xFF272727);
  static const Color primaryBackgroundDark = Color(0xFF1A1A1A);

  // Background Container colors for light
  static const Color lightContainer = Color(0xFFF6F6F6);

  // Background Container colors for dark theme
  static Color darkContainer = Colors.white.withValues(alpha: 0.1);



  // Button colors for light
  static const Color buttonPrimaryLight = Color(0xFF4b68ff);
  static const Color buttonSecondaryLight = Color(0xFF6C757D);
  static const Color buttonDisabledLight = Color(0xFFc4c4c4);

  // Button colors for dark theme
  static const Color buttonPrimaryDark = Color(0xFF4b68ff);
  static const Color buttonSecondaryDark = Color(0xFF6C757D);
  static const Color buttonDisabledDark = Color(0xFFc4c4c4);


  // Border colors for light
  static const Color borderPrimaryLight = Color(0xFFd9d9d9);
  static const Color borderSecondaryLight = Color(0xFFe6e6e6);

  // Border colors for dark theme
  static const Color borderPrimaryDark = Color(0xFF444444);
  static const Color borderSecondaryDark = Color(0xFF555555);

  // Error, success, warning, and info colors
  static const Color error = Color(0xFF232f2f);
  static const Color success = Color(0xFF388e3c);
  static const Color warning = Color(0xFFf57c00);
  static const Color info = Color(0xFF1976d2);


  // Neutral shades colors for light
  static const Color blackLight = Color(0xFF232323);
  static const Color darkerGreyLight = Color(0xFF4f4f4f);
  static const Color darkGreyLight = Color(0xFF939393);
  static const Color greyLight = Color(0xFFe0e0e0);

  // Neutral shades colors for dark theme
  static const Color blackDark = Color(0xFF111111);
  static const Color darkerGreyDark = Color(0xFF333333);
  static const Color darkGreyDark = Color(0xFF666666);
  static const Color greyDark = Color(0xFF444444);
}