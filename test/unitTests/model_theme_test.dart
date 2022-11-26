import 'package:test/test.dart';
import 'package:app_laba_01/settings/model_theme.dart';
import 'package:flutter_test/flutter_test.dart' as flutterTest;

void main() {
  flutterTest.TestWidgetsFlutterBinding.ensureInitialized();

  group('modelTheme', ()
  {
    test('set isDark', () {
      final modelTheme = ModelTheme();

      modelTheme.isDark;

      expect(modelTheme.isDark, false);
    });

    // test('getPreferences', () {
    //   final modelTheme = ModelTheme();
    //   modelTheme.isDark;
    //   modelTheme.isDark(false);
    //
    // });
  });
}
