import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'FarmerEats',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 70,
              ),
              Text(
                'Welcome back!',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'New here? ',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(77, 0, 0, 0),
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Create account',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 213, 113, 91),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 90,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SizedBox(
                            child: SvgPicture.asset(
                              'assets/images/Vector@1x.svg',
                              height: 1,
                              width: 1,
                            ),
                          ),
                        ),
                        hintText: 'Email Address',
                        hintStyle: const TextStyle(
                          color: Color(0x4D000000),
                          //color: Color.fromARGB(77, 0, 0, 0),
                          fontWeight: FontWeight.w400,
                          fontFamily: 'BeVietnam',
                          fontSize: 15,
                        ),
                        filled: true,
                        fillColor: const Color(0xFFF2F2F2),
                        //  fillColor: Color.fromARGB(255, 38, 24, 18),
                        // fillColor: Color.fromARGB(77, 0, 0, 0).withOpacity(0.3),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        // prefixIcon: Padding(
                        //   padding: const EdgeInsets.all(15),
                        //   child: SizedBox(
                        //     child: SvgPicture.asset(
                        //       'assets/images/Vector.svg',
                        //     ),
                        //   ),
                        // ),
                        prefixIcon: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: SizedBox(
                                child: SvgPicture.asset(
                                  'assets/images/Vector.svg',
                                  width: 24, // Adjust width as needed
                                  height: 24, // Adjust height as needed
                                ),
                              ),
                            ),
                            Positioned(
                              right: 21.15,
                              bottom: 19.5,
                              child: SizedBox(
                                width: 5, //Adjust width as needed
                                height: 5, // Adjust height as needed
                                child: SvgPicture.asset(
                                  'assets/images/Vector.dot.svg',
                                ),
                              ),
                            ),
                          ],
                        ),
                        hintText: 'Password',

                        hintStyle: const TextStyle(
                          color: Color(0x4D000000),
                          //color: Color.fromARGB(77, 0, 0, 0),
                          fontWeight: FontWeight.w400,
                          fontFamily: 'BeVietnam',
                          fontSize: 15,
                        ),
                        filled: true,
                        fillColor: const Color(0xFFF2F2F2),
                        //  fillColor: Color.fromARGB(255, 38, 24, 18),
                        // fillColor: Color.fromARGB(77, 0, 0, 0).withOpacity(0.3),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: () {
                            // Add functionality for "Forgot?" text tap here
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 11.8),
                            child: Text(
                              'Forgot?',
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontFamily: 'BeVietnam',
                                fontSize: 15,
                                color: Color.fromARGB(255, 213, 113, 91),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
