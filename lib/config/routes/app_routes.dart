import 'package:flutter/material.dart';
import 'package:internship_algoriza_task1/core/utils/app_strings.dart';
import 'package:internship_algoriza_task1/features/authentication/presentation/screens/login_screen.dart';
import 'package:internship_algoriza_task1/features/authentication/presentation/screens/register_screen.dart';
import 'package:internship_algoriza_task1/features/onboarding/presentation/screens/onboarding_screen.dart';



class Routes {
  static const String initRoute = '/';
  static const String registerRoute = '/register';
  static const String loginRoute = '/login';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initRoute:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());

      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) =>  RegisterScreen());

      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) =>  LoginScreen());


      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(AppStrings.noRouteFound),
              ),
              body: const Center(child: Text(AppStrings.noRouteFound)),
            ));
  }
}
