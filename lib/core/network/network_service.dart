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
      final response = await _sendRequest(httpMethod, endpoint, queryParameters, data, files);
      return _parseResponse<T>(response: response, fromJson: fromJson);
    } catch (exception) {
      LoggerUtils.error("$httpMethod request failed: $exception");
      rethrow;
    }
  }

  Future<List<T>> handleListRequest<T>({
    required HttpMethod httpMethod,
    required String endpoint,
    T Function(Map<String, dynamic>)? fromJson,
    Map<String, dynamic>? queryParameters,
    dynamic data,
    List<MultipartFile>? files,
  }) async {
    try {
      final response = await _sendRequest(httpMethod, endpoint, queryParameters, data, files);
      return _parseListResponse<T>(response: response, fromJson: fromJson);
    } catch (exception) {
      LoggerUtils.error("$httpMethod request failed: $exception");
      rethrow;
    }
  }


  Future<Response> _sendRequest(
      HttpMethod httpMethod,
      String endpoint,
      Map<String, dynamic>? queryParameters,
      dynamic data,
      List<MultipartFile>? files,
      ) async {
      switch(httpMethod){
        case HttpMethod.GET:
          return await _dio.get(endpoint, queryParameters:  queryParameters);
        case HttpMethod.POST:
          return await _dio.post(endpoint, data: _prepareData(data, files));
        case HttpMethod.PUT:
          return await _dio.put(endpoint, data: _prepareData(data, files));
        case HttpMethod.PATCH:
          return await _dio.patch(endpoint, data: _prepareData(data, files));
        case HttpMethod.DELETE:
          return await _dio.delete(endpoint, queryParameters: queryParameters);
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
    if (response.statusCode != null && (response.statusCode! >= 200 && response.statusCode! <= 300)) {
      throw Exception("Error: ${response.statusCode}");
    }
    if (fromJson != null) {
      if (response.data is Map<String, dynamic>) {
        return fromJson(response.data);
      }
    }
    if (response.data is T) return response.data;
    throw Exception("Unexpected response type: ${response.data.runtimeType}, expected $T");
  }

  List<T> _parseListResponse<T>({
    required Response response,
    T Function(Map<String, dynamic>)? fromJson,
  }) {
    if (response.statusCode != null && (response.statusCode! >= 200 && response.statusCode! <= 300)) {
      throw Exception("Error: ${response.statusCode}");
    }

    final responseData = response.data;

    if (fromJson != null) {
      if (responseData is List) {
        return responseData.map((json) => fromJson(json as Map<String, dynamic>)).toList();
      }
    }
    throw Exception("Unexpected response type: ${responseData.runtimeType}, expected List<Map<String, dynamic>>");
  }

}
