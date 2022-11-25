import 'package:app_laba_01/firebase_options.dart';
import 'package:app_laba_01/l10n/all_locales.dart';
import 'package:app_laba_01/screens/app_page.dart';
import 'package:app_laba_01/screens/home_page.dart';
import 'package:app_laba_01/screens/settings_page.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:app_laba_01/settings/model_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:app_laba_01/locale_provider.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';

void main() async {
WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

    FirebaseUIAuth.configureProviders([
        GoogleProvider(clientId: '871867126085-0bjbb0kuohbg12vpmqf2sdtgp4o0776c.apps.googleusercontent.com'),
    ]);
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
              locale:
              // Locale("ru"),
              localeNotifier.locale,
              localizationsDelegates: AppLocalizations.localizationsDelegates,
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
