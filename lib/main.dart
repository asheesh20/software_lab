import 'package:flutter/material.dart';
import 'package:software_lab/views/forgot_password.dart';
import 'package:software_lab/views/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      //home: LoginScreen(),
      home: ForgotPassword(),
    );
  }
}
