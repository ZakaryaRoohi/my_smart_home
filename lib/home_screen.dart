import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {
  int _bottomIndex = 2;
  PageController pageController = PageController(initialPage: 2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: [
          Center(
              child: Container(
            alignment: Alignment.center,
            width: 300,
            height: 300,
            color: Colors.orange,
            child: Text(
              '1',
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 50),
            ),
          )),
          Center(
              child: Container(
            alignment: Alignment.center,
            width: 300,
            height: 300,
            color: Colors.orange,
            child: Text(
              '2',
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 50),
            ),
          )),
          Center(
              child: Container(
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: Row(
                    children: [
                      Text(
                        'Welcome Home',
                        style: TextStyle(
                            color: Colors.black45,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              ],
            ),
          )),
          Center(
              child: Container(
            alignment: Alignment.center,
            width: 300,
            height: 300,
            color: Colors.orange,
            child: Text(
              '4',
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 50),
            ),
          )),
          Center(
              child: Container(
            alignment: Alignment.center,
            width: 300,
            height: 300,
            color: Colors.orange,
            child: Text(
              '5',
              style: TextStyle(
                  color: Colors.red, fontWeight: FontWeight.bold, fontSize: 50),
            ),
          )),
        ],
        onPageChanged: (pageIndex) {
          setState(() {
            _bottomIndex = pageIndex;
          });
        },
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: _bottomIndex,
        backgroundColor: Colors.red,
        color: Colors.white,
        items: [
          Icon(
            Icons.print,
            color: Colors.red,
          ),
          Icon(
            Icons.share_location_outlined,
            color: Colors.red,
          ),
          Icon(
            Icons.home,
            color: Colors.red,
          ),
          Icon(
            Icons.home,
            color: Colors.red,
          ),
          Icon(
            Icons.lock_clock,
            color: Colors.red,
          ),
        ],
        onTap: (index) {
          setState(() {
            _bottomIndex = index;
            pageController.animateToPage(index,
                duration: Duration(microseconds: 100), curve: Curves.linear);
          });
        },
      ),
    );
  }
}
