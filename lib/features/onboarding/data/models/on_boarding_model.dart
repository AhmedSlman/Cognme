import 'package:cognme/core/utils/app_assets.dart';

class OnboardingModel {
  final String imagePath;
  final String title;
  final String subTitle;

  OnboardingModel({
    required this.imagePath,
    required this.title,
    required this.subTitle,
  });
}

List<OnboardingModel> onBoardingData = [
  OnboardingModel(
    imagePath: AppAssets.OnBoarding1,
    title: "Explore The History With Cognme In Smart Way",
    subTitle:
        "Using our app history libraries can find many historical periods",
  ),
  OnboardingModel(
    imagePath: AppAssets.OnBoarding2,
    title: "From Every Place On Earth",
    subTitle: "A big variety of ancient places from all over the world",
  ),
  OnboardingModel(
    imagePath: AppAssets.OnBoarding2,
    title: "Using Modern AI Technology For Better User Experience",
    subTitle:
        "AI provide recommendation and helps you to continue the search journey",
  ),
];
