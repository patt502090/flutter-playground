import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class WebApiService {
  WebApiService._(this._dio);

  static final WebApiService _instance = WebApiService._(_createDio());

  factory WebApiService() => _instance;

  final Dio _dio;

  Future<Response<dynamic>> feed() {
    return _dio.get(
      'https://codemobiles.com/adhoc/youtubes/index_new.php',
      queryParameters: {'username': 'admin', 'password': '******'},
    );
  }

  static Dio _createDio() {
    final dio = Dio();
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.headers['Accept'] = 'application/json';
          handler.next(options);
        },
        onError: (error, handler) {
          debugPrint('API error: ${error.message}');
          handler.next(error);
        },
      ),
    );
    return dio;
  }
}
