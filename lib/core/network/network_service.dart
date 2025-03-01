import 'package:dio/dio.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sohan_flutter_template/core/config/app_constants.dart';
import 'package:sohan_flutter_template/core/storage/storage_service.dart';
import 'package:sohan_flutter_template/core/utils/logger_utils.dart';

class NetworkService {
  static final NetworkService _instance = NetworkService._internal();
  factory NetworkService() => _instance;

  late Dio _dio;
  final StorageService  _storage = StorageService.instance;

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
        if (token != null && token.isNotEmpty) {
          options.headers['Authorization'] = 'Bearer $token';
        }
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

        if (e.response?.statusCode == 401) {
          LoggerUtils.error("Token expired or invalid. Prompting user to log in again.");
        }


        return handler.next(e);
      },
    ));
  }

  Future<T> get<T>(String endpoint, {Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await _dio.get(endpoint, queryParameters: queryParameters);
      return _parseResponse<T>(response);
    }
    catch (e) {
      LoggerUtils.error("GET request failed: $e");
      rethrow;
    }
  }


  Future<T> post<T>(String endpoint, dynamic data) async {
    try {
      final response = await _dio.post(endpoint, data: data);
      return _parseResponse<T>(response);
    } catch (e) {
      LoggerUtils.error("POST request failed: $e");
      rethrow;
    }
  }

  Future<T> put<T>(String endpoint, dynamic data) async {
    try {
      final response = await _dio.put(endpoint, data: data);
      return _parseResponse<T>(response);
    } catch (e) {
      LoggerUtils.error("PUT request failed: $e");
      rethrow;
    }
  }

  Future<T> delete<T>(String endpoint, {Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await _dio.delete(endpoint, queryParameters: queryParameters);
      return _parseResponse<T>(response);
    } catch (e) {
      LoggerUtils.error("DELETE request failed: $e");
      rethrow;
    }
  }


  T _parseResponse<T>(Response response) {
    if (response.statusCode == 200) {
      return response.data is Map<String, dynamic> ? _mapDataToModel<T>(response.data) : response.data;
    } else {
      throw Exception("Error: ${response.statusCode}");
    }
  }

  T _mapDataToModel<T>(Map<String, dynamic> data) {
    // if (T == UserModel) {
    //   return UserModel.fromJson(data) as T;
    // }
    throw Exception("Model type not supported");
  }
}
