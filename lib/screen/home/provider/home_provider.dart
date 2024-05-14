import 'package:flutter/material.dart';

class HomeProvider with ChangeNotifier
{
  int i = 0;

  void increment() {
    i++;
    notifyListeners();
  }

  void decrement() {
    i--;
    notifyListeners();
  }

  void double() {
    i = i * i;
    notifyListeners();
  }

  void triple() {
    i = i * i * i;
    notifyListeners();
  }

  void four() {
    i = i * i * i * i;
    notifyListeners();
  }
}