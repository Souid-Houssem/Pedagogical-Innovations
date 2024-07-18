// import 'package:flutter/material.dart';
// //import 'package:marpp_web/views/pricing_page/desktop_pricing.dart';

// //Header Widget of Mobile Web
// Widget mobileHeader() {
//   return const Text('Coming soon mobile');
// }

// //Header Widget of Tablet Web
// Widget tabletHeader() {
//   return const Text('Coming soon tablet');
// }

// //Header Widget of Desktop Web
// //Widget desktopHeader(Function onTap) {
// Widget desktopHeader() {
//   return Container(
//     decoration: const BoxDecoration(
//       color: Color.fromARGB(42, 84, 144, 235),
//       // border: Border.all(color: const Color(0xFF885Af8)),
//     ),
//     child: Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             children: [
//               // SvgPicture.asset(
//               //   width: 50.0,
//               //   height: 50.0,
//               // ),

//               Padding(
//                 padding: const EdgeInsets.only(top: 20),
//                 child: Image.asset(
//                   'images/pi.png',
//                   width: 200,
//                   height: 100,
//                 ),
//               ),

//               //width: MediaQuery.of(context).size.width,
//               // height: MediaQuery.of(context).size.height,
//               const SizedBox(width: 2.0),

//               const Text(
//                 'Pedagogical Innovations',
//                 style: TextStyle(
//                     fontSize: 24,
//                     fontFamily: 'Santana',
//                     fontWeight: FontWeight.bold // Use your custom font here
//                     ),
//               ),
//             ],
//           ),
//           Row(
//             children: [
//               InkWell(
//                 onTap: () {},
//                 borderRadius: BorderRadius.circular(20),
//                 highlightColor: const Color.fromARGB(124, 135, 90, 248),
//                 child: const Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Text(
//                     'Products',
//                     style: TextStyle(
//                       fontSize: 16.0,
//                       color: Color(0XFF192A3E),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(width: 40),
//               InkWell(
//                 //onTap: onTap
//                 // onTap: () {
//                 //print('Support Page');
//                 // Navigator.push(
//                 //   context,
//                 //   MaterialPageRoute(
//                 //     builder: (context) => const PricingDesktopView(),
//                 //   ),
//                 // );
//                 // },
//                 onTap: () {},
//                 borderRadius: BorderRadius.circular(20),
//                 highlightColor: const Color.fromARGB(124, 135, 90, 248),
//                 child: const Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Text(
//                     'Pricing',
//                     style: TextStyle(
//                       fontSize: 16.0,
//                       color: Color(0XFF192A3E),
//                     ),
//                   ),
//                 ),
//               ),

//               const SizedBox(width: 40),
//               InkWell(
//                 onTap: () {},
//                 borderRadius: BorderRadius.circular(20),
//                 highlightColor: const Color.fromARGB(124, 135, 90, 248),
//                 child: const Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Text(
//                     'Resources',
//                     style: TextStyle(
//                       fontSize: 16.0,
//                       color: Color(0XFF192A3E),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(width: 40),
//               InkWell(
//                 onTap: () {},
//                 borderRadius: BorderRadius.circular(20),
//                 highlightColor: const Color.fromARGB(124, 135, 90, 248),
//                 child: const Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Text(
//                     'Support',
//                     style: TextStyle(
//                       fontSize: 16.0,
//                       color: Color(0XFF192A3E),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(width: 40),
//               InkWell(
//                 onTap: (() {}),
//                 highlightColor: const Color.fromARGB(124, 135, 90, 248),
//                 child: Container(
//                   height: 40,
//                   width: 120,
//                   child: const Center(
//                     child: Text(
//                       'Login',
//                       style: TextStyle(
//                         fontSize: 16.0,
//                         color: Color.fromARGB(255, 10, 33, 241),
//                       ),
//                     ),
//                   ),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     border: Border.all(
//                       color: Color.fromARGB(255, 10, 33, 241),
//                     ),
//                     borderRadius: const BorderRadius.all(
//                       Radius.circular(5.0),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(width: 40.0),
//               GestureDetector(
//                 onTap: (() {

//               }),
//                 child: Container(
//                   height: 40,
//                   width: 120,
//                   child: const Center(
//                     child: Text(
//                       'Sign Up',
//                       style: TextStyle(
//                         fontSize: 16.0,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                   decoration: const BoxDecoration(
//                     color: Color.fromARGB(255, 10, 33, 241),
//                     //border: Border.all(color: const Color(0xFF885Af8)),
//                     borderRadius: BorderRadius.all(
//                       Radius.circular(5.0),
//                     ),
//                   ),
//                 ),
//               ),

//               // const Icon(Icons.search, color: Colors.white),
//             ],
//           ),
//         ],
//       ),
//     ),
//   );
// }
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'package:desktop_window/desktop_window.dart';
import 'package:pedagogicalinnovation/Pages/login.dart';
import 'package:pedagogicalinnovation/Pages/signUp.dart';

class DesktopHeader extends StatelessWidget {
  const DesktopHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(42, 84, 144, 235),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 600) {
              // adjust this value based on your needs
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: (() {}),
                        highlightColor: const Color.fromARGB(124, 135, 90, 248),
                        child: Container(
                          height: 40,
                          width: 120,
                          child: const Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Color.fromARGB(255, 10, 33, 241),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Color.fromARGB(255, 10, 33, 241),
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(5.0),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      GestureDetector(
                        onTap: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>
                                      const RegisterPage()));
                        }),
                        child: Container(
                          height: 40,
                          width: 120,
                          child: const Center(
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 10, 33, 241),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            } else {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Row(
                      children: [
                        Image.asset(
                          'images/pi.png',
                          width: 150,
                          height: 75,
                        ),
                        const SizedBox(width: 10),
                        Flexible(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              'Pedagogical Innovations',
                              style: TextStyle(
                                fontSize: 24,
                                fontFamily: 'Santana',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>
                                      const LoginPage()));
                        }),
                        highlightColor: const Color.fromARGB(124, 135, 90, 248),
                        child: Container(
                          height: 40,
                          width: 120,
                          child: const Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Color.fromARGB(255, 10, 33, 241),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Color.fromARGB(255, 10, 33, 241),
                            ),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(5.0),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      GestureDetector(
                        onTap: (() {
                          Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>
                                      const RegisterPage()));
                        }),
                        child: Container(
                          height: 40,
                          width: 120,
                          child: const Center(
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 10, 33, 241),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
