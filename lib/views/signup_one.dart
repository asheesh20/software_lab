import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:software_lab/widgets/login_button.dart';

class SignupOne extends StatefulWidget {
  const SignupOne({super.key});

  @override
  State<SignupOne> createState() => _SignupOneState();
}

class _SignupOneState extends State<SignupOne> {
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
              const SizedBox(height: 30),
              const Text(
                'Signup 1 of 4 ',
                style: TextStyle(
                  fontFamily: 'BeVietnam',
                  fontSize: 14,
                  color: Color.fromRGBO(0, 0, 0, 0.3),
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 7),
              const Text(
                'Welcome!',
                style: TextStyle(
                  color: Color.fromRGBO(38, 28, 18, 1),
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'BeVietnam',
                ),
              ),
              const SizedBox(height: 35),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LoginButton(image: 'assets/images/google.svg', onTap: () {}),
                  LoginButton(image: 'assets/images/apple.svg', onTap: () {}),
                  LoginButton(image: 'assets/images/fb.svg', onTap: () {})
                ],
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'or signup with',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'BeVietnam',
                    color: Color.fromRGBO(38, 28, 18, 0.3),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
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
                                'assets/images/profile.svg',
                              ),
                            ),
                          ),
                          hintText: 'Full Name',
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
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 48,
                      width: 330,
                      child: TextFormField(
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
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 48,
                      width: 330,
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: SizedBox(
                              child: SvgPicture.asset(
                                'assets/images/password.svg',
                              ),
                            ),
                          ),
                          hintText: 'Re-enter Password',
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
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Login',
                      style: TextStyle(
                        fontFamily: 'BeVietnam',
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(0, 0, 0, 1),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    Container(
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      width: 226,
                      height: 52,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(213, 113, 91, 1),
                          elevation: 0,
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {}
                        },
                        child: const Text(
                          'Continue',
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
