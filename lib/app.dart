import 'package:flutter/material.dart';
import 'package:weather_app_1810/src/config/routes/app_routes.dart';
import 'package:weather_app_1810/src/config/themes/app_theme.dart';
import 'package:weather_app_1810/src/core/utils/app_strings.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
