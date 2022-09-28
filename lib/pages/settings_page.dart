import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: const Center(
        child: Text(
          'Settings Page',
          // textDirection: TextDirection.ltr,
          // style: TextStyle(
          //   fontSize: 32,
          //   color: Colors.black87,
          // ),
        ),
      ),
    );
  }
}
