import 'package:flutter/material.dart';

class AppThemes {
  static const Color primary = Colors.purpleAccent;

  static final ThemeData purpleDarkTheme = ThemeData.dark().copyWith(
      primaryColor: Colors.purpleAccent.shade400,
      appBarTheme: const AppBarTheme(color: primary, elevation: 0));
  static final ThemeData purpleLightTheme = ThemeData.light().copyWith(
      primaryColor: Colors.purpleAccent.shade700,
      appBarTheme: const AppBarTheme(color: primary, elevation: 0));
}
