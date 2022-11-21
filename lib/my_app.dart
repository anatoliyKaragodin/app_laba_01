// import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Text(
              'Авторизация',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(Icons.login),
            ),
            SizedBox(
                height: 40,
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Введите логин',
                      labelStyle: TextStyle(fontSize: 20)),
                )),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(Icons.password),
            ),
            SizedBox(
                height: 40,
                width: 300,
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Введите пароль',
                      labelStyle: TextStyle(fontSize: 20)),
                )),
          ]),
          // Button(
          //   child: Text('Русский'),
          //   onPressed: () {},
          // )
        ],
      ),
    );
  }
}
