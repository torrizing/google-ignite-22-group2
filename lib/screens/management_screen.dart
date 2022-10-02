import 'package:flutter/material.dart';
import 'package:google_ignite_app/model/order_form.dart';
import 'package:google_ignite_app/reusable_widgets/search_widget.dart';

class ManagementScreen extends StatelessWidget {
  ManagementScreen({super.key});

  final List<OrderForm> orderData = [
    OrderForm(
        customerId: 1,
        customerName: "Joshua",
        orderNumber: 23,
        orderItem: "Milo"),
    OrderForm(
        customerId: 5,
        customerName: "John",
        orderNumber: 10,
        orderItem: "Oreo"),
    OrderForm(
        customerId: 1,
        customerName: "Joshua",
        orderNumber: 23,
        orderItem: "Milo"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          title: const Text(
            'Orders',
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0,
          backgroundColor: Colors.white),
      body: Column(
        children: <Widget>[
          const SearchBar(),
          Expanded(
            child: SizedBox(
                height: 200.0,
                child: ListView.separated(
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 50,
                        child:
                            Center(child: Text(orderData[index].customerName)),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                    itemCount: orderData.length)),
          ),
        ],
      ),
    );
  }
}
