import 'package:get_it/get_it.dart';

import '../data/cache/cach.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
  //getIt.registerSingleton<AuthCubit>(AuthCubit());
}
