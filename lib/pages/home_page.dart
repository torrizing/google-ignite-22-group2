import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [cardSection, serviceSection, transactionSection]);
  }
}

Widget cardSection = Card(
    elevation: 2,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    shadowColor: Colors.black,
    color: Colors.black,
    child: (InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          debugPrint('Tapped');
        },
        child: const SizedBox(
            width: 330,
            height: 180,
            child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text("\$3421.75",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    )))))));

Widget serviceSection = Container();

Widget transactionSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        /* 1 */
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /* 2 */
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Recent Transactions',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    ],
  ),
);
