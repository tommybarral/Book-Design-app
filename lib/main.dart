import 'package:book_design_app/screens/signin_screen.dart';
import 'package:flutter/material.dart';
import './screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen(),
    );
  }
}
