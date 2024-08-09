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

  // Define the colors that are being used in the code but are missing in the theme
  static Color get primaryText => const Color(0xFF101213);
  static Color get secondaryText => const Color(0xFF57636C);
  static Color get primaryBackground => const Color(0xFFFFFFFF);
  static Color get secondaryBackground => const Color(0xFFF1F4F8);
  static Color get alternate => const Color(0xFF39D2C0);
  static Color get primary => const Color(0xFF4B39EF);
  static Color get secondary => const Color(0xFF39D2C0);
  static Color get tertiary => const Color(0xFFEE8B60);
 

  // Add getters for the text styles
  static TextStyle get headlineLarge => const TextStyle(
        fontFamily: 'Outfit',
        color: Color(0xFF101213),
        fontSize: 32,
        fontWeight: FontWeight.w600,
        letterSpacing: 0,
      );

  static TextStyle get headlineMedium => const TextStyle(
        fontFamily: 'Outfit',
        color: Color(0xFF101213),
        fontSize: 28,
        fontWeight: FontWeight.w600,
        letterSpacing: 0,
      );

  static TextStyle get labelLarge => const TextStyle(
        fontFamily: 'Outfit',
        color: Color(0xFF57636C),
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25,
      );

  static TextStyle get labelMedium => const TextStyle(
        fontFamily: 'Outfit',
        color: Color(0xFF57636C),
        fontSize: 12,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.5,
      );

  static TextStyle get bodyLarge => const TextStyle(
        fontFamily: 'Outfit',
        color: Color(0xFF101213),
        fontSize: 16,
        fontWeight: FontWeight.normal,
        letterSpacing: 0.5,
      );

  static TextStyle get bodyMedium => const TextStyle(
        fontFamily: 'Outfit',
        color: Color(0xFF101213),
        fontSize: 14,
        fontWeight: FontWeight.normal,
        letterSpacing: 0.25,
      );

  static TextStyle get titleSmall => const TextStyle(
        fontFamily: 'Outfit',
        color: Color(0xFF57636C),
        fontSize: 14,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
      );
}
