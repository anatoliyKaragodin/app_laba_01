import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /// Authentication option
      ///
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Text(
              'Авторизация',
              style: TextStyle(fontSize: 20),
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login Google');
                  },
                  child: const Text('Google')),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login Email');
                  },
                  child: const Text('Email'))
            ],
          ),
          const SizedBox(height: 100),

          /// Language option
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
      ),
    );
  }
}
