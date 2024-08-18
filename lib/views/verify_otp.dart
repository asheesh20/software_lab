import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerifyOtp extends StatefulWidget {
  const VerifyOtp({super.key});

  @override
  State<VerifyOtp> createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {
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
                'Verify OTP',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(5, (index) {
                  return SizedBox(
                    width: 58,
                    height: 59,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromRGBO(38, 28, 18, 1)
                            .withOpacity(0.08),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  );
                }),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(5)),
                width: 330,
                height: 52,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 213, 113, 91),
                    elevation: 0,
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                      fontFamily: 'assets/fonts/BeVietnam-ExtraBold.ttf',
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Center(
                  child: Text(
                'Resend Code',
                style: TextStyle(
                  fontFamily: 'assets/fonts/BeVietnam-ExtraBold.ttf',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
