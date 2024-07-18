import 'package:flutter/material.dart';
import 'package:pedagogicalinnovation/Pages/login.dart';
import 'package:pedagogicalinnovation/Pages/signUp.dart';


class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    'images/home.jpg',
                    width: constraints.maxWidth * 0.2, // 50% of screen width
                    height: constraints.maxWidth * 0.2, // 50% of screen width
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 15.0, left: 15, bottom: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Bienvenue aux 'Pedagogical Innovations', où vous gérez vos tâches quotidiennes",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            height: constraints.maxHeight *
                                0.05, // 5% of screen height
                          ),
                          Hero(
                            tag: 'login_btn',
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute<void>(
                                        builder: (BuildContext context) =>
                                            const LoginPage()));
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 190, 210, 248),
                                padding: EdgeInsets.fromLTRB(
                                  constraints.maxWidth *
                                      0.05, // 10% of screen width
                                  15,
                                  constraints.maxWidth *
                                      0.05, // 10% of screen width
                                  15,
                                ),
                              ),
                              child: Text(
                                'Se connecter',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Hero(
                            tag: 'signup_btn',
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute<void>(
                                        builder: (BuildContext context) =>
                                            const RegisterPage()));
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 190, 210, 248),
                                padding: EdgeInsets.fromLTRB(
                                  constraints.maxWidth *
                                      0.05, // 10% of screen width
                                  15,
                                  constraints.maxWidth *
                                      0.05, // 10% of screen width
                                  15,
                                ),
                              ),
                              child: Text(
                                'S\'inscrire',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: constraints.maxHeight *
                                0.05, // 5% of screen height
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
