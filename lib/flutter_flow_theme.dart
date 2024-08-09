import 'package:flutter/material.dart';

class FlutterFlowTheme {
  static ThemeData of(BuildContext context) {
    return Theme.of(context).copyWith(
      colorScheme: Theme.of(context).colorScheme.copyWith(
        primary: const Color(0xFF4B39EF),
        secondary: const Color(0xFF39D2C0),
        tertiary: const Color(0xFFEE8B60),
        error: const Color(0xFFFF5963),
      ),
      scaffoldBackgroundColor: const Color(0xFFF1F4F8),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFFF1F4F8),
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontFamily: 'Outfit',
          color: Color(0xFF101213),
          fontSize: 57,
          fontWeight: FontWeight.w900,
          letterSpacing: 1.5,
        ),
        displayMedium: TextStyle(
          fontFamily: 'Outfit',
          color: Color(0xFF101213),
          fontSize: 45,
          fontWeight: FontWeight.w900,
          letterSpacing: 0,
        ),
        displaySmall: TextStyle(
          fontFamily: 'Outfit',
          color: Color(0xFF101213),
          fontSize: 36,
          fontWeight: FontWeight.w800,
          letterSpacing: -0.5,
        ),
        headlineLarge: TextStyle(
          fontFamily: 'Outfit',
          color: Color(0xFF101213),
          fontSize: 32,
          fontWeight: FontWeight.w600,
          letterSpacing: 0,
        ),
        headlineMedium: TextStyle(
          fontFamily: 'Outfit',
          color: Color(0xFF101213),
          fontSize: 28,
          fontWeight: FontWeight.w600,
          letterSpacing: 0,
        ),
        headlineSmall: TextStyle(
          fontFamily: 'Outfit',
          color: Color(0xFF101213),
          fontSize: 24,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.5,
        ),
        titleLarge: TextStyle(
          fontFamily: 'Outfit',
          color: Color(0xFF101213),
          fontSize: 22,
          fontWeight: FontWeight.bold,
          letterSpacing: 0,
        ),
        titleMedium: TextStyle(
          fontFamily: 'Outfit',
          color: Color(0xFF57636C),
          fontSize: 16,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.15,
        ),
        titleSmall: TextStyle(
          fontFamily: 'Outfit',
          color: Color(0xFF57636C),
          fontSize: 14,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.1,
        ),
        bodyLarge: TextStyle(
          fontFamily: 'Outfit',
          color: Color(0xFF101213),
          fontSize: 16,
          fontWeight: FontWeight.normal,
          letterSpacing: 0.5,
        ),
        bodyMedium: TextStyle(
          fontFamily: 'Outfit',
          color: Color(0xFF101213),
          fontSize: 14,
          fontWeight: FontWeight.normal,
          letterSpacing: 0.25,
        ),
        bodySmall: TextStyle(
          fontFamily: 'Outfit',
          color: Color(0xFF57636C),
          fontSize: 12,
          fontWeight: FontWeight.normal,
          letterSpacing: 0.4,
        ),
        labelLarge: TextStyle(
          fontFamily: 'Outfit',
          color: Color(0xFF57636C),
          fontSize: 14,
          fontWeight: FontWeight.w500,
          letterSpacing: 1.25,
        ),
        labelMedium: TextStyle(
          fontFamily: 'Outfit',
          color: Color(0xFF57636C),
          fontSize: 12,
          fontWeight: FontWeight.w500,
          letterSpacing: 1.5,
        ),
        labelSmall: TextStyle(
          fontFamily: 'Outfit',
          color: Color(0xFF57636C),
          fontSize: 11,
          fontWeight: FontWeight.w500,
          letterSpacing: 1.5,
        ),
      ),
    );
  }
}