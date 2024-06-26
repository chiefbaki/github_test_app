import "dart:async";
import "package:dio/dio.dart";
import "package:flutter/foundation.dart";
import "package:git_test/core/utils/constants/api_consts.dart";

class DioSettings {
  DioSettings() {
    unawaited(setup());
  }

  Dio dio = Dio(
    BaseOptions(
      baseUrl: ApiConsts.baseUrl,
      contentType: "application/json",
      headers: {
        "Accept": "application/json",
        "Authorization": ApiConsts.token
      },
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 20),
    ),
  );

  Future<void> setup() async {
    final Interceptors interceptors = dio.interceptors;

    interceptors.clear();

    final LogInterceptor logInterceptor = LogInterceptor(
      requestBody: true,
      responseBody: true,
    );

    final QueuedInterceptorsWrapper headerInterceptors =
        QueuedInterceptorsWrapper(
      onRequest: (RequestOptions options, RequestInterceptorHandler handler) =>
          handler.next(options),
      onError: (DioException error, ErrorInterceptorHandler handler) {
        handler.next(error);
      },
      onResponse: (Response response, ResponseInterceptorHandler handler) =>
          handler.next(response),
    );
    interceptors.addAll([if (kDebugMode) logInterceptor, headerInterceptors]);
  }
}
