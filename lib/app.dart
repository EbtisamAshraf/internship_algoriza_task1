
import 'package:flutter/material.dart';
import 'package:internship_algoriza_task1/config/routes/app_routes.dart';
import 'package:internship_algoriza_task1/config/themes/app_theme.dart';
import 'package:internship_algoriza_task1/core/utils/app_strings.dart';
import 'package:internship_algoriza_task1/features/counter/presentation/pages/counter_screen.dart';
import 'package:internship_algoriza_task1/features/onboarding/presentation/screens/onboarding_screen.dart';


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppStrings.appName,
      theme: appTheme(),
      home:  const CounterScreen(),
      onGenerateRoute: RouteGenerator.getRoute,
    );
  }
}
