import 'package:counter_app2/utils/helper/shared_helper.dart';
import 'package:flutter/material.dart';

class ThemeChange with ChangeNotifier
{
  SharedHelper share = SharedHelper();
  // ThemeMode mode = ThemeMode.light;
  String? theme;

  // void changeTheme(ThemeMode m1)
  // {
  //   mode = m1;
  //   notifyListeners();
  // }
  void saveTheme(String theme) {
    share.setData(theme);
    getTheme();
  }

  void getTheme()async{
    theme = await share.getData();
    notifyListeners();
  }
}