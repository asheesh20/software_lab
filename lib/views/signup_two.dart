import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupTwo extends StatefulWidget {
  const SignupTwo({super.key});

  @override
  State<SignupTwo> createState() => _SignupTwoState();
}

class _SignupTwoState extends State<SignupTwo> {
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
              'Signup 2 of 4 ',
              style: TextStyle(
                fontFamily: 'BeVietnam',
                fontSize: 14,
                color: Color.fromRGBO(0, 0, 0, 0.3),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 7),
            const Text(
              'Farm Info',
              style: TextStyle(
                color: Color.fromRGBO(38, 28, 18, 1),
                fontSize: 32,
                fontWeight: FontWeight.w700,
                fontFamily: 'BeVietnam',
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
                              'assets/images/business_name.svg',
                            ),
                          ),
                        ),
                        hintText: 'Business Name',
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
                              'assets/images/informal_name.svg',
                            ),
                          ),
                        ),
                        hintText: 'Informal Name',
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
                                'assets/images/street_name.svg',
                              ),
                            ),
                          ),
                          hintText: 'Street Address',
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
                              const EdgeInsets.symmetric(horizontal: 20)),
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
                              'assets/images/city.svg',
                            ),
                          ),
                        ),
                        hintText: 'City',
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 126,
                        height: 48,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(38, 28, 18, 1)
                              .withOpacity(0.08),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextFormField(
                          readOnly: true,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 12.0, horizontal: 12.0),
                            border: InputBorder.none,
                            hintText: 'State',
                            hintStyle: const TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.3),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'BeVietnam',
                              fontSize: 14,
                            ),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.all(19.0),
                              child: SvgPicture.asset(
                                'assets/images/dropdown.svg',
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 188,
                        height: 48,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(38, 28, 18, 1)
                              .withOpacity(0.08),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 12.0, horizontal: 12.0),
                            border: InputBorder.none,
                            hintText: 'Enter Zipcode',
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 0.3),
                              fontWeight: FontWeight.w400,
                              fontFamily: 'BeVietnam',
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ],
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
      )),
    );
  }
}
