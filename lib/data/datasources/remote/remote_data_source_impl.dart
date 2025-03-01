import 'package:sohan_flutter_template/core/config/app_api_endpoints.dart';
import 'package:sohan_flutter_template/core/network/network_service.dart';
import 'package:sohan_flutter_template/data/datasources/remote/remote_data_source.dart';

class RemoteDataSourceImpl implements RemoteDataSource{
  final NetworkService _networkService;

  RemoteDataSourceImpl(this._networkService);

  @override
  Future<String> fetchSampleData() async {
    _networkService.get(AppApiEndpoints.getAllUser);
    return "hello";
  }
}
