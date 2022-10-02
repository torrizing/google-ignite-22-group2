import 'package:flutter/material.dart';
import 'package:google_ignite_app/reusable_widgets/navigation.dart';

class CardWidget extends StatelessWidget {
  final String cardTitle;
  final Widget cardIcon;
  final Widget pageToGo;

  const CardWidget(
      {super.key,
      required this.cardTitle,
      required this.cardIcon,
      required this.pageToGo});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 200.0,
        child: Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: const BorderSide(color: Colors.grey, width: .3)),
            child: (InkWell(
                splashColor: Colors.blue.withAlpha(30),
                onTap: () {
                  debugPrint('Tapped');
                  nextScreen(context, pageToGo);
                },
                child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        cardIcon,
                        const SizedBox(
                          height: 13,
                        ),
                        Text(cardTitle)
                      ],
                    ))))));
  }
}
