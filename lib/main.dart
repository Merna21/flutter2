import 'package:flutter/material.dart';
import 'package:juice_screen/add.dart';
import 'package:juice_screen/homescreen.dart';
import 'package:juice_screen/prof.dart';
import 'package:juice_screen/rate.dart';
import 'package:juice_screen/shop.dart';

void main() {
  runApp(BottomNavigayionScreen());
}
class BottomNavigayionScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigayionScreenState();
  }

}

class _BottomNavigayionScreenState extends State<BottomNavigayionScreen> {
  int _currentIndex = 0;
  List <Widget>_screens = [
   HomeScreen(),
    Shopscreen(),
     Addscreen(),
     Ratescreen(),
      Profscreen(),
      
  ];

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Food Corner',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.apps,
                  size: 35,
                ),
                title: Text(
                  '',
                  style: TextStyle(fontSize: 0),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                  size: 35,
                ),
                title: Text(
                  '',
                  style: TextStyle(fontSize: 0),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_circle,
                  size: 45,color: Colors.red,
                ),
                title: Text(
                  '',
                  style: TextStyle(fontSize: 0),
                )),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.equalizer,
                  size: 35,
                ),
                title: Text(
                  '',
                  style: TextStyle(fontSize: 0),
                )),
                 BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline,
                  size: 35,
                ),
                title: Text(
                  '',
                  style: TextStyle(fontSize: 0),
                )),
          ]),
      ),
    );
  }
}
