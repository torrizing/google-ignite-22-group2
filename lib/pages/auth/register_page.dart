import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_ignite_app/pages/auth/login_page.dart';

import '../../widget/widgets.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  String fullName = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(backgroundColor: Theme.of(context).primaryColor),
        body: SingleChildScrollView(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 120),
                child: Form(
                    key: formKey,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          const Text("Register",
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 10),
                          const Text("let's go!",
                              style: TextStyle(fontSize: 15)),
                          Image.asset("assets/images/welcome.png"),
                          TextFormField(
                            decoration: textInputDecoration.copyWith(
                                labelText: "Full Name",
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Theme.of(context).primaryColor,
                                )),
                            onChanged: (val) {
                              setState(() {
                                fullName = val;
                              });
                            },

                            // Validation
                            validator: (val) {
                              if (val!.isNotEmpty) {
                                return null;
                              } else {
                                return "Name cannot be empty";
                              }
                            },
                          ),
                          const SizedBox(height: 15),
                          TextFormField(
                            decoration: textInputDecoration.copyWith(
                                labelText: "Email",
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Theme.of(context).primaryColor,
                                )),
                            onChanged: (val) {
                              setState(() {
                                email = val;
                              });
                            },

                            // Validation
                            validator: (val) {
                              return RegExp(
                                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                      .hasMatch(val!)
                                  ? null
                                  : "Please enter a valid email";
                            },
                          ),

                          const SizedBox(height: 15),
                          TextFormField(
                            obscureText: true,
                            decoration: textInputDecoration.copyWith(
                                labelText: "Password",
                                prefixIcon: Icon(
                                  Icons.lock,
                                  color: Theme.of(context).primaryColor,
                                )),
                            onChanged: (val) {
                              setState(() {
                                password = val;
                              });
                            },

                            // validation
                            validator: (val) {
                              if (val!.length < 6) {
                                return "Password mut be at least 6 characters";
                              } else {
                                return null;
                              }
                            },
                          ),

                          const SizedBox(height: 20),

                          SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Theme.of(context).primaryColor,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5))),
                              child: const Text(
                                "Register",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                              onPressed: () {
                                register();
                              },
                            ),
                          ),
                          const SizedBox(height: 30),
                          Text.rich(TextSpan(
                            text: "Have an account? ",
                            style: const TextStyle(
                                color: Colors.black, fontSize: 14),
                            children: <TextSpan>[
                              TextSpan(
                                  text: "Login here",
                                  style: const TextStyle(
                                      color: Colors.black,
                                      decoration: TextDecoration.underline),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      previousScreen(
                                          context, const LoginPage());
                                    }),
                            ],
                          )),

                          // ElevatedButton(
                          //     onPressed: () {
                          //       login();
                          //     },
                          //     child: const Text("Login"))
                        ])))));
  }

  register() {}
}
