import 'package:flutter/material.dart';

class LabelWidget extends StatelessWidget {
  final String textTitle;
  const LabelWidget({super.key, required this.textTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 25),
        child: Row(
          children: [
            Expanded(
              /* 1 */
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /* 2 */
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
