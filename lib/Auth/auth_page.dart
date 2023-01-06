import 'package:flutter/material.dart';
import 'package:login_ui/pages/login_page.dart';

import '../pages/register_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  //after checking If the user is already logged in orr not
  //initially show log in page
  bool showLoginPage = true;

  void toogleScreen() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginPage(showRegisterPage: toogleScreen);
    } else {
      return RegisterPage(
        showLoginPage: toogleScreen,
      );
    }
  }
}
