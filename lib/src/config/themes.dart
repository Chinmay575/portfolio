import 'package:flutter/material.dart';
import 'package:portfolio/src/utils/constants.dart';

class AppThemes {
  static ThemeData defaultTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    fontFamily: AppStrings.defaultFont,
  );
}
