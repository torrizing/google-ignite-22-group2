import 'package:flutter/material.dart';
import 'package:google_ignite_app/screens/chat/chat_list.dart';
import 'package:google_ignite_app/reusable_widgets/navigation.dart';
import 'package:google_ignite_app/screens/chat/chat_details.dart';

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
  List<ChatList> chatList = [
    ChatList(
        name: "Joshua",
        messageText: "I have a tin of milo powder...",
        imageUrl: "assets/images/joshua.jpeg",
        time: "Now",
        isMessageRead: false),
    ChatList(
        name: "Regine",
        messageText: "I have excess milo powder",
        imageUrl: "assets/images/carousell.png",
        time: "10 minutes ago",
        isMessageRead: true),
    ChatList(
        name: "John Doe",
        messageText: "I have excess milo powder",
        imageUrl: "assets/images/joshua.jpeg",
        time: "5 hours ago",
        isMessageRead: true),
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => {nextScreen(context, const ChatDetails())},
        child: ListView.builder(
            itemCount: chatList.length,
            shrinkWrap: true,
            padding: const EdgeInsets.only(top: 16),
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return ChatList(
                  name: chatList[index].name,
                  messageText: chatList[index].messageText,
                  imageUrl: chatList[index].imageUrl,
                  time: chatList[index].time,
                  isMessageRead: chatList[index].isMessageRead);
            }));
  }
}
