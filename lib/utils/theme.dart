import 'package:flutter/material.dart';

ThemeData LightTheme = ThemeData(
  brightness: Brightness.light,
  floatingActionButtonTheme:
      const FloatingActionButtonThemeData(backgroundColor: Colors.pink),
);

ThemeData DarkTheme = ThemeData(
  brightness: Brightness.dark,
  floatingActionButtonTheme:
      const FloatingActionButtonThemeData(backgroundColor: Colors.amber),
);
