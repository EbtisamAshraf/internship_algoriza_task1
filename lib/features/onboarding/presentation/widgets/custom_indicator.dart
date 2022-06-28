import 'package:flutter/material.dart';
import 'package:internship_algoriza_task1/core/utils/app_colors.dart';
import 'package:internship_algoriza_task1/features/onboarding/presentation/screens/onboarding_screen.dart';

class CustomIndicator extends StatefulWidget {
  final int index;
  final List<OnboardingMode> onBoardingList;

  const CustomIndicator({
    Key? key,
    required this.index,
    required this.onBoardingList,
  }) : super(key: key);

  @override
  State<CustomIndicator> createState() => _CustomIndicatorState();
}

class _CustomIndicatorState extends State<CustomIndicator> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: List.generate(
                widget.onBoardingList.length,
                (index) => widget.index == index
                    ? const ActiveDot()
                    : const InactiveDot()),
          ),
        ],
      ),
    );
  }
}

class ActiveDot extends StatelessWidget {
  const ActiveDot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 22,
        height: 8,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}

class InactiveDot extends StatelessWidget {
  const InactiveDot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 22,
        height: 8,
        decoration: BoxDecoration(
          color: Colors.grey[400],
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
