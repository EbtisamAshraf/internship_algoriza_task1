import 'package:flutter/material.dart';
import 'package:internship_algoriza_task1/core/utils/app_colors.dart';

ThemeData appTheme() {
  return ThemeData(
    primaryColor: AppColors.primaryColor,
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 18,
      ),
    ),
    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
        height: 1.2,

      ),
      bodyLarge: TextStyle(
        color: Colors.grey,
        fontSize: 22,
        fontWeight: FontWeight.w500,
        height: 1.5,
      ),
    ),
  );
}
