import 'package:flutter/material.dart';
import 'package:pdf_flutter/pdf_flutter.dart';
import '../pages.dart';

class CharlotteWeb extends StatefulWidget {
  @override
  _CharlotteWebState createState() => _CharlotteWebState();
}

class _CharlotteWebState extends State<CharlotteWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          actions: <Widget>[
            IconButton(
              padding: EdgeInsets.only(right: 17, top: 10),
              icon: Icon(Icons.menu_rounded),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => AboutPage()));
              },
              iconSize: 47,
            )
          ],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30))),
          backgroundColor: Colors.deepPurpleAccent,
          elevation: 3,
          centerTitle: true,
        ),
      ),
      body: PDF.asset(
        'assets/Charlotte.pdf',
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
      ),
    );
  }
}
