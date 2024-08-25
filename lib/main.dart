import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:software_lab/firebase_options.dart';
import 'package:software_lab/views/signup_one.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
