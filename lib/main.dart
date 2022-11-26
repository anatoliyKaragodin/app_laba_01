import 'package:app_laba_01/firebase_options.dart';
import 'package:app_laba_01/l10n/all_locales.dart';
import 'package:app_laba_01/screens/app_page.dart';
import 'package:app_laba_01/screens/auth_page.dart';
import 'package:app_laba_01/screens/home_page.dart';
import 'package:app_laba_01/screens/settings_page.dart';

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
              locale: localeNotifier.locale,
              localizationsDelegates: [
                AppLocalizations.delegate,
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
                      brightness: Brightness.dark,
                    )
                  : ThemeData(
                      textTheme:
                          TextTheme(bodyText2: TextStyle(fontSize: 18.0)),
                      brightness: Brightness.light,
                    ),

              /// Routes of application
              ///
              initialRoute: '/home page',
              routes: {
                '/auth_page': (context) => const AuthPage(),
                '/home page': (context) => const HomePage(),
                '/app page': (context) => const AppPage(),
                '/settings page': (context) => const SettingsPage(),
              },
              title: 'Flutter Demo',
            );
          }),
        );
      }),
    );
  }
}
