import 'package:flutter/material.dart';

import '../../../../core/functions/custom_navigate.dart';
import '../../../../core/functions/on_boarding.dart';
import '../widgets/get_buttons.dart';
import '../widgets/on_boarding_body.dart';
import '../widgets/skip_botton.dart';

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
                  customReplacementNavigate(context, "/signUp");
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
