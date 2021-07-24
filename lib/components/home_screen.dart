import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
            '书籍是人类进步的阶梯 —— \n                                                  高尔基',
            style: TextStyle(fontSize: 20, color: Color(0xFF828282)),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: Image(
                  image: AssetImage('assets/davincicode-1.png'),
                  height: 180,
                ),
              ),
              height: 180,
              width: 128,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(29),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(10, 10),
                        blurRadius: 33,
                        color: Color(0xFF919191).withOpacity(.84))
                  ]),
            ),
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: Image(
                  image: AssetImage('assets/future.jpg'),
                  height: 180,
                ),
              ),
              height: 180,
              width: 122,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(29),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(10, 10),
                        blurRadius: 33,
                        color: Color(0xFF919191).withOpacity(.84))
                  ]),
            ),
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
          child: Text(''),
        )
      ],
    ));
  }
}
