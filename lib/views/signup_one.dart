import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:software_lab/views/login_screen.dart';
import 'package:software_lab/views/signup_two.dart';
import 'package:software_lab/widgets/login_button.dart';
import 'package:http/http.dart' as http;

class SignupOne extends StatefulWidget {
  const SignupOne({super.key});

  @override
  State<SignupOne> createState() => _SignupOneState();
}

class _SignupOneState extends State<SignupOne> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  bool isLoading = false;

  Future<void> registerUser() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    // if (!emailController.text.contains('@')) {
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     const SnackBar(content: Text('Invalid email address')),
    //   );
    //   return;
    // }
    // if (passwordController.text != confirmPasswordController.text) {
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     const SnackBar(content: Text('Passwords do not match')),
    //   );
    //   return;
    // }

    setState(() {
      isLoading = true;
    });
    final url = Uri.parse('https://sowlab.com/assignment/user/register');

    final Map<String, dynamic> userData = {
      "full_name": nameController.text,
      "email": emailController.text,
      "phone": phoneNumberController.text,
      "password": passwordController.text,
      "role": "farmer",
      "business_name": "Dairy Farm",
      "informal_name": "London Dairy",
      "address": "3663 Marshville Road",
      "city": "Poughkeepsie",
      "state": "New York",
      "zip_code": 12601,
      "registration_proof":
          "my_proof.pdf", // Replace with actual file upload if needed
      "business_hours": {
        "mon": ["8:00am - 10:00am", "10:00am - 1:00pm"],
        "tue": ["8:00am - 10:00am", "10:00am - 1:00pm"],
        "wed": ["8:00am - 10:00am", "10:00am - 1:00pm", "1:00pm - 4:00pm"],
        "thu": ["8:00am - 10:00am", "10:00am - 1:00pm", "1:00pm - 4:00pm"],
        "fri": ["8:00am - 10:00am", "10:00am - 1:00pm"],
        "sat": ["8:00am - 10:00am", "10:00am - 1:00pm"],
        "sun": ["8:00am - 10:00am"]
      },
      "device_token": "0imfnc8mVLWwsAawjYr4Rx-Af50DDqtlx",
      "type": "email",
      "social_id": ""
    };

    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode(userData),
      );
      if (response.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Registration Successful')),
        );
        nameController.clear();
        emailController.clear();
        phoneNumberController.clear();
        passwordController.clear();
        confirmPasswordController.clear();

        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return const SignupTwo();
        }));
      } else {
        // Handle registration failure
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Center(child: Text('Registration Failed'))),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('An error occurred: $e')),
      );
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
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
                      LoginButton(
                          image: 'assets/images/google.svg', onTap: () {}),
                      LoginButton(
                          image: 'assets/images/apple.svg', onTap: () {}),
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
                            controller: nameController,
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
                              errorStyle: const TextStyle(height: 0),
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
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
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
                            controller: phoneNumberController,
                            keyboardType: TextInputType.phone,
                            inputFormatters: [
                              FilteringTextInputFormatter
                                  .digitsOnly, // Allow only digits
                              LengthLimitingTextInputFormatter(
                                  10), // Limit input length to 10
                            ],
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
                            controller: passwordController,
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
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          height: 48,
                          width: 330,
                          child: TextFormField(
                            controller: confirmPasswordController,
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
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()),
                              (Route<dynamic> route) => false,
                            );
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(
                              fontFamily: 'BeVietnam',
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(0, 0, 0, 1),
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5)),
                          width: 226,
                          height: 52,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromRGBO(213, 113, 91, 1),
                              elevation: 0,
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                registerUser();
                              }
                            },
                            child: const Text(
                              'Continue',
                              style: TextStyle(
                                fontFamily:
                                    'assets/fonts/BeVietnam-ExtraBold.ttf',
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
            if (isLoading) // Conditionally show CircularProgressIndicator
              const Center(
                child: CircularProgressIndicator(),
              ),
          ],
        ),
      ),
    );
  }
}
