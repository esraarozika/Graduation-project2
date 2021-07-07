import 'package:flutter/material.dart';
import 'package:graduation_project/Welcome_Screen.dart';
import 'package:graduation_project/home_page.dart';
import 'package:graduation_project/login.dart';
import 'package:graduation_project/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
          textTheme: TextTheme(
            body1: TextStyle(color: Colors.white),
          ),
        ),
        initialRoute: WelcomeScreen.id,
        routes: {
          WelcomeScreen.id: (context) => WelcomeScreen(),
          Login.id: (context) => Login(),
          SignUpPage.id: (context) => SignUpPage(),
          Home.id: (context) => Home(),
        });
  }
}
