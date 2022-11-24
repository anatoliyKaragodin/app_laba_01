import 'package:app_laba_01/settings/my_preference.dart';
import 'package:flutter/material.dart';


class ModelTheme extends ChangeNotifier {
  late bool _isDark;
  late MyPreferences _preferences;
  bool get isDark => _isDark;

  ModelTheme() {
    _isDark = false;
    _preferences = MyPreferences();
    getPreferences();
  }
//Switching the themes
  set isDark(bool value) {
    _isDark = value;
    _preferences.setTheme(value);
    notifyListeners();
  }

  getPreferences() async {
    _isDark = await _preferences.getTheme();
    notifyListeners();
  }
}