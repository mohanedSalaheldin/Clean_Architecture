import 'package:flutter/material.dart';
import 'package:weather_app_1810/src/core/utils/app_strings.dart';
import 'package:weather_app_1810/src/features/get_weather_by_city_name/presentation/widgets/body_content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      title: const Text(AppStrings.appName),
    );
    return Scaffold(
      appBar: appBar,
      body: const Column(
        children: [
          BodyContent(),
        ],
      ),
    );
  }
}
