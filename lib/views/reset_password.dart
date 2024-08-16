import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
                'Reset Password',
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
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        // prefixIcon: Padding(
                        //   padding: const EdgeInsets.all(15.0),
                        //   child: SizedBox(
                        //     child: SvgPicture.asset(
                        //       'assets/images/Vector@1x.svg',
                        //       height: 1,
                        //       width: 1,
                        //     ),
                        //     // child: Image.asset(
                        //     //   'assets/images/Vector@1x.png',
                        //     //   height: 15,
                        //     //   width: 15,
                        //     // ),
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
                                  height: 24,
                                  // width: 21,
                                  //height: 21,
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
                        hintText: 'New Password',
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
                        hintText: 'Confirm New Password',

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
                        // suffixIcon: GestureDetector(
                        //   onTap: () {
                        //     // Add functionality for "Forgot?" text tap here
                        //   },
                        //   child: const Padding(
                        //     padding: EdgeInsets.symmetric(
                        //         horizontal: 12, vertical: 11.8),
                        //     child: Text(
                        //       'Forgot?',
                        //       style: TextStyle(
                        //         fontWeight: FontWeight.w400,
                        //         fontFamily: 'BeVietnam',
                        //         fontSize: 15,
                        //         color: Color.fromARGB(255, 213, 113, 91),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ),
                    ),

                    // Container(
                    //   decoration:
                    //       BoxDecoration(borderRadius: BorderRadius.circular(5)),
                    //   width: double.infinity,
                    //   height: 52,
                    //   child: ElevatedButton(
                    //     style: ElevatedButton.styleFrom(
                    //       backgroundColor:
                    //           const Color.fromARGB(255, 213, 113, 91),
                    //       elevation: 0,
                    //     ),
                    //     onPressed: () {
                    //       if (_formKey.currentState!.validate()) {
                    //         // authController.login(
                    //         //   _emailController.text.trim(),
                    //         //   _passwordController.text.trim(),
                    //         // );
                    //       }
                    //     },
                    //     child: const Text(
                    //       'Login',
                    //       style: TextStyle(
                    //         // fontFamily: 'Be',
                    //         fontFamily: 'assets/fonts/BeVietnam-ExtraBold.ttf',
                    //         color: Color(0xFFFFFFFF),
                    //         fontSize: 18,
                    //         fontWeight: FontWeight.w500,
                    //       ),
                    //     ),
                    //     // child: SvgPicture.asset(
                    //     //   'assest/images/Login.svg',
                    //     // ),
                    //   ),
                    // ),
                  ],
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
            ],
          ),
        ),
      ),
    );
  }
}
