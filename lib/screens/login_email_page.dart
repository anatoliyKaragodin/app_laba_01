import 'package:app_laba_01/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginEmailPage extends StatefulWidget {
  const LoginEmailPage({Key? key}) : super(key: key);

  @override
  State<LoginEmailPage> createState() => _LoginEmailPageState();
}

class _LoginEmailPageState extends State<LoginEmailPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  AuthService _authService = AuthService();
  late String _emailUserLogin;
  late String _emailUserPassword;

  void _loginButtonAction() async {
    _emailUserLogin = _emailController.text;
    _emailUserPassword = _passwordController.text;

    if (_emailUserLogin.isEmpty || _emailUserPassword.isEmpty) return;

    String user = await _authService.signInWithEmailAndPassword(
        _emailUserLogin.trim(), _emailUserPassword.trim());
    if (user == null) {
      Fluttertoast.showToast(
          msg: "Fail",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    } else {
      _emailController.clear();
      _passwordController.clear();
      Navigator.pushNamed(context, '/app page');
    }
  }

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
                  _emailController.text = value;
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
                  _passwordController.text = value;
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
                onPressed: () async {
                  //_loginButtonAction();
                  try {
                    final credential = await FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                      email: "asadw@gmail.com",
                      password: "12314!23q",
                    );
                  } on FirebaseAuthException catch (e) {
                    if (e.code == 'weak-password') {
                      print('The password provided is too weak.');
                    } else if (e.code == 'email-already-in-use') {
                      print('The account already exists for that email.');
                    }
                  } catch (e) {
                    print(e);
                  }
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
