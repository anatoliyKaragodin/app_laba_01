import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

late String googleUserLogin;
late String googleUserPassword;


class LoginGooglePage extends StatelessWidget {
  const LoginGooglePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(AppLocalizations.of(context).authenticationGoogle),

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
                    hintText: AppLocalizations.of(context).hintEnterLogin,
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
                obscureText: true,
                decoration: InputDecoration(
                    hintText: AppLocalizations.of(context).hintEnterPassword,
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
                child: Text(AppLocalizations.of(context).logIn)),

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

