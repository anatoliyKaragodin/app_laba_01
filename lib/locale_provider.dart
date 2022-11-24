import 'package:flutter/material.dart';

import 'package:app_laba_01/l10n/all_locales.dart';

class LocaleProvider with ChangeNotifier {
  late Locale _locale = Locale("ru");
  Locale get locale => _locale;
  void setLocale(Locale locale) {
    if (!AllLocale.all.contains(locale)) return;
    _locale = locale;
    notifyListeners();
  }
}