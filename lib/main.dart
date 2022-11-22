import 'package:app_laba_01/screens/app_page.dart';
import 'package:app_laba_01/screens/home_page.dart';
import 'package:app_laba_01/screens/login_email_page.dart';
import 'package:app_laba_01/screens/login_google_page.dart';
import 'package:app_laba_01/screens/settings_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'screens/landing.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
      home: LandingPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(brightness: Brightness.dark),

      /// Routes of application
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
