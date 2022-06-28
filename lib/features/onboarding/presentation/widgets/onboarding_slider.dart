
import 'package:flutter/material.dart';
import 'package:internship_algoriza_task1/features/onboarding/presentation/screens/onboarding_screen.dart';

class OnboardingSlider extends StatelessWidget {
  const OnboardingSlider({Key? key, required this.index, required this.onBoardingList}) : super(key: key);

  final int index;
  final List<OnboardingMode> onBoardingList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Image.asset(onBoardingList[index].image),
        ),
        const SizedBox(height: 10),
        Text(onBoardingList[index].title,textAlign: TextAlign.center ,style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: 10),
        Text(onBoardingList[index].body, textAlign: TextAlign.center ,style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: 10),
      ],
    );
  }
}
