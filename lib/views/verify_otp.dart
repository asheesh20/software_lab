import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VerifyOtp extends StatefulWidget {
  const VerifyOtp({super.key});

  @override
  State<VerifyOtp> createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {
  final _formKey = GlobalKey<FormState>();
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
              const Text(
                'FarmerEats',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 70,
              ),
              const Text(
                'Verify OTP',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Row(
                children: [
                  Text(
                    'Remember your password? ',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(77, 0, 0, 0),
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 213, 113, 91),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 90,
              ),
              Form(
                key: _formKey,
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
                      //color: Color.fromARGB(77, 0, 0, 0),
                      fontWeight: FontWeight.w400,
                      fontFamily: 'BeVietnam',
                      fontSize: 15,
                    ),
                    filled: true,
                    fillColor: const Color(0xFFF2F2F2),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(5)),
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 213, 113, 91),
                    elevation: 0,
                  ),
                  onPressed: () {
                    // if (_formKey.currentState!.validate()) {
                    //   // authController.login(
                    //   //   _emailController.text.trim(),
                    //   //   _passwordController.text.trim(),
                    //   // );
                    // }
                  },
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                      // fontFamily: 'Be',
                      fontFamily: 'assets/fonts/BeVietnam-ExtraBold.ttf',
                      color: Color(0xFFFFFFFF),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Center(
                  child: Text(
                'Resend Code',
                style: TextStyle(
                    fontFamily: 'assets/fonts/BeVietnam-ExtraBold.ttf',
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
