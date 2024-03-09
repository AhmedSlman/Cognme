import 'package:cognme/core/data/cache/cache.dart';
import 'package:cognme/core/utils/app_constants.dart';
import 'package:dio/dio.dart';

class ApiInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers[ApiKeys.token] =
        CacheHelper().getData(key: ApiKeys.token) != null
            ? "${CacheHelper().getData(key: ApiKeys.token)}"
            : null;
    super.onRequest(options, handler);
  }
}
