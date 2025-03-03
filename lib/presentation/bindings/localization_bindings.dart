import 'package:get/get.dart';
import 'package:sohan_flutter_template/presentation/controllers/localization_controller.dart';

class LocalizationBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<LocalizationController>(() => LocalizationController());
  }
}