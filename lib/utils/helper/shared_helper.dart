import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedHelper
{
  Future<void> setData(String mode)
  async {
    SharedPreferences sha =   await SharedPreferences.getInstance();
    sha.setString("theme", mode);
  }

Future<String?> getData()
  async {
     SharedPreferences share = await SharedPreferences.getInstance();
    String? data = share.getString('theme');
    return data;
  }
}