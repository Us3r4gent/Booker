import 'package:flutter/material.dart';

class LibraryPage extends StatefulWidget {
  @override
  _LibraryPageState createState() => _LibraryPageState();
}

class _LibraryPageState extends State<LibraryPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.orange,
        child: Center(
          child: Text(
            'LibraryPage',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ));
  }
}
