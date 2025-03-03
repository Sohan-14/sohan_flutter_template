import 'package:get/get.dart';
import 'package:sohan_flutter_template/core/config/app_constants.dart';
import 'package:sohan_flutter_template/core/routes/app_screens.dart';
import 'package:sohan_flutter_template/core/storage/storage_service.dart';

class SplashController extends GetxController {
  final StorageService _storage = StorageService();

  @override
  void onInit() {
    super.onInit();
    _navigateToNextScreen();
  }

  void _navigateToNextScreen() async {
    await Future.delayed(Duration(seconds: 3));

    bool isLoggedIn = _storage.isDataExists(AppConstants.token);

    if (isLoggedIn) {
      Get.offNamed(AppScreens.testRoute);
    } else {
      Get.offNamed(AppScreens.testRoute);
    }
  }
}
