import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:provider/provider.dart';

/// Main application page with nothing
///
class AppPage extends StatelessWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          /// Settings icon
          ///
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.pushNamed(context, '/settings page');
            },
          ),
          /// Logout icon
          ///
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              FirebaseAuth.instance.signOut();
              Navigator.pushNamed(context, '/home page');
            },
          ),
        ],
      ),
      body: Center(
        child: 
        Image.asset('images/rofl.jpeg')
        // Text(AppLocalizations.of(context).appText),
      ),
    );
  }
}
