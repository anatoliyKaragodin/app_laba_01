import 'package:flutter/material.dart';

class LoginGooglePage extends StatelessWidget {
  const LoginGooglePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text('Авторизация Google'),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.login),
          ),
          SizedBox(
              height: 40,
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Введите логин',
                    labelStyle: TextStyle(fontSize: 20)),
              )),
        ]),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.password),
          ),
          SizedBox(
              height: 40,
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Введите пароль',
                    labelStyle: TextStyle(fontSize: 20)),
              )),
        ]),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/app page');
                },
                child: const Text('Войти')),
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
