import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:software_lab/views/login_screen.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  void _handleSubmit() {
    if (_newPasswordController.text.isEmpty ||
        _confirmPasswordController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Center(child: Text('Please enter both required fields.'))),
      );
    } else if (_newPasswordController.text == _confirmPasswordController.text) {
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const LoginScreen()),
        (Route<dynamic> route) => false,
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Center(child: Text('Passwords do not match'))),
      );
    }
  }

  @override
  Widget build(context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
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
                  'Reset Password',
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
                      'Remember your password?  ',
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
                              builder: (context) => const LoginScreen()),
                          (Route<dynamic> route) => false,
                        );
                      },
                      child: const Text(
                        'Login',
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
                  child: Column(
                    children: [
                      SizedBox(
                        height: 48,
                        width: 330,
                        child: TextFormField(
                          controller: _newPasswordController,
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
                            hintText: 'New Password',
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
                          controller: _confirmPasswordController,
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
                            hintText: 'Confirm New Password',
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
                    onPressed: _handleSubmit,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
