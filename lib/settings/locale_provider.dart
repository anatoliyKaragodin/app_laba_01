import 'package:app_laba_01/settings/my_preference.dart';
import 'package:flutter/material.dart';

import 'package:app_laba_01/l10n/all_locales.dart';

class LocaleProvider extends ChangeNotifier {
  late MyPreferences _preferences;
  late String _locale;
  get locale => _locale;

  LocaleProvider() {
    _locale = 'ru';
    _preferences = MyPreferences();
    getLanguagePreferences();
  }

  setLocale(String locale) {
    _locale = locale;
    if (!AllLocale.all.contains(locale)) return;
    _preferences.setLanguage(locale);
    notifyListeners();
  }

  getLanguagePreferences() async {
    _locale = await _preferences.getLanguage();
    notifyListeners();
  }

}
