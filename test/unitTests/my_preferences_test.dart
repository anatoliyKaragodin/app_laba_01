import 'package:test/test.dart';
import 'package:app_laba_01/settings/my_preference.dart';
// import 'package:shared_preferences/shared_preferences.dart';

void main() {
  group('my_preferences', () {
    test('setTheme', ()
    async {
      final myPreferences = MyPreferences();


      myPreferences.setTheme(false);

      expect(myPreferences.getTheme(), false);
    });
  });
}