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
        body: const DeliverySchedule());
  }
}

// class DeliveryContent extends StatelessWidget {
//   const DeliveryContent({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: const Text("Hi"),
//     );
//   }
// }

class DeliverySchedule extends StatefulWidget {
  const DeliverySchedule({super.key});

  @override
  State<DeliverySchedule> createState() => _DeliveryScheduleState();
}

class _DeliveryScheduleState extends State<DeliverySchedule> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('Entry A')),
        ),
        Container(
          height: 50,
          color: Colors.amber[500],
          child: const Center(child: Text('Entry B')),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('Entry C')),
        ),
      ],
    );
  }
}
