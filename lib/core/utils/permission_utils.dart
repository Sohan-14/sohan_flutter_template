import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionUtils {
  PermissionUtils._();
  static Future<bool> requestPermission(Permission permission) async {
    final status = await permission.request();
    return status.isGranted;
  }

  static Future<bool> isPermissionGranted(Permission permission) async {
    final status = await permission.status;
    return status.isGranted;
  }

  static Future<bool> checkAndRequestPermission(Permission permission) async {
    if (await isPermissionGranted(permission)) {
      return true;
    } else {
      return await requestPermission(permission);
    }
  }

  static Future<Map<Permission, PermissionStatus>> requestPermissions(
      List<Permission> permissions) async {
    return await permissions.request();
  }

  static Future<bool> isLocationPermissionGranted() async {
    return await isPermissionGranted(Permission.location);
  }

  static Future<bool> requestLocationPermission() async {
    return await requestPermission(Permission.location);
  }

  static Future<bool> isCameraPermissionGranted() async {
    return await isPermissionGranted(Permission.camera);
  }

  static Future<bool> requestCameraPermission() async {
    return await requestPermission(Permission.camera);
  }

  static Future<bool> isStoragePermissionGranted() async {
    return await isPermissionGranted(Permission.storage);
  }

  static Future<bool> requestStoragePermission() async {
    return await requestPermission(Permission.storage);
  }


  static Future<bool> requestCameraPermissionWithExplanation() async {
    if (await Permission.camera.isPermanentlyDenied) {
      openAppSettings();
      return false;
    }
    return await requestCameraPermission();
  }

  static Future<void> openSettings() async {
    await openAppSettings();
  }

  static Future<bool> isPermissionPermanentlyDenied(Permission permission) async {
    final status = await permission.status;
    return status.isPermanentlyDenied;
  }

  static Future<void> handlePermanentlyDeniedPermission(BuildContext context, Permission permission) async {
    if (await isPermissionPermanentlyDenied(permission)) {
      if (context.mounted) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Permission Denied"),
            content: Text("Permission has been permanently denied. Please go to settings to enable it."),
            actions: [
              TextButton(
                onPressed: () {
                  openSettings();
                  Navigator.of(context).pop();
                },
                child: Text("Open Settings"),
              ),
            ],
          ),
        );
      }
    }
  }
}
