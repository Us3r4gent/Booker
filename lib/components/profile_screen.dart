import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blueAccent,
        child: Center(
          child: Text(
            'ProfilePage',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ));
  }
}
