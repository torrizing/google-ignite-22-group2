import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 25.0),
        child: (Column(children: [
          SizedBox(
            height: 400,
            child: ListView(
              children: const <Widget>[
                ListTile(
                  leading: Icon(Icons.account_circle),
                  iconColor: Colors.black,
                  title: Text('Profile'),
                ),
                ListTile(
                  leading: Icon(Icons.password),
                  iconColor: Colors.black,
                  title: Text('Change Password'),
                ),
                ListTile(
                  leading: Icon(Icons.dark_mode),
                  iconColor: Colors.black,
                  title: Text('Dark Mode'),
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  iconColor: Colors.grey,
                  title: Text('Log Out'),
                ),
              ],
            ),
          )
        ])));
  }
}
