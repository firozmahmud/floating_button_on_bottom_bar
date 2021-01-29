import 'package:floating_button_on_bottom_bar/ui/settings/settings.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
          titleSpacing: 18,
          actions: [
            IconButton(
                padding: EdgeInsets.only(right: 0),
                icon: Icon(Icons.settings),
                onPressed: settingsButtonClicked)
          ],
        ),
        body: Center(
            child: Text(
          'Profile',
          style: TextStyle(color: Colors.green, fontSize: 20),
        )));
  }

  settingsButtonClicked() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Settings()),
    );
  }
}
