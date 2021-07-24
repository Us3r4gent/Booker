import 'package:flutter/material.dart';
import 'pages.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          actions: <Widget>[
            IconButton(
              padding: EdgeInsets.only(top: 10, right: 17),
              icon: Icon(Icons.search_rounded),
              onPressed: () {},
              iconSize: 40,
            )
          ],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30))),
          backgroundColor: Colors.deepPurpleAccent,
          leading: IconButton(
            padding: EdgeInsets.only(left: 17, top: 10),
            icon: Icon(Icons.menu_rounded),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => AboutPage()));
            },
            iconSize: 47,
          ),
          elevation: 3,
          centerTitle: true,
        ),
      ),
      body: SizedBox.expand(
        child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() => _currentIndex = index);
            },
            children: pages),
      ),
      bottomNavigationBar: BottomNavyBar(
        containerHeight: 60,
        selectedIndex: _currentIndex,
        showElevation: false,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
              icon: Icon(
                Icons.home,
                size: 34,
              ),
              title: Text('Home', style: TextStyle(fontSize: 17)),
              activeColor: Colors.deepPurpleAccent),
          BottomNavyBarItem(
              icon: Icon(
                Icons.book_rounded,
                size: 30,
              ),
              title: Text(
                'Library',
                style: TextStyle(fontSize: 17),
              ),
              activeColor: Colors.deepPurpleAccent),
          BottomNavyBarItem(
              icon: Icon(
                Icons.person,
                size: 34,
              ),
              title: Text('Profile', style: TextStyle(fontSize: 17)),
              activeColor: Colors.deepPurpleAccent)
        ],
        backgroundColor: Colors.white,
        curve: Curves.easeInOutCirc,
        animationDuration: Duration(milliseconds: 250),
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      ),
    );
  }
}
