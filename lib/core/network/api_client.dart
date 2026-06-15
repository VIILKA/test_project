import 'package:dio/dio.dart';
import '../config/app_config.dart';

class ApiClient {
  final Dio dio;

  ApiClient({Dio? overrideDio})
    : dio =
          overrideDio ??
          Dio(
            BaseOptions(
              baseUrl: AppConfig.baseUrl,
              connectTimeout: const Duration(seconds: 10),
              receiveTimeout: const Duration(seconds: 10),
              headers: {'Content-Type': 'application/json'},
            ),
          ) {
    dio.interceptors.add(
      InterceptorsWrapper(
        onError: (DioException e, handler) {
          if (e.response?.data != null && e.response?.data is Map) {
            final message = e.response?.data['message'];
            if (message != null) {
              return handler.reject(
                DioException(
                  requestOptions: e.requestOptions,
                  response: e.response,
                  type: e.type,
                  error: message,
                ),
              );
            }
          }
          handler.next(e);
        },
      ),
    );
  }
}
