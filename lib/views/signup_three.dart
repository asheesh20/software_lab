// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:software_lab/views/signup_four.dart';

// class SignupThree extends StatefulWidget {
//   const SignupThree({super.key});

//   @override
//   State<SignupThree> createState() => _SignupThreeState();
// }

// class _SignupThreeState extends State<SignupThree> {
//   bool _isContainerVisible = false;
//   bool _isLoading = false;

//   void _showContainer() async {
//     setState(() {
//       _isLoading = true;
//     });

//     await Future.delayed(const Duration(seconds: 2));

//     setState(() {
//       _isLoading = false;
//       _isContainerVisible = true;
//     });
//   }

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
//               'Signup 3 of 4 ',
//               style: TextStyle(
//                 fontFamily: 'BeVietnam',
//                 fontSize: 14,
//                 color: Color.fromRGBO(0, 0, 0, 0.3),
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//             const SizedBox(height: 7),
//             const Text(
//               'Verification',
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
//               'Attached proof of Department of Agriculture',
//               style: TextStyle(
//                 fontFamily: 'BeVietnam',
//                 fontWeight: FontWeight.w400,
//                 fontSize: 14,
//                 color: Color.fromRGBO(0, 0, 0, 0.3),
//               ),
//             ),
//             const Text(
//               'registrations i.e. Florida Fresh, USDA Approved,',
//               style: TextStyle(
//                 fontFamily: 'BeVietnam',
//                 fontWeight: FontWeight.w400,
//                 fontSize: 14,
//                 color: Color.fromRGBO(0, 0, 0, 0.3),
//               ),
//             ),
//             const Text(
//               'USDA Organic',
//               style: TextStyle(
//                 fontFamily: 'BeVietnam',
//                 fontWeight: FontWeight.w400,
//                 fontSize: 14,
//                 color: Color.fromRGBO(0, 0, 0, 0.3),
//               ),
//             ),
//             const SizedBox(
//               height: 50,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Text(
//                   'Attach proof of registration',
//                   style: TextStyle(
//                     fontFamily: 'BeVietnam',
//                     fontWeight: FontWeight.w400,
//                     fontSize: 14,
//                     color: Color.fromRGBO(38, 28, 18, 1),
//                   ),
//                 ),
//                 // SizedBox(
//                 //   height: 53,
//                 //   width: 53,
//                 //   child: CircleAvatar(
//                 //     backgroundColor: const Color.fromRGBO(213, 113, 91, 1),
//                 //     child: SvgPicture.asset(
//                 //       'assets/images/camera.svg',
//                 //       width: 23.96,
//                 //       height: 20.33,
//                 //     ),
//                 //   ),
//                 // ),
//                 SizedBox(
//                   height: 53,
//                   width: 53,
//                   child: CircleAvatar(
//                     backgroundColor: const Color.fromRGBO(213, 113, 91, 1),
//                     child: GestureDetector(
//                       onTap: _showContainer,
//                       child: SvgPicture.asset(
//                         'assets/images/camera.svg',
//                         width: 23.96,
//                         height: 20.33,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 60,
//             ),
//             if (_isContainerVisible)
//               _isLoading
//                   ? const Center(child: CircularProgressIndicator())
//                   : Container(
//                       height: 48,
//                       width: 330,
//                       decoration: BoxDecoration(
//                         color: const Color.fromRGBO(38, 28, 18, 1)
//                             .withOpacity(0.08),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: Center(
//                           child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           const Padding(
//                             padding: EdgeInsets.symmetric(horizontal: 20.0),
//                             child: Text(
//                               'usda_registration.pdf',
//                               style: TextStyle(
//                                 color: Color.fromRGBO(38, 28, 18, 1),
//                                 fontWeight: FontWeight.w400,
//                                 fontFamily: 'BeVietnam',
//                                 fontSize: 14,
//                                 decoration: TextDecoration.underline,
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding:
//                                 const EdgeInsets.symmetric(horizontal: 20.0),
//                             child: SvgPicture.asset(
//                               'assets/images/cross.svg',
//                               width: 23.96,
//                               height: 20.33,
//                             ),
//                           ),
//                         ],
//                       )),
//                     ),
//             const Spacer(),
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 5),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         Navigator.of(context).pop(context);
//                       });
//                     },
//                     child: SvgPicture.asset(
//                       'assets/images/back.svg',
//                       height: 18,
//                       width: 26,
//                     ),
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
//                       onPressed: () {
//                         Navigator.of(context)
//                             .push(MaterialPageRoute(builder: (context) {
//                           return const SignupFour();
//                         }));
//                       },
//                       child: const Text(
//                         'Continue',
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
// }

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:software_lab/views/signup_four.dart';

class SignupThree extends StatefulWidget {
  const SignupThree({super.key});

  @override
  State<SignupThree> createState() => _SignupThreeState();
}

class _SignupThreeState extends State<SignupThree> {
  bool _isContainerVisible = false;
  bool _isLoading = false;

  void _showContainer() async {
    setState(() {
      _isLoading = true;
    });

    await Future.delayed(const Duration(seconds: 2));

    setState(() {
      _isLoading = false;
      _isContainerVisible = true;
    });
  }

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
              'Signup 3 of 4 ',
              style: TextStyle(
                fontFamily: 'BeVietnam',
                fontSize: 14,
                color: Color.fromRGBO(0, 0, 0, 0.3),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 7),
            const Text(
              'Verification',
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
              'Attached proof of Department of Agriculture',
              style: TextStyle(
                fontFamily: 'BeVietnam',
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color.fromRGBO(0, 0, 0, 0.3),
              ),
            ),
            const Text(
              'registrations i.e. Florida Fresh, USDA Approved,',
              style: TextStyle(
                fontFamily: 'BeVietnam',
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color.fromRGBO(0, 0, 0, 0.3),
              ),
            ),
            const Text(
              'USDA Organic',
              style: TextStyle(
                fontFamily: 'BeVietnam',
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color.fromRGBO(0, 0, 0, 0.3),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Attach proof of registration',
                  style: TextStyle(
                    fontFamily: 'BeVietnam',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Color.fromRGBO(38, 28, 18, 1),
                  ),
                ),
                // SizedBox(
                //   height: 53,
                //   width: 53,
                //   child: CircleAvatar(
                //     backgroundColor: const Color.fromRGBO(213, 113, 91, 1),
                //     child: SvgPicture.asset(
                //       'assets/images/camera.svg',
                //       width: 23.96,
                //       height: 20.33,
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 53,
                  width: 53,
                  child: CircleAvatar(
                    backgroundColor: const Color.fromRGBO(213, 113, 91, 1),
                    child: GestureDetector(
                      onTap: _showContainer,
                      child: SvgPicture.asset(
                        'assets/images/camera.svg',
                        width: 23.96,
                        height: 20.33,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            if (_isContainerVisible)
              _isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : Container(
                      height: 48,
                      width: 330,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(38, 28, 18, 1)
                            .withOpacity(0.08),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text(
                              'usda_registration.pdf',
                              style: TextStyle(
                                color: Color.fromRGBO(38, 28, 18, 1),
                                fontWeight: FontWeight.w400,
                                fontFamily: 'BeVietnam',
                                fontSize: 14,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: SvgPicture.asset(
                              'assets/images/cross.svg',
                              width: 23.96,
                              height: 20.33,
                            ),
                          ),
                        ],
                      )),
                    ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).pop(context);
                      });
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
                          return const SignupFour();
                        }));
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
