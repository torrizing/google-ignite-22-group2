import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      cardTitle(),
      cardComponent(),
      servicesTitle(),
      servicesCard(),
      transactionTitle(),
      transactionContent(),
    ]);
  }
}

Widget cardTitle() {
  return Container(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.only(bottom: 40),
              child: const Text("Hey, Food Bank!",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),)
          ),

        Container(
          padding: const EdgeInsets.only(bottom: 40),
          child: const CircleAvatar(
            radius: 20,
            backgroundColor: Colors.green,
            child: Text('FB'),
          ),
        )
        ],
      )
  );
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
                  Text("Spending", style: TextStyle(fontSize: 15, color: Colors.white,
                    fontWeight: FontWeight.w300,)),

                  Text("\$3421.75", style: TextStyle(fontSize: 30, color: Colors.white,
                    fontWeight: FontWeight.w500,)),

                  Text("15% increase from last month", style: TextStyle(fontSize: 15, color: Colors.white,
                    fontWeight: FontWeight.w300,)),
                ],
              )
          )
      )
      ));
}

Widget servicesTitle() {
  return Container(
    // padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 25),
    child: Row(
     children: [
       Container(
         // padding: const EdgeInsets.only(bottom: 8),
         child: const Text("Services",  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
       )
     ],
    )
  );
}

Widget servicesCard() {
  return Container(
    // padding: const EdgeInsets.all(32),
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          child: deliveryCard()
        ),
        Container(
          child: chatCard()
        ),
      ],
    )
  );
}

Widget deliveryCard() {
  return Card(
    // elevation: 2,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
      side: const BorderSide(
        color: Colors.grey,
        width: .3,
      ),),
    color: Colors.white,
      child: (InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            debugPrint('Delivery Tapped');
          },
        child: const SizedBox(
            width: 158,
            height: 111,
            child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text("Incoming Delivery",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      // fontWeight: FontWeight.w500,
                    )))
        )
      ))
  );
}

Widget chatCard() {
  return Card(
    // elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),
        side: const BorderSide(
          color: Colors.grey,
          width: .3,
        ),),
      color: Colors.white,
      child: (InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            debugPrint('Tapped');
          },
          child: const SizedBox(
              width: 158,
              height: 111,
              child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text("Conversations",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        // fontWeight: FontWeight.w500,
                      ))))))
  );
}

Widget transactionTitle() {
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
}

Widget transactionContent() {
  return Container(
    // padding: const EdgeInsets.all(32),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          CircleAvatar(
            radius: 35,
            backgroundColor: Colors.black,
            child: Text('JD'),
          ),
          CircleAvatar(
            radius: 35,
            backgroundColor: Colors.black,
            child: Text('JD'),
          ),
          CircleAvatar(
            radius: 35,
            backgroundColor: Colors.black,
            child: Text('JD'),
          ),
          CircleAvatar(
            radius: 35,
            backgroundColor: Colors.black,
            child: Text('JD'),
          )
        ],
      )
  );
}