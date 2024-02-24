import 'package:cognme/core/utils/app_assets.dart';

class OnboardingModel {
  final String imagPath;
  final String title;
  final String subTitle;

  OnboardingModel({
    required this.imagPath,
    required this.title,
    required this.subTitle,
  });
}

List<OnboardingModel> onBoardingData = [
  OnboardingModel(
    imagPath: AppAssets.imagesOnBoarding1,
    title: "Explore The History With Dalel In Smart Way",
    subTitle:
        "Using our app history libraries can find many historical periods",
  ),
  OnboardingModel(
    imagPath: AppAssets.imagesOnBoarding2,
    title: "From Every Place On Earth",
    subTitle: "A big variety of ancient places from all over the world",
  ),
  OnboardingModel(
    imagPath: AppAssets.imagesOnBoarding2,
    title: "Using Modern AI Technology For Better User Experince",
    subTitle:
        "AI provide recommendation and helps you to continue the search journy",
  ),
];
