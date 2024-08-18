import 'package:flutter/material.dart';
import 'package:software_lab/views/forgot_password.dart';
import 'package:software_lab/views/login_screen.dart';
import 'package:software_lab/views/reset_password.dart';
import 'package:software_lab/views/signup_five.dart';
import 'package:software_lab/views/signup_four.dart';
import 'package:software_lab/views/signup_one.dart';
import 'package:software_lab/views/signup_three.dart';
import 'package:software_lab/views/signup_two.dart';
import 'package:software_lab/views/verify_otp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(context) {
    return MaterialApp(
      //home: LoginScreen(),
      //home: ForgotPassword(),
      //home: VerifyOtp(),
      //home: ResetPassword(),
      //home: SignupOne(),
      //home: SignupTwo(),
      home: SignupThree(),
      //home: SignupFour(),
      //home: SignupFive(),
    );
  }
}
