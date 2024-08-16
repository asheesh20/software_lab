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
                'Signup 1 of 4 ',
                style: TextStyle(
                    fontFamily: 'BeVietnam',
                    fontSize: 14,
                    color: Color.fromARGB(77, 0, 0, 0),
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 7),
              const Text(
                'Welcome!',
                style: TextStyle(
                  fontFamily: 'BeVietnam',
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
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
                    //color: Color(0x4D261C12),
                    color: Color.fromARGB(76, 38, 28, 18),
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
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SizedBox(
                            child: SvgPicture.asset(
                              'assets/images/profile.svg',
                              height: 1,
                              width: 1,
                            ),
                          ),
                        ),
                        hintText: 'Full Name',
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
                    const SizedBox(
                      height: 20,
                    ),
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
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
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
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SizedBox(
                            child: SvgPicture.asset(
                              'assets/images/password.svg',
                              height: 1,
                              width: 1,
                            ),
                          ),
                        ),
                        hintText: 'Password',
                        hintStyle: const TextStyle(
                          color: Color(0x4D000000),
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
                    const SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SizedBox(
                            child: SvgPicture.asset(
                              'assets/images/password.svg',
                              height: 1,
                              width: 1,
                            ),
                          ),
                        ),
                        hintText: 'Re-enter Password',
                        hintStyle: const TextStyle(
                          color: Color(0x4D000000),
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
                  ],
                ),
              ),
              // const SizedBox(height: 20),
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
                          decoration: TextDecoration.underline),
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
        ),
      ),
    );
  }
}
