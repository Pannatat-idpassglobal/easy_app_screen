import 'package:flutter/material.dart';

import 'colors.dart';

class AppTheme {
//Customer Text Theme
  // ignore: prefer_const_declarations
  static final TextTheme customTextTheme = TextTheme(
    // Display
    displayLarge: TextStyle(
        fontFamily: 'DB_HelvethaicaAIS',
        fontSize: 88,
        letterSpacing: 0,
        fontWeight: FontWeight.bold,
        color: accent,
        height: 1),
    displayMedium: TextStyle(
        fontFamily: 'DB_HelvethaicaAIS',
        fontSize: 80,
        letterSpacing: 0,
        fontWeight: FontWeight.bold,
        color: accent,
        height: 1),
    displaySmall: TextStyle(
        fontFamily: 'DB_HelvethaicaAIS',
        fontSize: 72,
        letterSpacing: 0,
        fontWeight: FontWeight.bold,
        color: accent,
        height: 1),

    // Headline
    headlineLarge: TextStyle(
        fontFamily: 'DB_HelvethaicaAIS',
        fontSize: 64,
        letterSpacing: 0,
        fontWeight: FontWeight.bold,
        color: accent,
        height: 1),
    headlineMedium: TextStyle(
        fontFamily: 'DB_HelvethaicaAIS',
        fontSize: 56,
        letterSpacing: 0,
        fontWeight: FontWeight.bold,
        color: accent,
        height: 1),
    headlineSmall: TextStyle(
        fontFamily: 'DB_HelvethaicaAIS',
        fontSize: 48,
        letterSpacing: 0,
        fontWeight: FontWeight.bold,
        color: accent,
        height: 1),

    // Title
    titleLarge: TextStyle(
        fontFamily: 'DB_HelvethaicaAIS',
        fontSize: 40,
        letterSpacing: 0,
        fontWeight: FontWeight.w500,
        color: accent,
        height: 1),
    titleMedium: TextStyle(
        fontFamily: 'DB_HelvethaicaAIS',
        fontSize: 32,
        letterSpacing: 0,
        fontWeight: FontWeight.w500,
        color: accent,
        height: 1.12),
    titleSmall: TextStyle(
        fontFamily: 'DB_HelvethaicaAIS',
        fontSize: 28,
        letterSpacing: 0,
        fontWeight: FontWeight.w500,
        color: accent,
        height: 1.12),

    // Body
    bodyLarge: TextStyle(
        fontFamily: 'DB_HelvethaicaAIS',
        fontSize: 24,
        color: accent,
        letterSpacing: 0,
        height: 1.12),
    bodyMedium: TextStyle(
        fontFamily: 'DB_HelvethaicaAIS',
        fontSize: 20,
        letterSpacing: 0,
        color: accent,
        height: 1.12),
    bodySmall: TextStyle(
        fontFamily: 'DB_HelvethaicaAIS',
        fontSize: 16,
        letterSpacing: 0,
        color: accent,
        height: 1.12),

    // Label
    labelLarge: TextStyle(
        fontFamily: 'DB_HelvethaicaAIS',
        fontSize: 18,
        letterSpacing: 0,
        fontWeight: FontWeight.w600,
        color: accent,
        height: 1),
    labelMedium: TextStyle(
        fontFamily: 'DB_HelvethaicaAIS',
        fontSize: 14,
        letterSpacing: 0,
        fontWeight: FontWeight.w600,
        color: accent,
        height: 1),
    labelSmall: TextStyle(
        fontFamily: 'DB_HelvethaicaAIS',
        fontSize: 12,
        letterSpacing: 0,
        fontWeight: FontWeight.w600,
        color: accent,
        height: 1),
  );

  static final ThemeData lightTheme = ThemeData(
      textTheme: customTextTheme,
      primaryColor: primary,
      primaryColorDark: primaryDark,
      primaryColorLight: primaryLight,
      hoverColor: divider,
      hintColor: accent,
      colorScheme: const ColorScheme.light(primary: primary),
      iconTheme: const IconThemeData(color: icons),
      appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
              fontFamily: 'DB_HelvethaicaAIS',
              fontSize: 28,
              fontWeight: FontWeight.w500),
          backgroundColor: primary,
          foregroundColor: icons,
          iconTheme: IconThemeData(color: icons)));

  static final ThemeData darkTheme = ThemeData(
      textTheme: customTextTheme,
      primaryColor: primary,
      primaryColorDark: primaryDark,
      primaryColorLight: primaryLight,
      hoverColor: white,
      hintColor: accent,
      colorScheme: const ColorScheme.dark(primary: white),
      iconTheme: const IconThemeData(color: icons),
      scaffoldBackgroundColor: primaryText,
      appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
              fontFamily: 'DB_HelvethaicaAIS',
              fontSize: 20,
              fontWeight: FontWeight.w500),
          backgroundColor: primary,
          foregroundColor: icons,
          iconTheme: IconThemeData(color: icons)));
}
