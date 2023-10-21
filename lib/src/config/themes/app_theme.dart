import 'package:flutter/material.dart';
import 'package:weather_app_1810/src/core/utils/app_colors.dart';

ThemeData appTheme() {
  return ThemeData(
    primaryColor: AppColors.primary,
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 23,
        fontWeight: FontWeight.w500,
      ),
    ),
    textTheme: const TextTheme(
        bodyMedium: TextStyle(
      color: Colors.white,
      fontSize: 22,
      fontWeight: FontWeight.bold,
      height: 1.3,
    )),
  );
}
