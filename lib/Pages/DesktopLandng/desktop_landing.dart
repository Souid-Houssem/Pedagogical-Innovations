import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:pedagogicalinnovation/Components/header.dart';


class LandingDesktopView extends StatefulWidget {
  const LandingDesktopView({Key? key}) : super(key: key);

  @override
  State<LandingDesktopView> createState() => _LandingDesktopViewState();
}

class _LandingDesktopViewState extends State<LandingDesktopView> {
  // Function onTap(Function value) {
  //   print('Support Page');
  //    Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) =>  value
  //     ),
  //   );
  // }
  final ScrollController _scrollController =
      ScrollController(initialScrollOffset: 80.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(42, 78, 171, 247),
        body: ListView(controller: _scrollController, children: [
          Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              color: Color.fromARGB(42, 88, 168, 233),
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 0, right: 0),
                //HEADER
                child: DesktopHeader(),
              ),
            ),
            Container(
              color: Color.fromARGB(42, 46, 123, 238),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 60.0, left: 50, right: 40, bottom: 120.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'All your studying tools\nall under one roof.',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0XFF192A3E),
                            ),
                            maxLines: 2,
                          ),
                          const SizedBox(height: 15.0),
                          AutoSizeText(
                            '"Teachers are exploring new ways to personalize learning through Pédagogical Innovations,\n making education more engaging and relevant for students."',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Color(0XFF192A3E),
                              letterSpacing: 1,
                            ),
                            maxLines: 8,
                          ),
                          const SizedBox(height: 50.0),
                        ],
                      ),
                    ),
                    const Flexible(child: SizedBox()),
                    Flexible(
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          if (constraints.maxWidth < 100) {
                            // If the screen width is less than 400, don't display the image
                            return SizedBox.shrink();
                          } else {
                            return Wrap(
                              children: [
                                Image.asset(
                                  'images/urban_woman.png',
                                ),
                              ],
                            );
                          }
                        },
                      ),
                    ),
                    const SizedBox(height: 20.0),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Padding(
                  padding: const EdgeInsets.only(top: 50, left: 40, right: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Stay in touch with your\n Teachers anywhere',
                        softWrap: true,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 36.0,
                          color: Color(0XFF192A3E),
                        ),
                      ),
                      const SizedBox(height: 20.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 60, right: 60),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //EMAIL Marketing Section
                            Flexible(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset('images/mail.png'),
                                    const SizedBox(height: 8.0),
                                    AutoSizeText(
                                      'Baccalauréat',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20.0,
                                      ),
                                      maxLines: 1,
                                    ),
                                    const SizedBox(height: 8.0),
                                    AutoSizeText(
                                      '"We are expanding access to a wide range of baccalaureate courses,\n ensuring students can explore their academic interests with \n comprehensive learning resources."',
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        letterSpacing: 0.8,
                                      ),
                                      maxLines: 3,
                                    ),
                                    const SizedBox(height: 25.0),
                                  ]),
                            ),
                            //SMS Marketing Section
                            /*Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //Icon
                                  Image.asset('images/sms.png'),
                                  const SizedBox(height: 8.0),
                                  const Text(
                                    'Preparatory Courses',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                  const SizedBox(height: 8.0),
                                  const Text(
                                    '"We are enhancing access to preparatory courses,\n equipping students with the tools and resources they need to excel \n in their academic pursuits and prepare for future challenges." ',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      letterSpacing: 0.8,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 50.0),

                      ///2nd Row Auto and CRM
                      const SizedBox(height: 20.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 60, right: 60),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 600),
                          child: Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset('images/market_auto.png'),
                                const SizedBox(height: 8.0),
                                const Text(
                                  'Training Sessions',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20.0,
                                  ),
                                ),
                                const SizedBox(height: 8.0),
                                const Text(
                                  '"We are facilitating access to diverse training programs,\n enabling students to pursue specialized formations that align \n with their career aspirations and personal development goals."',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    letterSpacing: 0.8,
                                  ),
                                ),
                                const SizedBox(height: 25.0),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'images/speaker.png',
                              width: 500,
                              height: 500,
                            ),
                            Flexible(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 80, right: 80),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Connects you easier and faster\nthrough all Social Platforms",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 32.0,
                                        color: Color(0XFF192A3E),
                                      ),
                                    ),
                                    Text(
                                      'With interconnectivity, everything and everyone is connected with everyone else,and communication (and collaboration) seamlessly\nhappen in real time Your social media handlers is now meshed\nwith one another,and ergo you are provided with true\ninterconnectivity.',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        letterSpacing: 1,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 10, left: 40, right: 40, bottom: 30),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0XFFF5F5F5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 30, left: 80, right: 50),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Get Analytics Realtime",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 32.0,
                                        color: Color(0XFF192A3E),
                                      ),
                                    ),
                                    Text(
                                      'Real-time analytics checks provide a way for subscribers ,\nthe transparency provided by real-time analytics checks helps\nprescribers to communicate deductible challenges',
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        letterSpacing: 1,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Flexible(
                                child: Image.asset(
                                  'images/discuss.png',
                                  width: 500,
                                  height: 500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),*/
                            // Row(
                            // Padding(
                            //   padding: const EdgeInsets.symmetric(horizontal: 80),
                            //   child: Container(
                            //     height: 350,
                            //     decoration: BoxDecoration(
                            //       color: const Color(0XFFF5F5F5),
                            //       borderRadius: BorderRadius.circular(10),
                            //     ),
                            //     child: Padding(
                            //       padding: const EdgeInsets.only(
                            //           top: 0, left: 80, right: 80, bottom: 20),
                            //       child: Column(
                            //         mainAxisAlignment: MainAxisAlignment.center,
                            //         children: [
                            //           const Text(
                            //             'You are in good Company',
                            //             style: TextStyle(
                            //               fontWeight: FontWeight.bold,
                            //               fontSize: 32.0,
                            //               color: Color(0XFF192A3E),
                            //             ),
                            //           ),
                            //           const SizedBox(height: 30.0),
                            //           const Text(
                            //             'MARPP has your business covered by delivering needful services required by your customers\nand we are widely trusted by Industry leading companies',
                            //             textAlign: TextAlign.center,
                            //             style: TextStyle(
                            //               fontWeight: FontWeight.w500,
                            //               fontSize: 18.0,
                            //               color: Color(0XFF192A3E),
                            //             ),
                            //           ),
                            //           const SizedBox(height: 40.0),
                            //           Image.asset(
                            //             'images/Partners.png',
                            //             // width: 0,
                            //             // height: 50,
                            //           ),
                            //         ],
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // //Last Section
                            // Container(
                            //   color: Colors.white,
                            //   height: 300,
                            //   child: Padding(
                            //     padding: const EdgeInsets.all(50),
                            //     child: Container(
                            //       height: 100,
                            //       decoration: BoxDecoration(
                            //         color: const Color(0XFFF5F5F5),
                            //         borderRadius: BorderRadius.circular(10),
                            //       ),
                            //       child: Padding(
                            //         padding: const EdgeInsets.only(left: 100, right: 100),
                            //         child: Row(
                            //           children: [
                            //             const Text(
                            //               'Ready to add more productivity tools to your business ! \nGet started with MARPP feel dree to contact us\nWe are always open for to you feedback',
                            //               style: TextStyle(
                            //                 fontWeight: FontWeight.w300,
                            //                 fontSize: 18.0,
                            //                 color: Color(0XFF192A3E),
                            //               ),
                            //             ),
                            //             const Expanded(child: SizedBox()),
                            //             Row(
                            //               children: [
                            //                 InkWell(
                            //                   onTap: () {},
                            //                   borderRadius: BorderRadius.circular(10),
                            //                   hoverColor: Color.fromARGB(74, 158, 158, 158),
                            //                   child: Padding(
                            //                     padding: const EdgeInsets.all(8.0),
                            //                     child: Container(
                            //                       height: 40,
                            //                       width: 120,
                            //                       child: const Center(
                            //                         child: Text(
                            //                           'Login',
                            //                           style: TextStyle(
                            //                             fontSize: 16.0,
                            //                             color: Color(0xFF885Af8),
                            //                           ),
                            //                         ),
                            //                       ),
                            //                       decoration: BoxDecoration(
                            //                         color: Colors.white,
                            //                         border: Border.all(
                            //                             color: const Color(0xFF885Af8)),
                            //                         borderRadius: const BorderRadius.all(
                            //                           Radius.circular(5.0),
                            //                         ),
                            //                       ),
                            //                     ),
                            //                   ),
                            //                 ),
                            //                 const SizedBox(width: 40.0),
                            //                 InkWell(
                            //                   onTap: () {},
                            //                   child: Container(
                            //                     height: 40,
                            //                     width: 120,
                            //                     child: const Center(
                            //                       child: Text(
                            //                         'Sign Up',
                            //                         style: TextStyle(
                            //                           fontSize: 16.0,
                            //                           color: Colors.white,
                            //                         ),
                            //                       ),
                            //                     ),
                            //                     decoration: const BoxDecoration(
                            //                       color: Color(0xFF885Af8),
                            //                       borderRadius: BorderRadius.all(
                            //                         Radius.circular(5.0),
                            //                       ),
                            //                     ),
                            //                   ),
                            //                 ),
                            //               ],
                            //             ),
                            //           ],
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            // desktopFooter(),
                          ],
                        ),
                      )
                    ],
                  )),
            )
          ])
        ]));
  }
}
