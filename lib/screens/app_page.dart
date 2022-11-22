import 'package:flutter/material.dart';

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
              Navigator.pushNamed(context, '/home page');
            },
          ),
        ],
      ),
      body: const Center(
        child: Text('App page'),
      ),
    );
  }
}
