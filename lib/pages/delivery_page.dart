import 'package:flutter/material.dart';

class DeliveryPage extends StatelessWidget {
  const DeliveryPage({super.key});

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
            backgroundColor: Colors.transparent),
        body: const DeliveryContent());
  }
}

class DeliveryContent extends StatelessWidget {
  const DeliveryContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text("Hi"),
    );
  }
}
