import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

/// Main application page with nothing
///
class AppPage extends StatelessWidget {
  const AppPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: buildBody(),
    );
  }

  Center buildBody() {
    return Center(child: Image.asset('images/rofl.jpeg')
        // Text(AppLocalizations.of(context).appText),
        );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
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
    );
  }
}
