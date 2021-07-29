import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pdf_flutter/pdf_flutter.dart';
import 'package:esys_flutter_share/esys_flutter_share.dart';

class CharlotteWeb extends StatefulWidget {
  @override
  _CharlotteWebState createState() => _CharlotteWebState();
}

class _CharlotteWebState extends State<CharlotteWeb> {
  Future<void> saveAndShare() async {
    try {
      var request = await HttpClient().getUrl(Uri.parse(
          'https://interactive.wttw.com/sites/default/files/charlottes-web@2x.jpg'));
      var response = await request.close();
      Uint8List bytes = await consolidateHttpClientResponseBytes(response);
      await Share.file('Share this book to your friends.', 'charlotte.jpg',
          bytes, 'image/jpg');
    } catch (e) {
      print('error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          actions: <Widget>[
            IconButton(
              padding: EdgeInsets.only(right: 17, top: 10),
              icon: Icon(Icons.more_horiz_rounded),
              onPressed: () {
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30))),
                    context: context,
                    builder: (context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          ListTile(
                            leading: new Icon(
                              Icons.share_rounded,
                              color: Colors.deepPurpleAccent,
                            ),
                            title: new Text(
                              'Share',
                              style: TextStyle(fontSize: 20),
                            ),
                            onTap: () {
                              saveAndShare();
                            },
                          ),
                          ListTile(
                            leading: new Icon(
                              Icons.favorite_rounded,
                              color: Colors.deepPurpleAccent,
                            ),
                            title: new Text(
                              'Favorite',
                              style: TextStyle(fontSize: 20),
                            ),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            leading: new Icon(
                              Icons.feedback_rounded,
                              color: Colors.deepPurpleAccent,
                            ),
                            title: new Text(
                              'Feedback',
                              style: TextStyle(fontSize: 20),
                            ),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    });
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
