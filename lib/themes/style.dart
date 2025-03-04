import 'package:flutter/material.dart';

import 'colors.dart';

class AppTheme {
//Customer Text Theme
  // ignore: prefer_const_declarations
  static final customTextTheme = const TextTheme(
      bodyLarge: TextStyle(fontFamily: 'DB_Heavent', fontSize: 24, color: accent),
      bodyMedium: TextStyle(fontFamily: 'DB_Heavent', fontSize: 18, color: accent),
      bodySmall: TextStyle(fontFamily: 'DB_Heavent', fontSize: 16, color: accent));

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
              fontFamily: 'DB_Heavent', fontSize: 20, fontWeight: FontWeight.w500),
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
              fontFamily: 'DB_Heavent', fontSize: 20, fontWeight: FontWeight.w500),
          backgroundColor: primary,
          foregroundColor: icons,
          iconTheme: IconThemeData(color: icons)));
}
