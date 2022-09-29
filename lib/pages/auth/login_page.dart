import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_ignite_app/pages/auth/register_page.dart';
import 'package:google_ignite_app/widget/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";

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
                          const Text("Groupie",
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 10),
                          const Text("Login now to see what they are talking!",
                              style: TextStyle(fontSize: 15)),
                          Image.asset("assets/images/login.png"),
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
                                "Sign In",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                              onPressed: () {
                                login();
                              },
                            ),
                          ),
                          const SizedBox(height: 30),
                          Text.rich(TextSpan(
                            text: "Don't have an account? ",
                            style: const TextStyle(
                                color: Colors.black, fontSize: 14),
                            children: <TextSpan>[
                              TextSpan(
                                  text: "Register here",
                                  style: const TextStyle(
                                      color: Colors.black,
                                      decoration: TextDecoration.underline),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      nextScreen(context, const RegisterPage());
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

  login() {
    if (formKey.currentState!.validate()) {}
  }
}
