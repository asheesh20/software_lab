import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupFive extends StatefulWidget {
  const SignupFive({super.key});

  @override
  State<SignupFive> createState() => _SignupFiveState();
}

class _SignupFiveState extends State<SignupFive> {
  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            SvgPicture.asset(
              'assets/images/tick.svg',
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
            SizedBox(
              height: 10,
            ),
            Text("You're all done !")
          ],
        ),
      )),
    );
  }
}
