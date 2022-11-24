import 'package:shared_preferences/shared_preferences.dart';

class MyPreferences {
  static const THEME_KEY = "theme_key";
  static const LANGUAGE_KEY = "language_key";

  setTheme(bool value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool(THEME_KEY, value);
  }

  getTheme() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(THEME_KEY) ?? false;
  }

  setLanguage(String value) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(LANGUAGE_KEY, value);
  }

  getLanguage() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(LANGUAGE_KEY) ?? "ru";
  }
}


