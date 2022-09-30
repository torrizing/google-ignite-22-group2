import 'package:flutter/material.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

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
            backgroundColor: Colors.white),
        body: const MapData());
  }
}

class MapData extends StatefulWidget {
  const MapData({super.key});

  @override
  State<MapData> createState() => _MapDataState();
}

class _MapDataState extends State<MapData> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Container(
          height: 50,
          color: Colors.amber[600],
          child: const Center(child: Text('MAP A')),
        ),
        Container(
          height: 50,
          color: Colors.amber[500],
          child: const Center(child: Text('MAP B')),
        ),
        Container(
          height: 50,
          color: Colors.amber[100],
          child: const Center(child: Text('MAP C')),
        ),
      ],
    );
  }
}
