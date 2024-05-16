import 'package:flutter/material.dart';

class ThemeChange with ChangeNotifier
{
  ThemeMode mode = ThemeMode.light;

  void changeTheme(ThemeMode m1)
  {
    mode = m1;
    notifyListeners();
  }
}