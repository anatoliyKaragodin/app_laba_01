import 'package:flutter/material.dart';

late String googleUserLogin;
late String googleUserPassword;


class LoginGooglePage extends StatefulWidget {
  const LoginGooglePage({Key? key}) : super(key: key);

  @override
  State<LoginGooglePage> createState() => _LoginGooglePageState();
}

class _LoginGooglePageState extends State<LoginGooglePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text('Авторизация Google'),

        /// Login row
        ///
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.login),
          ),
          SizedBox(
              height: 40,
              width: 300,
              child: TextField(
                onChanged: (String value) {
                  googleUserLogin = value;
                },
                decoration: InputDecoration(
                    hintText: 'Введите логин',
                    labelStyle: TextStyle(fontSize: 20)),
              )),
        ]),

        /// Password row
        ///
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.password),
          ),
          SizedBox(
              height: 40,
              width: 300,
              child: TextField(
                onChanged: (String value) {
                  googleUserPassword = value;
                },
                decoration: InputDecoration(
                    hintText: 'Введите пароль',
                    labelStyle: TextStyle(fontSize: 20)),
              )),
        ]),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Login button
            ///
            TextButton(
                onPressed: () {

                  Navigator.pushNamed(context, '/app page');
                },
                child: const Text('Войти')),

            /// Close button(return to home_page)
            ///
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home page');
                },
                icon: const Icon(Icons.close)),
          ],
        )
      ]),
    );
  }
}
