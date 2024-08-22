// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class SignupFour extends StatefulWidget {
//   const SignupFour({super.key});

//   @override
//   State<SignupFour> createState() => _SignupFourState();
// }

// class _SignupFourState extends State<SignupFour> {
//   @override
//   Widget build(context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//           child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               'FarmerEats',
//               style: TextStyle(
//                 fontSize: 16,
//                 fontWeight: FontWeight.w400,
//                 fontFamily: 'BeVietnam',
//                 color: Color.fromRGBO(0, 0, 0, 1),
//               ),
//             ),
//             const SizedBox(height: 30),
//             const Text(
//               'Signup 4 of 4 ',
//               style: TextStyle(
//                 fontFamily: 'BeVietnam',
//                 fontSize: 14,
//                 color: Color.fromRGBO(0, 0, 0, 0.3),
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//             const SizedBox(height: 7),
//             const Text(
//               'Business Hours',
//               style: TextStyle(
//                 color: Color.fromRGBO(38, 28, 18, 1),
//                 fontSize: 32,
//                 fontWeight: FontWeight.w700,
//                 fontFamily: 'BeVietnam',
//               ),
//             ),
//             const SizedBox(
//               height: 30,
//             ),
//             const Text(
//               'Choose the hours your farm is open for pickups.',
//               style: TextStyle(
//                 fontFamily: 'BeVietnam',
//                 fontWeight: FontWeight.w400,
//                 fontSize: 14,
//                 color: Color.fromRGBO(0, 0, 0, 0.3),
//               ),
//             ),
//             const Text(
//               'This will allow customers to order deliveries.',
//               style: TextStyle(
//                 fontFamily: 'BeVietnam',
//                 fontWeight: FontWeight.w400,
//                 fontSize: 14,
//                 color: Color.fromRGBO(0, 0, 0, 0.3),
//               ),
//             ),
//             const SizedBox(height: 40),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 _dayButton("M"),
//                 _dayButton("T"),
//                 _dayButton("W", isSelected: true),
//                 _dayButton("Th"),
//                 _dayButton("F"),
//                 _dayButton("S"),
//                 _dayButton("Su"),
//               ],
//             ),
//             const SizedBox(height: 30),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 timeSlotColor("8:00am - 10:00am"),
//                 timeSlotColor("10:00am - 1:00pm"),
//               ],
//             ),
//             const SizedBox(height: 10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 timeSlot("1:00pm - 4:00pm"),
//                 timeSlot("4:00pm - 7:00pm"),
//               ],
//             ),
//             const SizedBox(height: 10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 timeSlot("7:00pm - 10:00pm"),
//               ],
//             ),
//             const Spacer(),
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 5),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   SvgPicture.asset(
//                     'assets/images/back.svg',
//                     height: 18,
//                     width: 26,
//                   ),
//                   Container(
//                     decoration:
//                         BoxDecoration(borderRadius: BorderRadius.circular(5)),
//                     width: 226,
//                     height: 52,
//                     child: ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor:
//                             const Color.fromARGB(255, 213, 113, 91),
//                         elevation: 0,
//                       ),
//                       onPressed: () {},
//                       child: const Text(
//                         'Signup',
//                         style: TextStyle(
//                           fontFamily: 'assets/fonts/BeVietnam-ExtraBold.ttf',
//                           color: Color.fromRGBO(255, 255, 255, 1),
//                           fontSize: 18,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       )),
//     );
//   }

//   Widget _dayButton(String day, {bool isSelected = false}) {
//     bool isSpecialDay = day == "Th" || day == "F" || day == "S" || day == "Su";
//     return Container(
//       width: 37,
//       height: 36,
//       decoration: BoxDecoration(
//         color: isSpecialDay
//             ? const Color.fromARGB(
//                 255, 255, 255, 255) // White background for Th, F, S
//             : isSelected
//                 ? const Color.fromRGBO(213, 113, 91, 1)
//                 : const Color.fromRGBO(38, 28, 18, 1).withOpacity(0.08),
//         borderRadius: BorderRadius.circular(8),
//         border: isSpecialDay
//             ? Border.all(
//                 color:
//                     const Color.fromARGB(77, 38, 28, 18)) // Border for Th, F, S
//             : null,
//       ),
//       child: Center(
//         child: Text(
//           day,
//           style: TextStyle(
//             color: isSpecialDay
//                 ? const Color.fromRGBO(38, 28, 18, 0.3)
//                 : isSelected
//                     ? const Color.fromRGBO(255, 255, 255, 1)
//                     : const Color.fromRGBO(38, 28, 18, 1),
//             fontWeight: FontWeight.w400,
//             fontFamily: 'Be Vietnam',
//             fontSize: 16,
//           ),
//         ),
//       ),
//     );
//   }

//   Widget timeSlotColor(String time) {
//     return Container(
//       height: 48,
//       width: 160,
//       decoration: BoxDecoration(
//         color: const Color.fromRGBO(248, 197, 105, 1),
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: Center(
//         child: Text(
//           time,
//           style: const TextStyle(
//             color: Color.fromRGBO(38, 28, 18, 1),
//             fontFamily: 'BeVietnam',
//             fontSize: 14,
//             fontWeight: FontWeight.w400,
//           ),
//         ),
//       ),
//     );
//   }

//   Widget timeSlot(String time) {
//     return Container(
//       height: 48,
//       width: 160,
//       decoration: BoxDecoration(
//         color: const Color.fromRGBO(38, 28, 18, 1).withOpacity(0.08),
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: Center(
//         child: Text(
//           time,
//           style: const TextStyle(
//             color: Color.fromRGBO(38, 28, 18, 1),
//             fontFamily: 'BeVietnam',
//             fontSize: 14,
//             fontWeight: FontWeight.w400,
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:software_lab/views/signup_five.dart';

class SignupFour extends StatefulWidget {
  const SignupFour({super.key});

  @override
  State<SignupFour> createState() => _SignupFourState();
}

class _SignupFourState extends State<SignupFour> {
  final int currentDay = DateTime.now().weekday;
  Set<String> selectedTimeSlots = {};

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
              'Signup 4 of 4 ',
              style: TextStyle(
                fontFamily: 'BeVietnam',
                fontSize: 14,
                color: Color.fromRGBO(0, 0, 0, 0.3),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 7),
            const Text(
              'Business Hours',
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
                _dayButton("M", dayIndex: 1),
                _dayButton("T", dayIndex: 2),
                _dayButton("W", dayIndex: 3),
                _dayButton("Th", dayIndex: 4),
                _dayButton("F", dayIndex: 5),
                _dayButton("S", dayIndex: 6),
                _dayButton("Su", dayIndex: 7),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _timeSlot("8:00am - 10:00am"),
                _timeSlot("10:00am - 1:00pm"),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _timeSlot("1:00pm - 4:00pm"),
                _timeSlot("4:00pm - 7:00pm"),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _timeSlot("7:00pm - 10:00pm"),
              ],
            ),
            const Spacer(),
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
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const SignupFive();
                        }));
                      },
                      child: const Text(
                        'Signup',
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

  Widget _dayButton(String day, {required int dayIndex}) {
    bool isSelected = currentDay == dayIndex;
    bool isPastDay = currentDay > dayIndex;
    bool isSpecialDay = dayIndex >= 5; // Th, F, S, Su are considered special

    return Container(
      width: 37,
      height: 36,
      decoration: BoxDecoration(
        color: isSelected
            ? const Color.fromRGBO(213, 113, 91, 1)
            : isPastDay
                ? const Color.fromRGBO(38, 28, 18, 1).withOpacity(0.08)
                : Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: !isSelected && isSpecialDay && !isPastDay
            ? Border.all(color: const Color.fromARGB(77, 38, 28, 18))
            : null,
      ),
      child: Center(
        child: Text(
          day,
          style: TextStyle(
            color: isSelected
                ? const Color.fromRGBO(255, 255, 255, 1)
                : isPastDay
                    ? const Color.fromRGBO(38, 28, 18, 1)
                    : const Color.fromRGBO(38, 28, 18, 0.3),
            fontWeight: FontWeight.w400,
            fontFamily: 'BeVietnam',
            fontSize: 16,
          ),
        ),
      ),
    );
  }

  Widget _timeSlot(String time) {
    bool isSelected = selectedTimeSlots.contains(time);

    return GestureDetector(
      onTap: () {
        setState(() {
          if (isSelected) {
            selectedTimeSlots.remove(time);
          } else {
            selectedTimeSlots.add(time);
          }
        });
      },
      child: Container(
        height: 48,
        width: 160,
        decoration: BoxDecoration(
          color: isSelected
              ? const Color.fromRGBO(248, 197, 105, 1)
              : const Color.fromRGBO(38, 28, 18, 1).withOpacity(0.08),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            time,
            style: TextStyle(
              color: isSelected
                  ? const Color.fromRGBO(38, 28, 18, 1)
                  : const Color.fromRGBO(38, 28, 18, 1),
              fontFamily: 'BeVietnam',
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}
