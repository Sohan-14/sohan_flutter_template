import 'package:get/get.dart';
import 'package:sohan_flutter_template/presentation/controllers/splash_controller.dart';

class SplashBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<SplashController>(() => SplashController());
  }

}