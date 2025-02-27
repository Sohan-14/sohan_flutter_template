import 'package:permission_handler/permission_handler.dart';

class PermissionUtils {
  PermissionUtils._();
  static Future<bool> requestPermission(Permission permission) async {
    final status = await permission.request();
    return status.isGranted;
  }
}
