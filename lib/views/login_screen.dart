import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:software_lab/services/firebase_auth_methods.dart';
import 'package:software_lab/views/forgot_password.dart';
import 'package:software_lab/views/signup_one.dart';
import 'package:software_lab/widgets/login_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User? _user;

  @override
  void initState() {
    super.initState();
    _auth.authStateChanges().listen((event) {
      setState(() {
        _user = event;
      });
    });
  }

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  Future<void> _login() async {
    if (_emailController.text.isEmpty && _passwordController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Center(child: Text('Please enter email and password')),
          duration: Duration(milliseconds: 1000),
        ),
      );
      return;
    } else if (_emailController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Center(child: Text('Please enter email')),
          duration: Duration(milliseconds: 1000),
        ),
      );
      return;
    } else if (_passwordController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Center(child: Text('Please enter password')),
          duration: Duration(milliseconds: 1000),
        ),
      );
      return;
    }
    //  if (!_formKey.currentState!.validate()) return;

    final url = Uri.parse('https://sowlab.com/assignment/user/login');
    final headers = {
      'accept': 'application/json',
      'Content-Type': 'application/json',
    };
    final body = jsonEncode({
      'email': _emailController.text,
      'password': _passwordController.text,
      'role': 'farmer',
      'device_token': '0imfnc8mVLWwsAawjYr4Rx-Af50DDqtlx',
      'type': 'email',
      'social_id': '0imfnc8mVLWwsAawjYr4Rx-Af50DDqtlx'
    });

    try {
      final response = await http.post(url, headers: headers, body: body);

      if (response.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Center(child: Text('Login successful')),
            duration: Duration(milliseconds: 1000),
          ),
        );
      } else {
        final errorMessage =
            jsonDecode(response.body)['message'] ?? 'An error occurred';
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Center(child: Text(errorMessage)),
            duration: Duration(milliseconds: 1000),
          ),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Center(
          child: Text('Failed to login. Please enter email and password'),
        ),
        duration: Duration(milliseconds: 1000),
      ));
    }
  }

//392.72727272727275
  @override
  Widget build(context) {
    final width = MediaQuery.of(context).size.width;
    print(width);
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            //padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
            // padding: EdgeInsets.symmetric(
            //   //horizontal: width * 0.1, // ios
            //   //horizontal: 30,
            //   horizontal: width * 0.08, // android
            //   vertical: 15,
            //   //vertical: height * 0.02,
            // ),
            padding: EdgeInsets.symmetric(
              horizontal: width < 393
                  ? width * 0.08
                  : width > 413
                      ? width * 0.1
                      : width * 0.08,
              vertical: 15,
            ),
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
                Row(
                  children: [
                    const Text(
                      'New here?  ',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color.fromRGBO(38, 28, 18, 0.3),
                        fontWeight: FontWeight.w500,
                        fontFamily: 'BeVietnam',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (context) => const SignupOne()),
                          (Route<dynamic> route) => false,
                        );
                      },
                      child: const Text(
                        'Create account',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 213, 113, 91),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'BeVietnam',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 90,
                ),
                Form(
                  key: _formKey,
                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 48,
                          width: 330,
                          child: TextFormField(
                            controller: _emailController,
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
                            controller: _passwordController,
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
                                  Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context) {
                                    return const ForgotPassword();
                                  }));
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
                ),
                const SizedBox(
                  height: 30,
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    width: 330,
                    height: 52,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 213, 113, 91),
                        elevation: 0,
                      ),
                      onPressed: _login,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // ios
                  children: [
                    LoginButton(
                      image: 'assets/images/google.svg',
                      onTap: () {
                        FirebaseAuthMethods(FirebaseAuth.instance)
                            .signInWithGoogle(context);
                      },
                    ),
                    LoginButton(image: 'assets/images/apple.svg', onTap: () {}),
                    LoginButton(image: 'assets/images/fb.svg', onTap: () {})
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
