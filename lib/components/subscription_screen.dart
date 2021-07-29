import 'package:flutter/material.dart';
import '../pages.dart';
import './home_screen.dart';
import './profile_screen.dart';

String payGroupValue = '';

Function subscribeButtonState = null;

final successsnackbar = SnackBar(
  content: Text(
    'Successfully subscribed!',
    style: TextStyle(fontSize: 20),
  ),
  behavior: SnackBarBehavior.floating,
  backgroundColor: Colors.deepPurpleAccent,
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
);

Function subscirbeButtonAction = () {
  subscribed = 1;
  subscribeText = '  Subscription: Yes';
  ScaffoldMessenger.of(_SubPageState().context).showSnackBar(successsnackbar);
};

class SubPage extends StatefulWidget {
  @override
  _SubPageState createState() => _SubPageState();
}

class _SubPageState extends State<SubPage> {
  bool ischecked = false;

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
                      padding: EdgeInsets.only(
                        top: 30,
                      ),
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
                width: 100,
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
                width: 100,
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
                width: 100,
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 40, top: 30),
                    child: Text(
                      'Free (Only for BS)',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10, top: 30),
                    child: Radio(
                        value: 'Free',
                        groupValue: payGroupValue,
                        onChanged: (value) {
                          subscribeButtonState = () {
                            subscribed = 1;
                          };
                          payGroupValue = value;
                          setState(() {});
                        }),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 0),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 40, top: 15),
                      child: Text(
                        'WeChat Pay',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10, top: 15),
                      child: Radio(
                          value: 'WeChatPay',
                          groupValue: payGroupValue,
                          onChanged: (value) {
                            subscribeButtonState = null;
                            payGroupValue = value;
                            setState(() {});
                          }),
                    )
                  ],
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 25.9),
            child: SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                onPressed: subscribeButtonState,
                child: Text(
                  'Subscribe',
                  style: TextStyle(fontSize: 23),
                ),
                style:
                    ElevatedButton.styleFrom(primary: Colors.deepPurpleAccent),
              ),
            ),
          )
        ],
      ),
    );
  }
}
