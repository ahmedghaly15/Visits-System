import 'dart:developer' show log;

import 'package:dio/dio.dart';

import '../helpers/cache_keys.dart';
import '../helpers/secure_storage_helper.dart';
import '../utils/functions/check_if_user_is_logged_in.dart';
import 'dio_logger_interceptor.dart';

class DioClient {
  /// private constructor as I don't want to allow creating an instance of this class
  DioClient._();

  static Dio? _dio;

  static Dio getDio() {
    const Duration timeOut = Duration(seconds: 30);
    if (_dio == null) {
      _dio = Dio();
      _dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut
        ..options.headers = {
          'Accept': 'application/json',
          'Authorization': 'Bearer $accessToken',
        };
      _addDioHeaders();
      _addDioLoggerInterceptor();
      return _dio!;
    } else {
      return _dio!;
    }
  }

  static void _addDioHeaders() async {
    final accessToken = await SecureStorageHelper.getSecuredString(
      CacheKeys.accessToken,
    );
    log('DIO USER ACCESS TOKEN: ${accessToken.toString()}');
    _dio!.options.headers = {
      'Accept': 'application/json',
      'Authorization': 'Bearer $accessToken',
    };
  }

  static void setTokenIntoHeaders(String token) {
    _dio?.options.headers = {'Authorization': 'Bearer $token'};
  }

  static void _addDioLoggerInterceptor() {
    _dio?.interceptors.add(DioLoggerInterceptor());
  }
}
