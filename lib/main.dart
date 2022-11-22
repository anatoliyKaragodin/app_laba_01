import 'package:app_laba_01/screens/app_page.dart';
import 'package:app_laba_01/screens/home_page.dart';
import 'package:app_laba_01/screens/login_email_page.dart';
import 'package:app_laba_01/screens/login_google_page.dart';
import 'package:app_laba_01/screens/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app_laba_01/settings/model_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ModelTheme(),
      child: Consumer<ModelTheme>(
          builder: (context, ModelTheme themeNotifier, child) {
            return MaterialApp(
                debugShowCheckedModeBanner: false,
              theme: themeNotifier.isDark
                  ? ThemeData(
                brightness: Brightness.dark,
              )
                  : ThemeData(
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
                  '/login Email': (context) => const LoginEmailPage(),
                  '/login Google': (context) => const LoginGooglePage(),
                  '/app page': (context) => const AppPage(),
                  '/settings page': (context) => const SettingsPage(),
                },
              title: 'Flutter Demo',

              home:const HomePage(),
            );
          }),
    );
  }
}
