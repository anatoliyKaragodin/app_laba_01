import 'package:app_laba_01/settings/my_preference.dart';
import 'package:test/test.dart';

import 'package:flutter_test/flutter_test.dart' as flutter_test;

void main() async {
  flutter_test.TestWidgetsFlutterBinding.ensureInitialized();

  group('modelTheme', ()
  {
    test('set isDark', () async {

      final myPreferences = MyPreferences();


      await myPreferences.setTheme(false);
      final testField = await myPreferences.getTheme();


      expect(testField, false);
    });

  });
}
