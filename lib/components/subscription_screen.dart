import 'package:flutter/material.dart';
import '../pages.dart';

class SubPage extends StatefulWidget {
  @override
  _SubPageState createState() => _SubPageState();
}

class _SubPageState extends State<SubPage> {
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
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.only(top: 40),
              child: Center(
                child: Text(
                  'Select your plan',
                  style: TextStyle(
                      color: Color(0xFF616161),
                      fontSize: 43,
                      fontFamily: 'ZCOOLXiaoWei'),
                ),
              )),
          Divider(
            height: 100,
            thickness: 4,
            indent: 40,
            endIndent: 40,
            color: Colors.deepPurpleAccent,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 30),
                      child: Text(
                        'Year',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 30),
                      child: Text(
                        '50',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 30),
                      child: Text(
                        'USD',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Colors.deepPurpleAccent,
                ),
                height: 230,
                width: 110,
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 30),
                      child: Text(
                        'Month',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 30),
                      child: Text(
                        '10',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 30),
                      child: Text(
                        'USD',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Colors.deepPurpleAccent[100],
                ),
                height: 230,
                width: 110,
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 30),
                      child: Text(
                        'Week',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 30),
                      child: Text(
                        '3',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 30),
                      child: Text(
                        'USD',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: Colors.purpleAccent[100],
                ),
                height: 230,
                width: 110,
              )
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 40, top: 40),
                    child: Text(
                      'WeChat Pay',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 40, left: 10),
                    child: Icon(
                      Icons.check_box_rounded,
                      color: Colors.deepPurpleAccent,
                      size: 25,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 40, top: 40),
                    child: Text(
                      'AliPay',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 40, left: 10),
                    child: Icon(
                      Icons.check_box_outline_blank_rounded,
                      color: Colors.deepPurpleAccent,
                      size: 25,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
