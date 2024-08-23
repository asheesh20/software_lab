import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:software_lab/views/login_screen.dart';

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
        padding: const EdgeInsets.symmetric(horizontal: 27.0, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 110,
            ),
            Center(
              child: SvgPicture.asset(
                'assets/images/tick.svg',
                height: 80.41,
                width: 120.61,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Text(
              "You're all done!",
              style: TextStyle(
                color: Color.fromRGBO(38, 28, 18, 1),
                fontSize: 32,
                fontWeight: FontWeight.w700,
                fontFamily: 'BeVietnam',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Text(
                "Hang tight!  We are currently reviewing your account and",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'BeVietnam',
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color.fromRGBO(137, 137, 137, 1),
                ),
              ),
            ),
            const Center(
              child: Text(
                "will follow up with you in 2-3 business days. In the",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'BeVietnam',
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color.fromRGBO(137, 137, 137, 1),
                ),
              ),
            ),
            const Center(
              child: Text(
                " meantime, you can setup your inventory.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'BeVietnam',
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color.fromRGBO(137, 137, 137, 1),
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(5)),
                width: 330,
                height: 52,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 213, 113, 91),
                    elevation: 0,
                  ),
                  onPressed: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: const Text(
                    'Got it!',
                    style: TextStyle(
                      fontFamily: 'assets/fonts/BeVietnam-ExtraBold.ttf',
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
