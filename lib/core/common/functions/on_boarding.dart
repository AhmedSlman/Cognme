import 'package:cognme/core/data/cache/cache.dart';
import 'package:cognme/core/services/service_locator.dart';

void onBoardingVisited() {
  getIt<CacheHelper>().saveData(key: "isOnBoardingVisited", value: true);
}
