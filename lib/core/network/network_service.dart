import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sohan_flutter_template/core/config/app_constants.dart';
import 'package:sohan_flutter_template/core/storage/storage_service.dart';
import 'package:sohan_flutter_template/core/utils/logger_utils.dart';

class NetworkService {
  static final NetworkService _instance = NetworkService._internal();
  factory NetworkService() => _instance;

  late Dio _dio;
  final  _storage = StorageService.instance;

  NetworkService._internal(){

    _dio = Dio(BaseOptions(
      baseUrl: AppConstants.apiBaseUrl,
      connectTimeout: Duration(seconds: 10),
      receiveTimeout: Duration(seconds: 10),
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json",
      },
    ));


    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        String? token = _storage.getData("authToken");

        LoggerUtils.debug("Request: ${options.method} ${options.uri}");
        LoggerUtils.debug("Headers: ${options.headers}");
        return handler.next(options);
      },
      onResponse: (response, handler) {
        LoggerUtils.info("Response: ${response.statusCode} ${response.data}");
        return handler.next(response);
      },
      onError: (DioException e, handler) {
        LoggerUtils.error("Error: ${e.response?.statusCode} ${e.message}");
        return handler.next(e);
      },
    ));
  }

}
