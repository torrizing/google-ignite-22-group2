import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.black),
            title: const Text(
              'Chats',
              style: TextStyle(color: Colors.black),
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
  late TextEditingController _controller;

  late String userMsg;
  String text = "";

  void _setText() {
    setState(() {
      text = userMsg;
    });
  }

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
      const SizedBox(
        height: 20,
      ),
      Text(text),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: CupertinoTextField(
          onChanged: (value) => userMsg = value,
          placeholder: "Message...",
          controller: _controller,
          onSubmitted: (String value) async {
            _setText();
            debugPrint(value);
            _controller.clear();
            // showDialog(
            //   context: context,
            //   builder: (context) {
            //     return AlertDialog(
            //       content: Text(value),
            //     );
            //   },
            // );
          },
        ),
      ),
    ]));
  }
}
