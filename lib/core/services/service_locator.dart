import 'package:cognme/core/data/cache/cache.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
  // getIt.registerSingleton<AuthCubit>(AuthCubit());
}
