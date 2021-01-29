import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        titleSpacing: 18,
      ),
      body: Container(
        margin: EdgeInsets.all(18),
        child: Text(
          'Home',
          style: TextStyle(color: Colors.pink, fontSize: 20),
        ),
      ),
    );
  }
}
