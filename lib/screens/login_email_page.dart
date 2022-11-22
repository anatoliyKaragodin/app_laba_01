import 'package:flutter/material.dart';

late String emailUserLogin;
late String emailUserPassword;

class LoginEmailPage extends StatelessWidget {
  const LoginEmailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text('Авторизация Email'),
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
                  emailUserLogin = value;
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
                  emailUserLogin = value;
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
