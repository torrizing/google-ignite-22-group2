import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_ignite_app/model/chat_message.dart';
import 'package:google_ignite_app/reusable_widgets/navigation.dart';

class ChatDetails extends StatefulWidget {
  const ChatDetails({super.key});

  @override
  State<ChatDetails> createState() => _ChatDetailsState();
}

class _ChatDetailsState extends State<ChatDetails> {
  List<ChatMessage> messages = [
    ChatMessage(messageContent: "Hi, Food Bank!", messageType: "receiver"),
    ChatMessage(messageContent: "I have excess food", messageType: "receiver"),
    ChatMessage(
        messageContent: "Hey Joshua, thank you for contacting us.",
        messageType: "sender"),
    ChatMessage(
        messageContent: "Could you share more about it?",
        messageType: "sender"),
    ChatMessage(
        messageContent: "I have excess milo powder", messageType: "receiver"),
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
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          flexibleSpace: SafeArea(
            child: Container(
              padding: const EdgeInsets.only(right: 16),
              child: Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/joshua.jpeg"),
                    maxRadius: 20,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          "Joshua David",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Online",
                          style: TextStyle(
                              color: Colors.grey.shade600, fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: Stack(
          children: <Widget>[
            ListView.builder(
              itemCount: messages.length,
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.only(
                      left: 14, right: 14, top: 10, bottom: 10),
                  child: Align(
                    alignment: (messages[index].messageType == "receiver"
                        ? Alignment.topLeft
                        : Alignment.topRight),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: (messages[index].messageType == "receiver"
                            ? Colors.grey.shade200
                            : Colors.blue[500]),
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        messages[index].messageContent,
                        style: TextStyle(
                            fontSize: 15,
                            color: (messages[index].messageType == "sender")
                                ? Colors.white
                                : Colors.black),
                      ),
                    ),
                  ),
                );
              },
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                height: 75,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 40.0,
                      child: FloatingActionButton(
                        heroTag: 'btn1',
                        onPressed: () {
                          debugPrint("Tap");
                          nextScreen(context, null);
                        },
                        backgroundColor: Colors.black,
                        elevation: 0,
                        child: const Icon(
                          Icons.photo_camera,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        child: CupertinoTextField.borderless(
                            onChanged: (value) => userMsg = value,
                            placeholder: "Message...",
                            controller: _controller,
                            onSubmitted: (String value) async {
                              _setText();
                              debugPrint(value);
                              messages.add(ChatMessage(
                                  messageContent: value,
                                  messageType: "sender"));

                              _controller.clear();
                            })),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
