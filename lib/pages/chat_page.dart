import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: const Center(
        child: Text(
          'Chat Page',
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
