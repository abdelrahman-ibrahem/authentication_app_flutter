import 'package:auth_app/pages/login.dart';
import 'package:auth_app/pages/signup.dart';
import 'package:auth_app/pages/welcome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const AppWidget());
}

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        "/": (context) => const WelcomeScreen(),
        "/login": (context) => LoginScreen(),
        "/signup": (context) => SignUpScreen()
      },
      title: "Auth Application",
    );
  }
}
