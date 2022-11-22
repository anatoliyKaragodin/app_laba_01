import 'home_page.dart';
import 'login_email_page.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isLoggenIn = false;

    return isLoggenIn ? HomePage() : LoginEmailPage();
  }
}
