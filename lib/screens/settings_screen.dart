import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: <String>[
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
  ],
);

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  GoogleSignInAccount? _currentUser;

  @override
  void initState() {
    super.initState();
    _googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount? account) {
      setState(() {
        _currentUser = account;
      });
      if (_currentUser != null) {
        debugPrint("User Logged In");
      }
    });
  }

  Future<void> _handleSignOut() => _googleSignIn.disconnect();

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(left: 25.0),
        child: (Column(children: [
          SizedBox(
            height: 400,
            child: ListView(
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.account_circle),
                  iconColor: Colors.black,
                  title: Text('Profile'),
                ),
                const ListTile(
                  leading: Icon(Icons.password),
                  iconColor: Colors.black,
                  title: Text('Change Password'),
                ),
                const ListTile(
                  leading: Icon(Icons.dark_mode),
                  iconColor: Colors.black,
                  title: Text('Dark Mode'),
                ),
                ListTile(
                  leading: const Icon(Icons.logout),
                  iconColor: Colors.grey,
                  title: const Text('Log Out'),
                  onTap: () => {
                    debugPrint("Log Out Tap"),
                    _handleSignOut,
                  },
                ),
              ],
            ),
          )
        ])));
  }
}
