import 'package:get/get.dart';
import 'package:sohan_flutter_template/domain/repositories/sample_repository.dart';
import 'package:sohan_flutter_template/domain/use_cases/get_sample_data_use_cases.dart';
import 'package:sohan_flutter_template/presentation/controllers/sample_controller.dart';

class TestBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<GetSampleDataUseCase>(() => GetSampleDataUseCase(Get.find<SampleRepository>()));
    Get.lazyPut<SampleController>(() => SampleController(Get.find<GetSampleDataUseCase>()));
  }
}