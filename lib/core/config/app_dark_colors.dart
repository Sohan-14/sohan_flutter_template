import 'package:flutter/material.dart';

class AppDarkColors{
  AppDarkColors._();


  // Dark Theme Colors
  static const Color primaryColor = Color(0xFF4B68FF);
  static const Color secondaryColor = Color(0xFFFFE248);
  static const Color accentColor = Color(0xFFB0C7FF);

  // Gradient colors
  static const Gradient linearGradientColor = LinearGradient(
      begin: Alignment(0.0, 0.0),
      end: Alignment(0.707, -0.707),
      colors: [
        Color(0xffff9a9e),
        Color(0xfffad0c4),
        Color(0xfffad0c4),
      ]
  );

  // Text colors
  static const Color textPrimaryColor = Color(0xFFB0B0B0);
  static const Color textSecondaryColor = Color(0xFF8E8E8E);
  static const Color textWhiteColor = Colors.white;
  static const Color textBlackColor = Colors.black;


  // Background colors
  static const Color backgroundColor = Color(0xFF272727);

  // Surface Colors
  static const Color surfaceColor = Color(0xFF121212);


  // Background Container colors
  static Color containerColor = Colors.white.withValues(alpha: 0.1);

  // Button colors
  static const Color buttonPrimaryColor = Color(0xFF4b68ff);
  static const Color buttonSecondaryColor = Color(0xFF6C757D);
  static const Color buttonDisabledColor = Color(0xFFc4c4c4);

  // Border colors
  static const Color borderPrimaryColor = Color(0xFF444444);
  static const Color borderSecondaryColor = Color(0xFF555555);

  // Error, success, warning, and info colors
  static const Color errorColor = Color(0xFF232f2f);
  static const Color successColor = Color(0xFF388e3c);
  static const Color warningColor = Color(0xFFf57c00);
  static const Color infoColor = Color(0xFF1976d2);

  // Neutral shades colors
  static const Color blackColor = Color(0xFF111111);
  static const Color darkerGreyColor = Color(0xFF333333);
  static const Color darkGreyColor = Color(0xFF666666);
  static const Color greyColor = Color(0xFF444444);
  static const Color whiteColor = Colors.white;

  // Divider Colors
  static const Color dividerColor = Color(0xFFBDBDBD);

  // Shadows
  static const Color shadowColor = Color(0x29000000);

}