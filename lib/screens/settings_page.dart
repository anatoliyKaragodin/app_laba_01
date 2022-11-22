import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            /// Close icon(return to app_page)
            ///
            IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                Navigator.pushNamed(context, '/app page');
              },
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Application theme option
            ///
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Тема приложения'),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.light_mode),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.dark_mode),
                ),
              ],
            ),
            /// Application language option
            ///
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: () {}, child: const Text('Русский')),
                TextButton(onPressed: () {}, child: const Text('English')),
                TextButton(onPressed: () {}, child: const Text('中国人')),
              ],
            ),
          ],
        ));
  }
}
