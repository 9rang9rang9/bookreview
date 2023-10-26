import 'package:dio/dio.dart';

class CustomInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['X-Naver-Client-Id'] = 'QEuheyMCoOqXRXEwkN8y';
    options.headers['X-Naver-Client-Secret'] = 'erjdndJO9V';
    super.onRequest(options, handler);
  }
}
