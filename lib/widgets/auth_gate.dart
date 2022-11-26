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
        if (snapshot.hasData) {
          return AppPage();
        } else {
          return const SignInScreen(
            providerConfigs: [
              EmailProviderConfiguration(),
              GoogleProviderConfiguration(
                  clientId:
                      '871867126085-0bjbb0kuohbg12vpmqf2sdtgp4o0776c.apps.googleusercontent.com'
              ),
              AppleProviderConfiguration()
            ],
          );
        }
      },
    );
  }
}
