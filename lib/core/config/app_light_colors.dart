import 'package:flutter/material.dart';

class AppLightColors{
  AppLightColors._();
  // Light Theme Colors
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
  static const Color textPrimaryColor = Color(0xFF333333);
  static const Color textSecondaryColor = Color(0xFF6C757D);
  static const Color textWhiteColor = Colors.white;

  // Background colors
  static const Color backgroundColor = Color(0xFFF6F6F6);

  // Surface Colors
  static const Color surfaceColor = Color(0xFFFFFFFF);

  // Background Container colors
  static const Color containerColor = Color(0xFFF6F6F6);

  // Button colors
  static const Color buttonPrimaryColor = Color(0xFF4b68ff);
  static const Color buttonSecondaryColor = Color(0xFF6C757D);
  static const Color buttonDisabledColor = Color(0xFFc4c4c4);

  // Border colors
  static const Color borderPrimaryColor = Color(0xFFd9d9d9);
  static const Color borderSecondaryColor = Color(0xFFe6e6e6);

  // Error, success, warning, and info colors
  static const Color errorColor = Color(0xFFCF6679);
  static const Color successColor = Color(0xFF81C784);
  static const Color warningColor = Color(0xFFFFD54F);
  static const Color infoColor = Color(0xFF64B5F6);

  // Neutral shades colors
  static const Color blackColor = Color(0xFF232323);
  static const Color darkerGreyColor = Color(0xFF4f4f4f);
  static const Color darkGreyColor = Color(0xFF939393);
  static const Color greyColor = Color(0xFFe0e0e0);

  // Divider
  static const Color dividerColor = Color(0xFFBDBDBD);

  // Shadows
  static const Color shadowColor = Color(0x29000000);
}