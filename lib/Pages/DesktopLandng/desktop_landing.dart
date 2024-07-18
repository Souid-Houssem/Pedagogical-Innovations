import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:pedagogicalinnovation/Components/header.dart';

class LandingDesktopView extends StatefulWidget {
  const LandingDesktopView({Key? key}) : super(key: key);

  @override
  State<LandingDesktopView> createState() => _LandingDesktopViewState();
}

class _LandingDesktopViewState extends State<LandingDesktopView> {
  final ScrollController _scrollController =
      ScrollController(initialScrollOffset: 80.0);

  final ScrollController scrollController = ScrollController();

  final _formKey = GlobalKey<FormState>();
  late String _name, _email, _message;

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
                            "Toutes vos outils d'étude, tous sous un même toit.",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                              color: Color(0XFF192A3E),
                            ),
                            maxLines: 2,
                          ),
                          const SizedBox(height: 15.0),
                          AutoSizeText(
                            '"Les enseignants explorent de nouvelles façons de personnaliser l\'apprentissage grâce aux innovations pédagogiques,\nrendant l\'éducation plus attractive et pertinente pour les étudiants."',
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
                        "Restez en contact avec vos\nenseignants où que vous soyez",
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
                          children: [
                            Expanded(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      height: 400,
                                      margin: const EdgeInsets.only(right: 50),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      padding: const EdgeInsets.all(20),
                                      child: Stack(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Image.asset('images/mail.png'),
                                              const SizedBox(height: 8.0),
                                              Text(
                                                'Cours Baccalauréat',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 20.0,
                                                ),
                                              ),
                                              const SizedBox(height: 8.0),
                                              Text(
                                                '"Nous élargissons l\'accès à une vaste gamme de cours de baccalauréat,\n permettant aux étudiants d\'explorer leurs intérêts académiques avec \n des ressources d\'apprentissage exhaustives."',
                                                style: TextStyle(
                                                  fontSize: 15.0,
                                                  letterSpacing: 0.8,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Positioned(
                                            bottom: 20,
                                            right: 20,
                                            child: ElevatedButton(
                                              child: Text('Pay'),
                                              onPressed: () {
                                                // Handle button press
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.1, // adjust width based on screen width
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      height: 400,
                                      margin: const EdgeInsets.only(right: 50),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      padding: const EdgeInsets.all(20),
                                      child: Stack(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Image.asset('images/sms.png'),
                                              const SizedBox(height: 8.0),
                                              AutoSizeText(
                                                "Cours préparatoires",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 20.0,
                                                ),
                                              ),
                                              const SizedBox(height: 8.0),
                                              AutoSizeText(
                                                '"Nous améliorons l\'accès aux cours préparatoires,\n équipant les étudiants des outils et des ressources dont ils ont besoin pour exceller \n dans leurs poursuites académiques et se préparer aux défis futurs." ',
                                                style: TextStyle(
                                                  fontSize: 15.0,
                                                  letterSpacing: 0.8,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Positioned(
                                            bottom: 20,
                                            right: 20,
                                            child: ElevatedButton(
                                              child: Text('Pay'),
                                              onPressed: () {
                                                // Handle button press
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.1, // adjust width based on screen width
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      height: 400,
                                      margin: const EdgeInsets.only(right: 50),
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                      ),
                                      padding: const EdgeInsets.all(20),
                                      child: Stack(
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Image.asset(
                                                  'images/market_auto.png'),
                                              const SizedBox(height: 8.0),
                                              const Text(
                                                "Séances de formation",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 20.0,
                                                ),
                                              ),
                                              const SizedBox(height: 8.0),
                                              const Text(
                                                '"Nous facilitons l\'accès à des programmes de formation diversifiés,\n permettant aux étudiants de poursuivre des formations spécialisées qui s\'alignent \n sur leurs aspirations professionnelles et leurs objectifs de développement personnel."',
                                                style: TextStyle(
                                                  fontSize: 15.0,
                                                  letterSpacing: 0.8,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Positioned(
                                            bottom: 20,
                                            right: 20,
                                            child: ElevatedButton(
                                              child: Text('Pay'),
                                              onPressed: () {
                                                // Handle button press
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),

                        // desktopFooter(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Flexible(
                            child: SingleChildScrollView(
                              // color: Colors.white,
                              // height: 300,
                              child: Padding(
                                padding: const EdgeInsets.all(50),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: const Color(0XFFF5F5F5),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.only(
                                            left: 20, right: 20),
                                        child: Row(
                                          children: [
                                            Flexible(
                                              child: AutoSizeText(
                                                '"Nous valorisons votre opinion ! Si vous avez des commentaires ou des suggestions sur la façon dont nous pouvons améliorer nos services, n\'hésitez pas à nous les faire savoir." ',
                                                style: TextStyle(
                                                  fontSize: 15.0,
                                                  letterSpacing: 0.8,
                                                ),
                                                maxLines: 6,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: const Color(0XFFF5F5F5),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(20),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Icon(Icons.location_on),
                                                SizedBox(width: 10),
                                                Flexible(
                                                  child: AutoSizeText(
                                                    'Société Address: 123, Rue de la République, 75001 Paris, France',
                                                    style: TextStyle(
                                                      fontSize: 15.0,
                                                      letterSpacing: 0.8,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 10),
                                            Row(
                                              children: [
                                                Icon(Icons.phone),
                                                SizedBox(width: 10),
                                                Flexible(
                                                  child: AutoSizeText(
                                                    'Phone: +33 1 23 45 67 89',
                                                    style: TextStyle(
                                                      fontSize: 15.0,
                                                      letterSpacing: 0.8,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 10),
                                            Row(
                                              children: [
                                                Icon(Icons.email),
                                                SizedBox(width: 10),
                                                Flexible(
                                                  child: AutoSizeText(
                                                    'Email: [contact@societe.com](mailto:contact@societe.com)',
                                                    style: TextStyle(
                                                      fontSize: 15.0,
                                                      letterSpacing: 0.8,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ))
          ]),
        ]));
  }
}
