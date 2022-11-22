import 'package:app_laba_01/screens/app_page.dart';
import 'package:app_laba_01/screens/home_page.dart';
import 'package:app_laba_01/screens/login_email_page.dart';
import 'package:app_laba_01/screens/login_google_page.dart';
import 'package:app_laba_01/screens/settings_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(brightness: Brightness.dark),

      /// Routes of application
      ///
      ///
      initialRoute: '/home page',
      routes: {
        '/home page': (context) => const HomePage(),
        '/login Email': (context) => const LoginEmailPage(),
        '/login Google': (context) => const LoginGooglePage(),
        '/app page': (context) => const AppPage(),
        '/settings page': (context) => const SettingsPage(),
      }));
}
