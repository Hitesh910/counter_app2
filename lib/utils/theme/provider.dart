import 'package:flutter/material.dart';
class ThemeProvider extends ChangeNotifier
{
  ThemeData? currentTheme;
  ThemeMode themeMode = ThemeMode.light;

  toggleTheme(bool isDark){
    themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  // setLight() {
  //   currentTheme = ThemeData(
  //     brightness: Brightness.light,
  //     appBarTheme: AppBarTheme(
  //     backgroundColor: Colors.blue,
  //     centerTitle: true,
  //     titleTextStyle:
  //     TextStyle(color: Colors.amberAccent, fontSize: 25),
  //   ),
  //   floatingActionButtonTheme:
  //   FloatingActionButtonThemeData(backgroundColor: Colors.amber),
  //   );
  //   notifyListeners();
  // }
  // setDark() {
  //   currentTheme = ThemeData(
  //     brightness: Brightness.dark,
  //     floatingActionButtonTheme:
  //     FloatingActionButtonThemeData(backgroundColor: Colors.red),
  //   );
  //   notifyListeners();
  // }
}