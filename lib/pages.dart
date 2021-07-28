import 'dart:ui';
import 'package:booker/components/library_screen.dart';
import 'package:flutter/material.dart';
import 'components/home_screen.dart';
import 'components/profile_screen.dart';

List<Widget> pages = [HomeScreen(), LibraryPage(), ProfilePage()];

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: Text(
            'About Booker',
            style: TextStyle(fontSize: 25),
          )),
      body: Center(
        child: Column(
          children: [
            Text(
              'Developed by Michael Fang\n          From Omniscient',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
            Text('Copyright of Michael Fang, 2021',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
            Text('Source Code:',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
            Text('https://github.com/Us3r4gent/booker',
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold))
          ],
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        ),
      ),
    );
  }
}
