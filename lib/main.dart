import 'package:app_laba_01/my_app.dart';
import 'package:app_laba_01/screens/login_email_page.dart';
import 'package:app_laba_01/screens/login_google_page.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(MaterialApp(
    theme: ThemeData(),
    initialRoute: '/my app',
    routes: {
  '/my app': (context) => MyApp(),
      '/login Email': (context) => LoginEmailPage(),
      '/login Google': (context) => LoginGooglePage(),
  }
  ));
}

