import 'package:flutter/material.dart';

class DeliveryPage extends StatelessWidget {
  const DeliveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white),
      child: const Center(
        child: Text(
          'Delivery Page',
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
