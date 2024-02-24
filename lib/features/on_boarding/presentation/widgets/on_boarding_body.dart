import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';
import '../../data/models/on_boarding_model.dart';
import 'custom_smooth_page_indicator.dart';

class OnBoardingBody extends StatelessWidget {
  OnBoardingBody({super.key, required this.controller, this.onPageChanged});
  final PageController controller;
  final Function(int)? onPageChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .78,
      child: PageView.builder(
        onPageChanged: onPageChanged,
        physics: const BouncingScrollPhysics(),
        controller: controller,
        itemCount: onBoardingData.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .4,
                width: MediaQuery.of(context).size.height * .5,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        onBoardingData[index].imagPath,
                      ),
                      fit: BoxFit.fill),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomSmoothPageIndecator(controller: controller),
              SizedBox(
                height: MediaQuery.of(context).size.height * .1,
              ),
              Text(
                onBoardingData[index].title,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: AppStyles.s24.copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .05,
              ),
              Text(
                onBoardingData[index].subTitle,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: AppStyles.s16,
                textAlign: TextAlign.center,
              ),
            ],
          );
        },
      ),
    );
  }
}
