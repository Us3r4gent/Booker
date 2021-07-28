import 'package:flutter/material.dart';

class LibraryPage extends StatefulWidget {
  @override
  _LibraryPageState createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Text(
        'Library Page\nStill Developing...',
        style: TextStyle(
            fontSize: 30, color: Colors.black, fontFamily: 'ZCOOLXiaoWei'),
      ),
    ));
  }
}
