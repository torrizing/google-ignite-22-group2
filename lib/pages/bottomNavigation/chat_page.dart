import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.black),
            title: const Text(
              'Hey, Food Bank!',
              style: TextStyle(color: Colors.transparent),
            ),
            elevation: 0,
            backgroundColor: Colors.white),
        body: const ChatData());
  }
}

class ChatData extends StatefulWidget {
  const ChatData({super.key});

  @override
  State<ChatData> createState() => _ChatDataState();
}

class _ChatDataState extends State<ChatData> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('Chat A')),
        ),
        Container(
          height: 50,
          color: Colors.amber[500],
          child: const Center(child: Text('Chat B')),
        ),
      ],
    );
  }
}
