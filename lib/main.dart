import 'package:flutter/material.dart';
import 'package:software_lab/views/signup_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return const MaterialApp(
      home: SignupOne(),
    );
  }
}
