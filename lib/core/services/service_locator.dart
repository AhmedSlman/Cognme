import 'package:get_it/get_it.dart';

import '../../features/auth/presentation/auth_cubit/auth_cubit.dart';
import '../data/cache/cache.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
  getIt.registerSingleton<AuthCubit>(AuthCubit());
}
