import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupFour extends StatefulWidget {
  const SignupFour({super.key});

  @override
  State<SignupFour> createState() => _SignupFourState();
}

class _SignupFourState extends State<SignupFour> {
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
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 30),
            const Text(
              'Signup 4 of 4 ',
              style: TextStyle(
                  fontFamily: 'BeVietnam',
                  fontSize: 14,
                  color: Color.fromRGBO(0, 0, 0, 0.3),
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 7),
            const Text(
              'Business Hours',
              style: TextStyle(
                fontFamily: 'BeVietnam',
                color: Colors.black,
                fontSize: 32,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Choose the hours your farm is open for pickups.',
              style: TextStyle(
                fontFamily: 'BeVietnam',
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color.fromRGBO(0, 0, 0, 0.3),
              ),
            ),
            const Text(
              'This will allow customers to order deliveries.',
              style: TextStyle(
                fontFamily: 'BeVietnam',
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color.fromRGBO(0, 0, 0, 0.3),
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _dayButton("M"),
                _dayButton("T"),
                _dayButton("W", isSelected: true),
                _dayButton("Th"),
                _dayButton("F"),
                _dayButton("S"),
                _dayButton("Su"),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                timeSlotColor("8:00am - 10:00am"),
                timeSlotColor("10:00am - 1:00pm"),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                timeSlot("1:00pm - 4:00pm"),
                timeSlot("4:00pm - 7:00pm"),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                timeSlot("7:00pm - 10:00pm"),
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
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
                      onPressed: () {},
                      child: const Text(
                        'Signup',
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
      )),
    );
  }

  Widget _dayButton(String day, {bool isSelected = false}) {
    bool isSpecialDay = day == "Th" || day == "F" || day == "S" || day == "Su";
    return Container(
      width: 37,
      height: 36,
      decoration: BoxDecoration(
        color: isSpecialDay
            ? const Color.fromARGB(
                255, 255, 255, 255) // White background for Th, F, S
            : isSelected
                ? const Color.fromRGBO(213, 113, 91, 1)
                : const Color.fromARGB(20, 38, 28, 18),
        borderRadius: BorderRadius.circular(8),
        border: isSpecialDay
            ? Border.all(
                color:
                    const Color.fromARGB(77, 38, 28, 18)) // Border for Th, F, S
            : null,
      ),
      child: Center(
        child: Text(
          day,
          style: TextStyle(
            color: isSpecialDay
                ? const Color.fromARGB(77, 38, 28, 18)
                : isSelected
                    ? Colors.white
                    : Colors.black,
            fontWeight: FontWeight.w400,
            fontFamily: 'Be Vietnam',
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget timeSlotColor(String time) {
    return Container(
      height: 48,
      width: 160,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 248, 197, 105),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          time,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }

  Widget timeSlot(String time) {
    return Container(
      height: 48,
      width: 160,
      decoration: BoxDecoration(
        color: const Color.fromARGB(20, 38, 28, 18),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          time,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
