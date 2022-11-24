import 'package:app_laba_01/settings/my_preference.dart';
import 'package:flutter/material.dart';


class ModelLanguage extends ChangeNotifier {
  late String _locale;
  late MyPreferences _preferences;
  String get locale => _locale;

  ModelLanguage() {
    _locale = "ru";
    _preferences = MyPreferences();
    getPreferences();
  }
//Switching the themes
  set locale(String value) {
    _locale = value;
    _preferences.setLanguage(value);
    notifyListeners();
  }

  getPreferences() async {
    _locale = await _preferences.getLanguage();
    notifyListeners();
  }
}