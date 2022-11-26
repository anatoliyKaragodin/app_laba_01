import 'package:app_laba_01/firebase_options.dart';
import 'package:app_laba_01/l10n/all_locales.dart';
import 'package:app_laba_01/screens/app_page.dart';
import 'package:app_laba_01/screens/home_page.dart';
import 'package:app_laba_01/screens/settings_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/foundation.dart' show SynchronousFuture;
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/i10n.dart';

import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:app_laba_01/settings/model_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:app_laba_01/locale_provider.dart';
import 'package:app_laba_01/l10n/ru_locale.dart';
import 'package:app_laba_01/l10n/kk_locale.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

// class DemoLocalizations {
//   DemoLocalizations(this.locale);
//
//   final Locale locale;
//
//   static DemoLocalizations of(BuildContext context) {
//     return Localizations.of<DemoLocalizations>(context, DemoLocalizations)!;
//   }
//
//   static const _localizedValues = <String, Map<String, String>>{
//     'ru': {
//       'title': 'Hello World',
//     },
//     'en': {
//       'title': 'Hola Mundo',
//     },
//     'kk': {
//       'title': 'Hola Mundo',
//     },
//   };
//
//   static List<String> languages ()=> _localizedValues.keys.toList();
//
//   String get title {
//     return _localizedValues[locale.languageCode]!['title']!;
//   }
// }
// // #enddocregion Demo
//
// // #docregion Delegate
// class DemoLocalizationsDelegate
//     extends LocalizationsDelegate<DemoLocalizations> {
//   const DemoLocalizationsDelegate();
//
//   @override
//   bool isSupported(Locale locale) => DemoLocalizations.languages().contains(locale.languageCode);
//
//
//   @override
//   Future<DemoLocalizations> load(Locale locale) {
//     // Returning a SynchronousFuture here because an async "load" operation
//     // isn't needed to produce an instance of DemoLocalizations.
//     return SynchronousFuture<DemoLocalizations>(DemoLocalizations(locale));
//   }
//
//   @override
//   bool shouldReload(DemoLocalizationsDelegate old) => false;
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ModelTheme(),
      child: Consumer<ModelTheme>(
          builder: (context, ModelTheme themeNotifier, child) {
        return ChangeNotifierProvider(
          create: (_) => LocaleProvider(),
          child: Consumer<LocaleProvider>(
              builder: (context, LocaleProvider localeNotifier, child) {
            return MaterialApp(
              supportedLocales: AllLocale.all,
              locale:
                  // Locale("ru"),
                  localeNotifier.locale,
              localizationsDelegates: [
                AppLocalizations.delegate,
                // FlutterFireUILocalizations.withDefaultOverrides(const LabelOverrides()),
                FlutterFireUILocalizations.delegate,
                FlutterFireUIRuLocalizationsDelegate(),
                FlutterFireUIKkLocalizationsDelegate(),
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate
              ],
              debugShowCheckedModeBanner: false,
              theme: themeNotifier.isDark
                  ? ThemeData(
                      textTheme:
                          TextTheme(bodyText2: TextStyle(fontSize: 18.0)),
                      // buttonTheme: ButtonTheme(textTheme: ButtonTextTheme.normal),
                      brightness: Brightness.dark,
                    )
                  : ThemeData(
                      textTheme:
                          TextTheme(bodyText2: TextStyle(fontSize: 18.0)),
                      brightness: Brightness.light,

                      // primarySwatch: Colors.orange
                    ),
              // themeMode: ThemeMode.dark,
              // darkTheme: ThemeData(brightness: Brightness.dark),

              /// Routes of application
              ///
              initialRoute: '/home page',
              routes: {
                '/home page': (context) => const HomePage(),
                '/app page': (context) => const AppPage(),
                '/settings page': (context) => const SettingsPage(),
              },
              title: 'Flutter Demo',

              // home: const HomePage(),
            );
          }),
        );
      }),
    );
  }
}
