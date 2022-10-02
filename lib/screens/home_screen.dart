import 'package:flutter/material.dart';
import 'package:google_ignite_app/data/bmi.dart';
import 'package:google_ignite_app/data/price_point.dart';
import 'package:google_ignite_app/reusable_widgets/linechart_widget.dart';
import 'package:google_ignite_app/reusable_widgets/navigation.dart';
import 'package:google_ignite_app/screens/chat/chat_details.dart';
import 'package:google_ignite_app/screens/chat/chat_screen.dart';
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
      const MyChart(title: "Line Chart"),
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
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                padding: const EdgeInsets.only(bottom: 50),
                child: const Text(
                  "Hey, Food Bank!",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                )),
            Container(
                padding: const EdgeInsets.only(bottom: 50),
                child: (InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    debugPrint('Profile Tapped');
                    // nextScreen(context, const SettingsPage());
                  },
                  child: const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/profile.png"),
                    maxRadius: 30.0,
                    backgroundColor: Colors.transparent,
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
        children: [
          const SizedBox(width: 30),
          CardWidget(
              cardTitle: 'Management',
              cardIcon: const Icon(
                Icons.local_shipping,
                size: 50,
                color: Colors.grey,
              ),
              pageToGo: ManagementScreen()),
          const SizedBox(width: 15),
          const CardWidget(
            cardTitle: 'Chat',
            cardIcon: Icon(
              Icons.textsms,
              size: 50,
              color: Colors.grey,
            ),
            pageToGo: ChatScreen(),
          ),
          const SizedBox(width: 15),
          const CardWidget(
            cardTitle: 'Map',
            cardIcon: Icon(Icons.place, size: 50, color: Colors.grey),
            pageToGo: MapScreen(),
          ),
          const SizedBox(width: 50)
        ],
      ));
}

class TransactionContent extends StatelessWidget {
  const TransactionContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        // padding: const EdgeInsets.all(32),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
                height: 70,
                width: 70,
                child: InkWell(
                    onTap: () => {
                          debugPrint("Tapped"),
                          nextScreen(context, const ChatDetails())
                        },
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('assets/images/joshua.jpeg'),
                    ))),
            const SizedBox(
                height: 80,
                width: 80,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile2.png'),
                  backgroundColor: Colors.transparent,
                )),
            const SizedBox(
                height: 80,
                width: 80,
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/profile2.png'),
                  backgroundColor: Colors.transparent,
                ))
          ],
        ));
  }
}

class MyChart extends StatefulWidget {
  const MyChart({super.key, required this.title});

  final String title;

  @override
  State<MyChart> createState() => _MyChartState();
}

class _MyChartState extends State<MyChart> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 1.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            LineChartWidget(pricePoints),
            // Column(
            //   children: industrySectors
            //       .map<Widget>((sector) => SectorRow(sector))
            //       .toList(),
            // ),
          ],
        ),
      ),
    );
  }
}

// class SectorRow extends StatelessWidget {
//   const SectorRow(this.sector, {Key? key}) : super(key: key);
//   final Sector sector;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         SizedBox(
//           width: 16,
//           child: CircleAvatar(
//             backgroundColor: sector.color,
//           ),
//         ),
//         const Spacer(),
//         Text(sector.title),
//       ],
//     );
//   }
// }
