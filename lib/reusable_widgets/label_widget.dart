import 'package:flutter/material.dart';

class LabelWidget extends StatelessWidget {
  final String textTitle;
  const LabelWidget({super.key, required this.textTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 40, left: 30, bottom: 10),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(bottom: 6),
                    child: Text(
                      textTitle,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
