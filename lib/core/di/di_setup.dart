import 'package:get/get.dart';
import 'package:sohan_flutter_template/core/network/network_service.dart';

class DI {
  static void init() {
    Get.lazyPut(() => NetworkService());
    // Get.lazyPut(() => StorageService());
  }
}
