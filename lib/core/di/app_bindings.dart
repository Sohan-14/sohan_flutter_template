import 'package:get/get.dart';
import 'package:sohan_flutter_template/core/network/network_service.dart';
import 'package:sohan_flutter_template/data/datasources/remote/remote_data_source.dart';
import 'package:sohan_flutter_template/data/datasources/remote/remote_data_source_impl.dart';
import 'package:sohan_flutter_template/data/repositories/sample_repository_impl.dart';
import 'package:sohan_flutter_template/domain/repositories/sample_repository.dart';
import 'package:sohan_flutter_template/domain/usecases/get_sample_data_usecases.dart';
import 'package:sohan_flutter_template/presentation/controllers/sample_controller.dart';

class AppBindings extends Bindings{

  @override
  void dependencies() {
    Get.put<NetworkService>(NetworkService());
    Get.lazyPut<RemoteDataSource>(() => RemoteDataSourceImpl(Get.find<NetworkService>()));
    Get.lazyPut<SampleRepository>(() => SampleRepositoryImpl(Get.find<RemoteDataSource>()));
    Get.lazyPut<GetSampleDataUseCase>(() => GetSampleDataUseCase(Get.find<SampleRepository>()));
    Get.lazyPut<SampleController>(() => SampleController(Get.find<GetSampleDataUseCase>()));
  }
}
