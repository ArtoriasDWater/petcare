import 'package:flutter/material.dart';
import '../constants/constants.dart';

class AppTheme {
  AppTheme._(); //Sirve para que mi clase se vuelva global

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true, //1 Material 3
      //Color principal
      colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
      //Tipografia
      fontFamily: 'Roboto',
      //Botones personalizados
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(10),
          ),
        ),
      ),
      textTheme: const TextTheme(
        headlineLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        headlineMedium: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        bodyLarge: TextStyle(fontSize: 16, color: Colors.black),
      ),
    );
  }
}
