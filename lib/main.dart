import 'package:flutter/material.dart';
import 'package:google_ignite_app/bottom_navigation.dart';
import 'package:google_ignite_app/helper/helper_function.dart';
import 'package:google_ignite_app/pages/auth/login_page.dart';
import 'package:google_ignite_app/shared/constants.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isSignedIn = false;

  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    getUserLoggedInStatus();
  }

  getUserLoggedInStatus() async {
    await HelperFunctions.getUserLoggedInStatus().then((value) {
      if (value != null) {
        _isSignedIn = value;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Constants().primaryColor,
          scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: _isSignedIn ? const BottomNavigation() : const LoginPage(),
    );
  }
}
