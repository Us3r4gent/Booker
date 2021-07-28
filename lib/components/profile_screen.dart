import 'package:flutter/material.dart';
import '../pages.dart';
import 'subscription_screen.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 115,
              width: 115,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/avatar.jpg'),
              ),
            ),
            Container(
              height: 65,
              width: 300,
              margin: EdgeInsets.only(
                top: 30,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFFE7E7E7)),
              padding: EdgeInsets.only(top: 25),
              child: Container(
                  margin: EdgeInsets.only(bottom: 21),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.people_rounded,
                        color: Colors.deepPurpleAccent,
                      ),
                      Text(
                        '  Username: Administrator',
                        style:
                            TextStyle(fontSize: 20, color: Color(0xFF616161)),
                      ),
                    ],
                  )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => SubPage()));
              },
              child: Container(
                height: 65,
                width: 300,
                margin: EdgeInsets.only(
                  top: 20,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFE7E7E7)),
                padding: EdgeInsets.only(top: 25),
                child: Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.subscriptions_rounded,
                          color: Colors.deepPurpleAccent,
                        ),
                        Text(
                          '  Subscription: Yes',
                          style:
                              TextStyle(fontSize: 20, color: Color(0xFF616161)),
                        ),
                      ],
                    )),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100,
                  width: 90,
                  margin: EdgeInsets.only(
                    top: 20,
                    left: 31,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFFE7E7E7)),
                  padding: EdgeInsets.only(top: 25),
                  child: Container(
                      margin: EdgeInsets.only(bottom: 21),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.history_rounded,
                            color: Colors.deepPurpleAccent,
                          ),
                          Text(
                            'History',
                            style: TextStyle(
                                fontSize: 20, color: Color(0xFF616161)),
                          ),
                        ],
                      )),
                ),
                Container(
                  height: 100,
                  width: 90,
                  margin: EdgeInsets.only(
                    top: 20,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFFE7E7E7)),
                  padding: EdgeInsets.only(top: 25),
                  child: Container(
                      margin: EdgeInsets.only(bottom: 21),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.favorite_rounded,
                            color: Colors.deepPurpleAccent,
                          ),
                          Text(
                            'Favs',
                            style: TextStyle(
                                fontSize: 20, color: Color(0xFF616161)),
                          ),
                        ],
                      )),
                ),
                Container(
                  height: 100,
                  width: 90,
                  margin: EdgeInsets.only(top: 20, right: 30),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFFE7E7E7)),
                  padding: EdgeInsets.only(top: 25),
                  child: Container(
                      margin: EdgeInsets.only(bottom: 21),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.account_balance_wallet_rounded,
                            color: Colors.deepPurpleAccent,
                          ),
                          Text(
                            ' Wallet',
                            style: TextStyle(
                                fontSize: 20, color: Color(0xFF616161)),
                          ),
                        ],
                      )),
                )
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => AboutPage()));
              },
              child: Container(
                height: 65,
                width: 300,
                margin: EdgeInsets.only(
                  top: 20,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFFE7E7E7)),
                padding: EdgeInsets.only(top: 25),
                child: Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.info_rounded,
                          color: Colors.deepPurpleAccent,
                        ),
                        Text(
                          '  About Booker',
                          style:
                              TextStyle(fontSize: 20, color: Color(0xFF616161)),
                        ),
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
