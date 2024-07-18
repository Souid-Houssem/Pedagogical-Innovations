
import 'package:flutter/material.dart';
import 'package:pedagogicalinnovation/Pages/login.dart';


class RegisterPage extends StatefulWidget {
  const RegisterPage({
    Key? key,
  }) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  var rememberValue = false;
  bool hasSpecialCharacter = false;
  bool hasUppercaseLetter = false;
  bool hasLowercaseLetter = false;

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 203, 222, 250),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 200, vertical: 100),
        child: LayoutBuilder(builder: (context, constraints) {
          final screenWidth = constraints.maxWidth;
          final isSmallScreen = screenWidth < 600;

          return Row(
            children: <Widget>[
              if (!isSmallScreen)
                Flexible(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Center(
                      child: Image.asset(
                        'images/pi.png',
                        width: 300,
                        height: 300,
                      ),
                    ),
                  ),
                ),
              Flexible(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 187, 211, 247),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.black)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(bottom: 40.0),
                        child: const Text(
                          'Créer un compte',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: TextFormField(
                                    validator: (value) => value!.isNotEmpty
                                        ? null
                                        : "Veuillez saisir votre Nom",
                                    maxLines: 1,
                                    decoration: InputDecoration(
                                      hintText: 'Nom',
                                      prefixIcon: const Icon(Icons.person),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: TextFormField(
                                    validator: (value) => value!.isNotEmpty
                                        ? null
                                        : "Veuillez saisir votre Prénom",
                                    maxLines: 1,
                                    decoration: InputDecoration(
                                      hintText: 'Prénom',
                                      prefixIcon: const Icon(Icons.person),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: DropdownButtonFormField<String>(
                                    validator: (value) => value != null &&
                                            value.isNotEmpty
                                        ? null
                                        : "Veuillez sélectionner votre spécialité",
                                    decoration: InputDecoration(
                                      hintText: 'Votre spécialité',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    onChanged: (String? value) {
                                      // Handle onChanged if needed
                                    },
                                    items: <String>['MP', 'PC', 'Techno']
                                        .map<DropdownMenuItem<String>>(
                                            (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: DropdownButtonFormField<String>(
                                    validator: (value) =>
                                        value != null && value.isNotEmpty
                                            ? null
                                            : "Veuillez sélectionner un Niveau",
                                    decoration: InputDecoration(
                                      hintText: 'Votre niveau Niveau',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                    onChanged: (String? value) {
                                      // Handle onChanged if needed
                                    },
                                    items: <String>['1er année', '2éme année']
                                        .map<DropdownMenuItem<String>>(
                                            (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              onChanged: (value) {
                                setState(() {
                                  // Update state variables for checkboxes
                                  hasSpecialCharacter = value.contains(
                                      RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
                                  hasUppercaseLetter =
                                      value.contains(RegExp(r'[A-Z]'));
                                  hasLowercaseLetter =
                                      value.contains(RegExp(r'[a-z]'));
                                });
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Veuillez saisir un mot de passe';
                                }

                                return null; // Return null if all conditions are satisfied
                              },
                              maxLines: 1,
                              obscureText: true,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.mail),
                                hintText: 'Email',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextFormField(
                              onChanged: (value) {
                                setState(() {
                                  // Update state variables for checkboxes
                                  hasSpecialCharacter = value.contains(
                                      RegExp(r'[!@#$%^&*(),.?":{}|<>]'));
                                  hasUppercaseLetter =
                                      value.contains(RegExp(r'[A-Z]'));
                                  hasLowercaseLetter =
                                      value.contains(RegExp(r'[a-z]'));
                                });
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Veuillez saisir un mot de passe';
                                }
                                if (value.length < 8) {
                                  return 'Le mot de passe doit contenir au moins 8 caractères';
                                }
                                if (!hasSpecialCharacter) {
                                  return 'Le mot de passe doit contenir au moins un caractère spécial';
                                }
                                if (!hasUppercaseLetter) {
                                  return 'Le mot de passe doit contenir au moins une lettre majuscule';
                                }
                                if (!hasLowercaseLetter) {
                                  return 'Le mot de passe doit contenir au moins une lettre minuscule';
                                }
                                return null; // Return null if all conditions are satisfied
                              },
                              maxLines: 1,
                              obscureText: true,
                              decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.lock),
                                hintText: 'Mot de passe',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                      shape: CircleBorder(),
                                      checkColor: Colors.white,
                                      activeColor: hasSpecialCharacter
                                          ? Colors.green
                                          : Colors.grey,
                                      value: hasSpecialCharacter,
                                      onChanged:
                                          null, // Disable checkbox interaction
                                    ),
                                    Text('Caractère spécial'),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Checkbox(
                                      shape: CircleBorder(),
                                      checkColor: Colors.white,
                                      activeColor: hasUppercaseLetter
                                          ? Colors.green
                                          : Colors.grey,
                                      value: hasUppercaseLetter,
                                      onChanged:
                                          null, // Disable checkbox interaction
                                    ),
                                    Text('Lettre majuscule'),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Checkbox(
                                      shape: CircleBorder(),
                                      checkColor: Colors.white,
                                      activeColor: hasLowercaseLetter
                                          ? Colors.green
                                          : Colors.grey,
                                      value: hasLowercaseLetter,
                                      onChanged:
                                          null, // Disable checkbox interaction
                                    ),
                                    Text('Lettre minuscule'),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  // Perform sign up action
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                padding:
                                    const EdgeInsets.fromLTRB(40, 15, 40, 15),
                              ),
                              child: const Text(
                                'S\'inscrire',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('Déjà enregistré?'),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute<void>(
                                            builder: (BuildContext context) =>
                                                const LoginPage()));
                                  },
                                  child: const Text(
                                    'Se connecter',
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 50,
              ),
            ],
          );
        }),
      ),
    );
  }
}
