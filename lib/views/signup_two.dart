import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import 'package:software_lab/views/signup_three.dart';

class SignupTwo extends StatefulWidget {
  const SignupTwo({super.key});

  @override
  State<SignupTwo> createState() => _SignupTwoState();
}

class _SignupTwoState extends State<SignupTwo> {
  isSmallDevice(Size size) {
    return size.height < 675;
  }

  final _formKey = GlobalKey<FormState>();

  final TextEditingController businessNameController = TextEditingController();
  final TextEditingController informalNameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController zipController = TextEditingController();

  Future<void> registerUser() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    final url = Uri.parse('https://sowlab.com/assignment/user/register');

    final Map<String, dynamic> userData = {
      "full_name": "John Doe",
      "email": "johndoe@example.com",
      "phone": "1234567890",
      "password": "password123",
      "role": "user",
      "business_name": businessNameController.text,
      "informal_name": informalNameController.text,
      "address": addressController.text,
      "city": cityController.text,
      "state": stateController.text,
      "zip_code": zipController.text,
      "registration_proof": "my_proof.pdf",
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
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return const SignupThree();
        }));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Center(child: Text('Registration Failed')),
            duration: Duration(milliseconds: 1000),
          ),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Center(child: Text('An error occurred: $e')),
          duration: Duration(milliseconds: 1000),
        ),
      );
    }
  }

  @override
  Widget build(context) {
    Size size = MediaQuery.of(context).size;
    // final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
            child: SizedBox(
              // height: 700,
              height: isSmallDevice(size)
                  ? size.height + size.height * .2
                  : size.height * 0.92,
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
                            controller: businessNameController,
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
                            controller: informalNameController,
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
                            controller: addressController,
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
                            controller: cityController,
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
                          mainAxisAlignment: MainAxisAlignment.center, // ios
                          // mainAxisAlignment: MainAxisAlignment.spaceAround,
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                controller: stateController,
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
                            const SizedBox(width: 16),
                            Container(
                              width: 188,
                              height: 48,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(38, 28, 18, 1)
                                    .withOpacity(0.08),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: TextFormField(
                                controller: zipController,
                                keyboardType: TextInputType
                                    .number, // Optional: Sets the keyboard to numeric
                                inputFormatters: [
                                  FilteringTextInputFormatter
                                      .digitsOnly, // Only allow digits
                                ],
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
                  //SizedBox(height: 200),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pop(context);
                          },
                          child: SvgPicture.asset(
                            'assets/images/back.svg',
                            height: 18,
                            width: 26,
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
                                  const Color.fromARGB(255, 213, 113, 91),
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
          ),
        ),
      ),
    );
  }
}


/*
import 'package:flutter/material.dart';

String sampleImage =
    "https://images.unsplash.com/photo-1484417894907-623942c8ee29?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDZ8fHxlbnwwfHx8fHw%3D&auto=format&fit=crop&w=500&q=60";

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  isSmallDevice(Size size) {
    return size.height < 675;
  }

  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            title: const Text("Demo", style: TextStyle(color: Colors.white)),
            backgroundColor: Colors.blue[800],
          ),
          body: SingleChildScrollView(
            controller: _scrollController,
            physics: isSmallDevice(size)
                ? const AlwaysScrollableScrollPhysics()
                : const ClampingScrollPhysics(
                    parent: NeverScrollableScrollPhysics()),
            child: SizedBox(
                height: isSmallDevice(size)
                    ? size.height + size.height * .2
                    : size.height,
                child: Column(
                  children: [
                    // CachedNetworkImage(
                    //   imageUrl: sampleImage,
                    //   fit: BoxFit.fill,
                    //   height: MediaQuery.of(context).size.height * .35,
                    //   width: double.infinity,
                    //   progressIndicatorBuilder:
                    //       (context, url, downloadProgress) => Center(
                    //           child: CircularProgressIndicator(
                    //               value: downloadProgress.progress)),
                    //   errorWidget: (context, url, error) =>
                    //       const Center(child: Icon(Icons.error)),
                    // ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                      child: Text(
                        "This code will elegantly scrollable on smaller devices, while unscrollable on larger devices.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 15),
                      child: TextFormField(
                          onFieldSubmitted: (String value) {
                            _scrollController.animateTo(
                                _scrollController.position.minScrollExtent,
                                duration: const Duration(milliseconds: 200),
                                curve: Curves.easeInBack);
                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: const BorderSide(
                                  color: Colors.black45, width: 1.0),
                            ),
                          )),
                    ),
                    const Spacer(),
                    ElevatedButton(
                        onPressed: () {},
                        child: Container(
                            width: size.width * .8,
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: const Text("login"))),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: Container(
                            width: size.width * .8,
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            child: const Text("Sign up"))),
                    const Spacer(flex: 2),
                  ],
                )),
          )),
    );
  }
}
*/