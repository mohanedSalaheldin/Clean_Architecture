import 'package:flutter/material.dart';
import 'package:weather_app_1810/src/core/widgets/error_widget.dart';

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.intitialRoute:
        return MaterialPageRoute(
          builder: (context) => const ErrorScreen(),
        );
      // return MaterialPageRoute(
      //   builder: (context) => BlocProvider(
      //     create: (context) => ,
      //     child: const HomeScreen()),
      // );

      // case Routes.testRoute:
      //   // return MaterialPageRoute(
      //   //   // builder: (context) => const TestScreen(),
      //   // );

      default:
    }
    return null;
  }
}

class Routes {
  static const String intitialRoute = '/';
  // static const String testRoute = '/testRoute';
}
