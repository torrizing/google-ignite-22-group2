import 'package:flutter/material.dart';
import 'package:google_ignite_app/reusable_widgets/navigation.dart';
import 'package:google_ignite_app/screens/chat_screen.dart';
import 'package:google_ignite_app/screens/management_screen.dart';
import 'package:google_ignite_app/screens/map_screen.dart';
import 'package:google_ignite_app/reusable_widgets/card_widget.dart';
import 'package:google_ignite_app/reusable_widgets/label_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const CardTitle(),
      cardComponent(),
      const LabelWidget(textTitle: "Services"),
      servicesCard(),
      const LabelWidget(textTitle: "Recent Chats"),
      const TransactionContent(),
    ]);
  }
}

class CardTitle extends StatelessWidget {
  const CardTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                padding: const EdgeInsets.only(bottom: 30),
                child: const Text(
                  "Hey, Food Bank!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                )),
            Container(
                padding: const EdgeInsets.only(bottom: 30),
                child: (InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    debugPrint('Profile Tapped');
                    // nextScreen(context, const SettingsPage());
                  },
                  child: const CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.green,
                    child: Text('FB'),
                  ),
                )))
          ],
        ));
  }
}

Widget cardComponent() {
  return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      shadowColor: Colors.black,
      color: Colors.black,
      child: (InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            debugPrint('Tapped');
          },
          child: SizedBox(
              width: 330,
              height: 180,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text("Spending",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      )),
                  Text("\$3421.75",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      )),
                  Text("15% increase from last month",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      )),
                ],
              )))));
}

Widget servicesCard() {
  return SizedBox(
      // padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      height: 150.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          SizedBox(width: 50),
          CardWidget(
              cardTitle: 'Management',
              cardIcon: Icon(
                Icons.local_shipping,
                size: 50,
                color: Colors.black,
              ),
              pageToGo: ManagementScreen()),
          SizedBox(width: 15),
          CardWidget(
            cardTitle: 'Chat',
            cardIcon: Icon(
              Icons.textsms,
              size: 50,
              color: Colors.black,
            ),
            pageToGo: ChatScreen(),
          ),
          SizedBox(width: 15),
          CardWidget(
            cardTitle: 'Map',
            cardIcon: Icon(Icons.place, size: 50, color: Colors.black),
            pageToGo: MapScreen(),
          ),
          SizedBox(width: 50)
        ],
      ));
}

class TransactionContent extends StatelessWidget {
  const TransactionContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        // padding: const EdgeInsets.all(32),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
                height: 70,
                width: 70,
                child: InkWell(
                    onTap: () => {
                          debugPrint("Tapped"),
                          nextScreen(context, const ChatScreen())
                        },
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('assets/images/joshua.jpeg'),
                    ))),
            const SizedBox(
                height: 70,
                width: 70,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/welcome.png'),
                )),
            const SizedBox(
                height: 70,
                width: 70,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/login.png'),
                ))
          ],
        ));
  }
}
