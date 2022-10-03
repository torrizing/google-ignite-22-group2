import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:google_ignite_app/reusable_widgets/navigation.dart';
import 'dart:io';

import 'package:google_ignite_app/screens/chat/chat_details.dart';

class PreviewPage extends StatelessWidget {
  const PreviewPage({Key? key, required this.picture}) : super(key: key);

  final XFile picture;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          title: Text(
            picture.name,
            style: const TextStyle(color: Colors.black),
          ),
          elevation: 0,
          backgroundColor: Colors.white),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.file(File(picture.path), fit: BoxFit.fill),
        ]),
      ),
    );
  }
}
