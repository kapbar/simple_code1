import 'package:dio/dio.dart';

class Api {
  late final dio = Dio(options)
    ..interceptors.addAll(
      [_BasicInterceptor()],
    );

  final options = BaseOptions(
    baseUrl: 'https://rickandmortyapi.com/api',
    connectTimeout: 30000,
    receiveTimeout: 30000,
  );
}

//этот класс указан для примера,
//в текущей реализации он не используется
class _BasicInterceptor implements Interceptor {
  @override
  void onError(
    DioError error,
    ErrorInterceptorHandler handler,
  ) {
    // здесь мы можем использовать логирование ошибок
    handler.next(error);
  }

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) {
    //здесь можно задавать заголовки запроса,
    //например, токен авторизации:
    //
    // options.contentType = 'application/json; charset=utf-8';
    // options.headers = {
    //   'Accept': 'application/json',
    //   'token': 'token',
    // };

    handler.next(options);
  }

  @override
  void onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) {
    handler.next(response);
  }
}
