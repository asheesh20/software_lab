import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:software_lab/widgets/login_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _controller = TextEditingController();
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
                'Welcome back!',
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
                    'New here?  ',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromRGBO(38, 28, 18, 0.3),
                      fontWeight: FontWeight.w500,
                      fontFamily: 'BeVietnam',
                    ),
                  ),
                  Text(
                    'Create account',
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
                child: Column(
                  children: [
                    SizedBox(
                      height: 48,
                      width: 330,
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: SizedBox(
                              child: SvgPicture.asset(
                                'assets/images/Vector@1x.svg',
                              ),
                            ),
                          ),
                          hintText: 'Email Address',
                          hintStyle: const TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.3),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'BeVietnam',
                            fontSize: 14,
                          ),
                          filled: true,
                          fillColor: const Color.fromRGBO(38, 28, 18, 1)
                              .withOpacity(0.08),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 20),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 48,
                      width: 330,
                      child: TextFormField(
                        controller: _controller,
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: SizedBox(
                              child: SvgPicture.asset(
                                'assets/images/password.svg',
                              ),
                            ),
                          ),
                          hintText: 'Password',
                          hintStyle: const TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.3),
                            fontWeight: FontWeight.w400,
                            fontFamily: 'BeVietnam',
                            fontSize: 14,
                          ),
                          filled: true,
                          fillColor: const Color.fromRGBO(38, 28, 18, 1)
                              .withOpacity(0.08),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 20),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              // Add functionality for "Forgot?" text tap here
                            },
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 12.0),
                              child: Text(
                                'Forgot?',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'BeVietnam',
                                  fontSize: 14,
                                  color: Color.fromRGBO(213, 113, 91, 1),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                width: 330,
                height: 52,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 213, 113, 91),
                    elevation: 0,
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      fontFamily: 'assets/fonts/BeVietnam-ExtraBold.ttf',
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Center(
                child: Text(
                  'or login with',
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'BeVietnam',
                      color: Color.fromRGBO(38, 28, 18, 0.3)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  LoginButton(image: 'assets/images/google.svg', onTap: () {}),
                  LoginButton(image: 'assets/images/apple.svg', onTap: () {}),
                  LoginButton(image: 'assets/images/fb.svg', onTap: () {})
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
