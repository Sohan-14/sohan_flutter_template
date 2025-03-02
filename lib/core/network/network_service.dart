import 'package:dio/dio.dart';
import 'package:sohan_flutter_template/core/config/app_constants.dart';
import 'package:sohan_flutter_template/core/enums/http_method.dart';
import 'package:sohan_flutter_template/core/storage/storage_service.dart';
import 'package:sohan_flutter_template/core/utils/logger_utils.dart';

class NetworkService {
  static final NetworkService _instance = NetworkService._internal();
  factory NetworkService() => _instance;
  late Dio _dio;

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
        String? token = StorageService.instance.getData("authToken");
        if (token != null && token.isNotEmpty) {
          options.headers['Authorization'] = 'Bearer $token';
        }
        LoggerUtils.debug("Request: Method = ${options.method} || Uri = ${options.uri} || Headers = ${options.headers}");
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

  Future<T> handleRequest<T>({
    required HttpMethod httpMethod,
    required String endpoint,
    T Function(Map<String, dynamic>)? fromJson,
    Map<String, dynamic>? queryParameters,
    dynamic data,
    List<MultipartFile>? files,
  }) async {
    try {
      switch(httpMethod){
       case HttpMethod.GET:
          return _parseResponse<T>(response: await _dio.get(endpoint, queryParameters:  queryParameters), fromJson: fromJson);
        case HttpMethod.POST:
          return _parseResponse<T>(response: await _dio.post(endpoint, data: _prepareData(data, files)), fromJson: fromJson);
        case HttpMethod.PUT:
          return _parseResponse<T>(response: await _dio.put(endpoint, data: _prepareData(data, files)), fromJson: fromJson);
        case HttpMethod.PATCH:
          return _parseResponse<T>(response: await _dio.patch(endpoint, data: _prepareData(data, files)), fromJson: fromJson);
        case HttpMethod.DELETE:
          return _parseResponse<T>(response: await _dio.delete(endpoint, queryParameters: queryParameters), fromJson: fromJson);
      }
    } catch (exception) {
      LoggerUtils.error("$httpMethod request failed: $exception");
      rethrow;
    }
  }

  dynamic _prepareData(dynamic data, List<MultipartFile>? files) {
    if (files != null && files.isNotEmpty) {
      final formData = FormData.fromMap(data ?? {});
      for (var file in files) {
        formData.files.add(MapEntry("files", file,));
      }
      return formData;
    }
    return data;
  }

  T _parseResponse<T>({required Response response, T Function(Map<String, dynamic>)? fromJson}) {
    if (response.statusCode != 200) {
      throw Exception("Error: ${response.statusCode}");
    }
    final responseData = response.data;

    if (fromJson != null) {
      if (responseData is Map<String, dynamic>) {
        return fromJson(responseData);
      }
      if (responseData is List) {
        return responseData.map((e) => fromJson(e as Map<String, dynamic>)).toList() as T;
      }
    }
    if (responseData is T) return responseData;
    throw Exception("Unexpected response type: ${responseData.runtimeType}, expected $T");
  }
}
