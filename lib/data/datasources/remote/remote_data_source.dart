import 'package:sohan_flutter_template/core/network/network_service.dart';

class RemoteDataSource {
  final NetworkService _networkService;

  RemoteDataSource(this._networkService);

  // Future<Map<String, dynamic>> fetchData(String endpoint) {
  //   return _networkService.get(endpoint);
  // }
}
