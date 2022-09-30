import 'package:flutter/material.dart';
import 'package:google_ignite_app/pages/bottomNavigation/chat_page.dart';
import 'package:google_ignite_app/pages/home_page.dart';
import 'package:google_ignite_app/pages/bottomNavigation/settings_page.dart';

class ParentComponent extends StatefulWidget {
  const ParentComponent({super.key});

  @override
  State<ParentComponent> createState() => _ParentComponentState();
}

class _ParentComponentState extends State<ParentComponent> {
  int _selectedIndex = 0;

  // *** Pages ***
  static const List<Widget> _pages = <Widget>[
    HomePage(),
    ChatPage(),
    SettingsPage()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: const Text(
            'Hey, Food Bank!',
            style: TextStyle(color: Colors.transparent),
          ),
          elevation: 0,
          backgroundColor: Colors.white),
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.textsms_rounded), label: ''),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_rounded),
              label: '',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          onTap: _onItemTapped),
    );
  }
}
