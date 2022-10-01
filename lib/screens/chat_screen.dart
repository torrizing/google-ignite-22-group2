import 'package:flutter/material.dart';
import 'package:google_ignite_app/model/chat_user.dart';
import 'package:google_ignite_app/screens/conversation_list.dart';

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
  List<ChatUsers> chatUsers = [
    ChatUsers(
        name: "Joshua",
        messageText: "I have excess milo powder.",
        imageURL: "assets/images/joshua.jpeg",
        time: "Now"),
    ChatUsers(
        name: "John Doe",
        messageText: "Do you need anything else?",
        imageURL: "assets/images/carousell.png",
        time: "3h ago"),
    ChatUsers(
        name: "David Dawson",
        messageText: "Thank you!",
        imageURL: "assets/images/carousell.png",
        time: "5h ago")
  ];

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
    return ListView.builder(
        itemCount: chatUsers.length,
        shrinkWrap: true,
        padding: const EdgeInsets.only(top: 16),
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return ConversationList(
            name: chatUsers[index].name,
            messageText: chatUsers[index].messageText,
            imageUrl: chatUsers[index].imageURL,
            time: chatUsers[index].time,
            isMessageRead: (index == 0 || index == 3) ? true : false,
          );
        });
    // return SafeArea(
    //     child:
    //         Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
    //   const SizedBox(
    //     height: 20,
    //   ),
    //   Text(text),
    //   Padding(
    //     padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    //     child: CupertinoTextField(
    //       onChanged: (value) => userMsg = value,
    //       placeholder: "Message...",
    //       controller: _controller,
    //       onSubmitted: (String value) async {
    //         _setText();
    //         debugPrint(value);
    //         _controller.clear();
    //         // showDialog(
    //         //   context: context,
    //         //   builder: (context) {
    //         //     return AlertDialog(
    //         //       content: Text(value),
    //         //     );
    //         //   },
    //         // );
    //       },
    //     ),
    //   ),
    // ]));
  }
}
