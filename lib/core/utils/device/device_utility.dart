import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sohan_flutter_template/core/utils/logger_utils.dart';
// import 'package:url_launcher/url_launcher_string.dart';

class DeviceUtility {
  DeviceUtility._();

  // Hide Keyboard
  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).unfocus();
  }

  // Set Status Bar Color
  static void setStatusBarColor(Color color) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: color));
  }

  // Check Device Orientation
  static bool isLandscapeOrientation(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.landscape;
  }

  static bool isPortraitOrientation(BuildContext context) {
    return MediaQuery.of(context).orientation == Orientation.portrait;
  }

  // Enable/Disable Full-Screen Mode
  static void setFullScreen(bool enable) {
    SystemChrome.setEnabledSystemUIMode(
      enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge,
    );
  }

  // Get Screen Height & Width
  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  // Get Pixel Ratio
  static double getPixelRatio(BuildContext context) {
    return MediaQuery.of(context).devicePixelRatio;
  }

  // Get Status Bar Height
  static double getStatusBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }

  // Get Bottom Navigation Bar Height
  static double getBottomNavigationBarHeight(BuildContext context) {
    return MediaQuery.of(context).padding.bottom;
  }

  // Get AppBar Height
  static double getAppBarHeight() {
    return kToolbarHeight;
  }

  // Get Keyboard Height
  static double getKeyboardHeight(BuildContext context) {
    return MediaQuery.of(context).viewInsets.bottom;
  }

  // Check if Keyboard is Visible
  static bool isKeyboardVisible(BuildContext context) {
    return MediaQuery.of(context).viewInsets.bottom > 0;
  }

  // Check if Running on Physical Device
  static bool isPhysicalDevice() {
    return Platform.isAndroid || Platform.isIOS;
  }

  // Device Type Checks
  static bool isIOS() {
    return Platform.isIOS;
  }

  static bool isAndroid() {
    return Platform.isAndroid;
  }

  // Vibrate Device
  static void vibrate(Duration duration) {
    HapticFeedback.vibrate();
    Future.delayed(duration, HapticFeedback.vibrate);
  }

  // Set Preferred Orientations
  static Future<void> setPreferredOrientations(List<DeviceOrientation> orientations) async {
    await SystemChrome.setPreferredOrientations(orientations);
  }

  // Hide Status Bar
  static void hideStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  }

  // Show Status Bar
  static void showStatusBar() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: SystemUiOverlay.values);
  }

  // Check Internet Connection (with Timeout Handling)
  static Future<bool> hasInternetConnection() async {
    try {
      final result = await InternetAddress.lookup("example.com").timeout(const Duration(seconds: 4));
      return result.isNotEmpty && result.first.rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    } on TimeoutException catch (_) {
      return false;
    }
  }


  // Launch URL Safely
  // use url_launcher packages
  static Future<void> launchUrl(String url) async {
    try {
      // if (await canLaunchUrlString(url)) {
      //   await launchUrlString(url);
      // } else {
      //   LoggerUtils.info("Could not launch $url");
      // }

      LoggerUtils.info("add packages");
    } catch (exception) {
      LoggerUtils.error("Error launching URL: $exception");
    }
  }
}
