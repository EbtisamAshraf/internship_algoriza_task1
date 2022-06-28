import 'package:flutter/material.dart';
import 'package:internship_algoriza_task1/app.dart';
import 'package:internship_algoriza_task1/core/utils/app_strings.dart';



class Routes {
  static const String initRoute = '/';
  static const String favouriteRoute = '/favourite';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initRoute:
        return MaterialPageRoute(builder: (_) => const MyApp());


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
