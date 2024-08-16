import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupThree extends StatefulWidget {
  const SignupThree({super.key});

  @override
  State<SignupThree> createState() => _SignupThreeState();
}

class _SignupThreeState extends State<SignupThree> {
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
            const SizedBox(height: 30),
            const Text(
              'Signup 3 of 4 ',
              style: TextStyle(
                  fontFamily: 'BeVietnam',
                  fontSize: 14,
                  color: Color.fromARGB(77, 0, 0, 0),
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 7),
            const Text(
              'Verification',
              style: TextStyle(
                fontFamily: 'BeVietnam',
                color: Colors.black,
                fontSize: 32,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Attached proof of Department of Agriculture',
              style: TextStyle(
                fontFamily: 'BeVietnam',
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color.fromRGBO(0, 0, 0, 0.3),
              ),
            ),
            const Text(
              'registrations i.e. Florida Fresh, USDA Approved,',
              style: TextStyle(
                fontFamily: 'BeVietnam',
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color.fromRGBO(0, 0, 0, 0.3),
              ),
            ),
            const Text(
              'USDA Organic',
              style: TextStyle(
                fontFamily: 'BeVietnam',
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color.fromRGBO(0, 0, 0, 0.3),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Attach proof of registration'),
                CircleAvatar(
                  radius: 26.5,
                  backgroundColor: const Color.fromARGB(255, 213, 113, 91),
                  child: SvgPicture.asset(
                    'assets/images/camera.svg',
                    width: 23.96,
                    height: 20.33,
                  ),
                )
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    'assets/images/back.svg',
                    height: 18,
                    width: 26,
                  ),
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    width: 226,
                    height: 52,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 213, 113, 91),
                        elevation: 0,
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {}
                      },
                      child: const Text(
                        'Continue',
                        style: TextStyle(
                          fontFamily: 'assets/fonts/BeVietnam-ExtraBold.ttf',
                          color: Color(0xFFFFFFFF),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
