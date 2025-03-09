// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Themes {
  /// Dynamic dark theme
  static ThemeData darkTheme({
    required AppColorScheme s, 
  }) {
    return ThemeData(
      brightness: Brightness.dark,
      colorScheme: ColorScheme.fromSeed(
        seedColor: s.primary,
        brightness: Brightness.dark,
        primary: s.primary,
        secondary: s.secondary,
        tertiary: s.tertiary,
      ),
      scaffoldBackgroundColor: Colors.black,
      fontFamily: 'Poppins',
      iconTheme: IconThemeData(color: s.tertiary),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: s.secondary,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.grey[900],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: s.tertiary),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: s.tertiary.withValues(alpha: 0.7)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: s.tertiary),
        ),
        hintStyle: TextStyle(color: s.tertiary.withValues(alpha: 0.6)),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.black,
        elevation: 0,
        titleTextStyle: TextStyle(
            color: s.primary, fontSize: 20, fontWeight: FontWeight.bold),
        iconTheme: IconThemeData(color: s.secondary),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: s.primary,
        foregroundColor: Colors.white,
      ),
    );
  }

  /// Dynamic light theme
  static ThemeData lightTheme({
   required AppColorScheme s, 
  }) {
    return ThemeData(
      brightness: Brightness.light,
      colorScheme: ColorScheme.fromSeed(
        seedColor: s.primary,
        brightness: Brightness.light,
        primary: s.primary,
        secondary: s.secondary,
        tertiary: s.tertiary,
      ),
      scaffoldBackgroundColor: Colors.white,
      fontFamily: 'Poppins',
      iconTheme: IconThemeData(color: s.tertiary),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: s.secondary,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.grey[200],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: s.tertiary),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: s.tertiary.withValues(alpha: 0.7)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: s.tertiary),
        ),
        hintStyle: TextStyle(color: s.tertiary.withValues(alpha: 0.6)),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0,
        titleTextStyle: TextStyle(
            color: s.primary, fontSize: 20, fontWeight: FontWeight.bold),
        iconTheme: IconThemeData(color: s.secondary),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: s.primary,
        foregroundColor: Colors.white,
      ),
    );
  }
}

class AppColorScheme {
  Color primary;
  Color secondary;
  Color tertiary;
  AppColorScheme({
    required this.primary,
    required this.secondary,
    required this.tertiary,
  });
}
