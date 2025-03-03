import 'package:get/get.dart';
import 'package:sohan_flutter_template/core/network/network_service.dart';
import 'package:sohan_flutter_template/data/data_sources/remote/remote_data_source.dart';
import 'package:sohan_flutter_template/data/data_sources/remote/remote_data_source_impl.dart';
import 'package:sohan_flutter_template/data/repositories/sample_repository_impl.dart';
import 'package:sohan_flutter_template/domain/repositories/sample_repository.dart';

class AppBindings extends Bindings{
  @override
  void dependencies() {
    Get.put<NetworkService>(NetworkService());
    Get.lazyPut<RemoteDataSource>(() => RemoteDataSourceImpl(Get.find<NetworkService>()));
    Get.lazyPut<SampleRepository>(() => SampleRepositoryImpl(Get.find<RemoteDataSource>()));
  }
}
