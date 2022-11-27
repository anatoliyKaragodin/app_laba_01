import 'package:app_laba_01/settings/my_preference.dart';
import 'package:test/test.dart';

import 'package:flutter_test/flutter_test.dart' as flutter_test;

void main() async {
  flutter_test.TestWidgetsFlutterBinding.ensureInitialized();

  group('localeProvider', ()
  {
    test('set ru', () async {

      final myPreferences = MyPreferences();


      await myPreferences.setLanguage('ru');
      final testField = await myPreferences.getLanguage();


      expect(testField, 'ru');
    });

    test('set en', () async {

      final myPreferences = MyPreferences();


      await myPreferences.setLanguage('en');
      final testField = await myPreferences.getLanguage();


      expect(testField, 'en');

    });
    test('set kk', () async {

      final myPreferences = MyPreferences();


      await myPreferences.setLanguage('kk');
      final testField = await myPreferences.getLanguage();


      expect(testField, 'kk');
    });
  });
}
