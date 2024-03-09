import 'package:dio/dio.dart';

import '../../utils/app_constants.dart';
import '../cache/cache.dart';

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
