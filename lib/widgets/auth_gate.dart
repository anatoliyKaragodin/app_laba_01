import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';


import 'package:app_laba_01/screens/app_page.dart';

class AuthGate extends StatelessWidget {
 const AuthGate({Key? key}) : super(key: key);

 @override
 Widget build(BuildContext context) {
   return StreamBuilder<User?>(
     stream: FirebaseAuth.instance.authStateChanges(),
     builder: (context, snapshot) {
       if (!snapshot.hasData) {
         return const SignInScreen(
           providerConfigs:  [
             EmailProviderConfiguration(),
             GoogleProviderConfiguration(clientId: '1:871867126085:web:498f95852d67b1df1eae2c'),
           ],
         );
       }

       return const AppPage();
     },
   );
 }
}