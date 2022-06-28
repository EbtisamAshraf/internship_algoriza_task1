import 'package:flutter/material.dart';
import 'package:internship_algoriza_task1/core/utils/app_colors.dart';
import 'package:internship_algoriza_task1/core/utils/app_strings.dart';
import 'package:internship_algoriza_task1/core/utils/assets_manager.dart';
import 'package:internship_algoriza_task1/core/widgets/custom_%20elevated_button.dart';
import 'package:internship_algoriza_task1/features/onboarding/presentation/widgets/custom_indicator.dart';
import 'package:internship_algoriza_task1/features/onboarding/presentation/widgets/onboarding_slider.dart';

class OnboardingMode {
  final String image;
  final String title;
  final String body;

  OnboardingMode(
      {required this.image, required this.title, required this.body});
}

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final List<OnboardingMode> onboardingList = [
    OnboardingMode(
        image: ImageAssets.onBoardingImage1,
        title: AppStrings.onBoardingTitle1,
        body: AppStrings.onBoardingBody1),
    OnboardingMode(
        image: ImageAssets.onBoardingImage2,
        title: AppStrings.onBoardingTitle2,
        body: AppStrings.onBoardingBody2),
  ];

  final PageController controller = PageController();

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: MaterialButton(
                  onPressed: () {},
                  shape: const StadiumBorder(),
                  color: AppColors.primaryColor.withOpacity(0.1),
                  elevation: 0.0,
                  child: const Text('Skip'),
                ),
              ),
              const SizedBox(height: 10),
              const FlutterLogo(
                size: 40.0,
              ),
              const SizedBox(height: 10),
              Expanded(
                child: PageView.builder(
                  physics: const BouncingScrollPhysics(),
                  controller: controller,
                  itemCount: onboardingList.length,
                  itemBuilder: (context, index) => OnboardingSlider(
                      index: index, onBoardingList: onboardingList),
                  onPageChanged: (page) => setState(() => currentIndex = page),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomIndicator(
                  index: currentIndex, onBoardingList: onboardingList),
              const SizedBox(
                height: 30,
              ),
              const CustomElevatedButton(txt: 'Get Started'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Don`t have an account?'),
                  TextButton(
                    onPressed: () {},
                    child: Text('Sign Up',
                        style: TextStyle(
                          color: AppColors.primaryColor,
                        )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
