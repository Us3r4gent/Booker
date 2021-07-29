import 'package:flutter/material.dart';
import 'package:booker/books/charlotteweb.dart';
import '../books/graveyardbook.dart';

int subscribed = 0;

final subscribesnackbar = SnackBar(
  content: Text(
    'Please subscribe first!',
    style: TextStyle(fontSize: 20),
  ),
  behavior: SnackBarBehavior.floating,
  backgroundColor: Colors.deepPurpleAccent,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
);

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 17, left: 40),
            child: Text(
              'What to Read',
              style: TextStyle(
                  color: Color(0xFF616161),
                  fontSize: 43,
                  fontFamily: 'ZCOOLXiaoWei'),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, left: 35),
            child: Text(
              '“There is no friend as loyal as a book.”\n                        —— Ernest Hemingway',
              style: TextStyle(fontSize: 20, color: Color(0xFF828282)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  print(subscribed);
                  if (subscribed == 1) {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => CharlotteWeb()));
                  } else if (subscribed == 0)
                    ScaffoldMessenger.of(context)
                        .showSnackBar(subscribesnackbar);
                },
                child: Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image(
                      image: AssetImage('assets/CharlotteWeb.png'),
                      height: 180,
                    ),
                  ),
                  height: 180,
                  width: 122,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(10, 10),
                            blurRadius: 33,
                            color: Color(0xFF919191).withOpacity(.84))
                      ]),
                ),
              ),
              GestureDetector(
                onTap: () {
                  print(subscribed);
                  if (subscribed == 1) {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => GraveyardBook()));
                  } else if (subscribed == 0)
                    ScaffoldMessenger.of(context)
                        .showSnackBar(subscribesnackbar);
                },
                child: Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image(
                      image: AssetImage('assets/graveyardbook.jpg'),
                      height: 180,
                    ),
                  ),
                  height: 180,
                  width: 122,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(10, 10),
                            blurRadius: 33,
                            color: Color(0xFF919191).withOpacity(.84))
                      ]),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            height: 50,
            thickness: 4,
            indent: 40,
            endIndent: 40,
          ),
          Container(
            padding: EdgeInsets.only(left: 35),
            child: Text(
              'Read-Along',
              style: TextStyle(
                  color: Color(0xFF616161),
                  fontSize: 35,
                  fontFamily: 'ZCOOLXiaoWei'),
            ),
          ),
          Center(
            child: Container(
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: 0, top: 15),
                        child: Text(
                          'Tangerine',
                          style: TextStyle(
                              fontSize: 25, fontFamily: 'ZCOOLXiaoWei'),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.only(
                            left: 25,
                          ),
                          child: Text(
                            '\nBut I can see.\nI can see everything.',
                          ))
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 74.6),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image(
                          image: AssetImage('assets/tangerine.jpg'),
                        )),
                  )
                ],
              ),
              margin: EdgeInsets.only(top: 25),
              height: 110,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(10, 10),
                        blurRadius: 33,
                        color: Color(0xFF919191).withOpacity(.84))
                  ]),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            height: 50,
            thickness: 4,
            indent: 40,
            endIndent: 40,
          ),
          Container(
            padding: EdgeInsets.only(left: 35),
            child: Text(
              'Audiobooks',
              style: TextStyle(
                  color: Color(0xFF616161),
                  fontSize: 35,
                  fontFamily: 'ZCOOLXiaoWei'),
            ),
          ),
          Center(
            child: Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image(
                  image: AssetImage('assets/audiobook.jpg'),
                ),
              ),
              margin: EdgeInsets.only(top: 20, bottom: 30),
              height: 187,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(10, 10),
                        blurRadius: 33,
                        color: Color(0xFF919191).withOpacity(.84))
                  ]),
            ),
          ),
        ],
      )),
    );
  }
}
