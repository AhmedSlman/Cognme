import 'package:cognme/core/common/functions/custom_navigate.dart';
import 'package:cognme/core/common/functions/on_boarding.dart';
import 'package:cognme/core/routes/router_names.dart';
import 'package:cognme/features/onboarding/presentation/widgets/get_buttons.dart';
import 'package:cognme/features/onboarding/presentation/widgets/onboarding_body.dart';
import 'package:cognme/features/onboarding/presentation/widgets/skip_button.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _controller = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              SkipButton(
                onTap: () {
                  onBoardingVisited();
                  customReplacementNavigate(context, RouterNames.SignUpView);
                },
              ),
              OnBoardingBody(
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                controller: _controller,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              GetButtons(currentIndex: currentIndex, controller: _controller)
            ],
          ),
        ),
      ),
    );
  }
}
