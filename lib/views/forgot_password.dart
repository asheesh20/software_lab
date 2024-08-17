import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'FarmerEats',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: 'BeVietnam',
                color: Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
            const SizedBox(
              height: 70,
            ),
            const Text(
              'Forgot Password?',
              style: TextStyle(
                color: Color.fromRGBO(38, 28, 18, 1),
                fontSize: 32,
                fontWeight: FontWeight.w700,
                fontFamily: 'BeVietnam',
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Row(
              children: [
                Text(
                  'Remember your password?  ',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromRGBO(38, 28, 18, 0.3),
                    fontWeight: FontWeight.w500,
                    fontFamily: 'BeVietnam',
                  ),
                ),
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 213, 113, 91),
                    fontWeight: FontWeight.w500,
                    fontFamily: 'BeVietnam',
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 90,
            ),
            Form(
              key: _formKey,
              child: SizedBox(
                height: 52,
                width: 330,
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SizedBox(
                        child: SvgPicture.asset(
                          'assets/images/phone.svg',
                        ),
                      ),
                    ),
                    hintText: 'Phone Number',
                    hintStyle: const TextStyle(
                      color: Color(0x4D000000),
                      fontWeight: FontWeight.w400,
                      fontFamily: 'BeVietnam',
                      fontSize: 14,
                    ),
                    filled: true,
                    fillColor: const Color(0xFFF2F2F2),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
              width: 330,
              height: 52,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 213, 113, 91),
                  elevation: 0,
                ),
                onPressed: () {},
                child: const Text(
                  'Send Code',
                  style: TextStyle(
                    fontFamily: 'assets/fonts/BeVietnam-ExtraBold.ttf',
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
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
