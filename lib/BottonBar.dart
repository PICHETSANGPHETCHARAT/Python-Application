import 'package:flutter/material.dart';
import 'package:pythonapp/Admin.dart';
import 'package:pythonapp/Home.dart';

import 'package:pythonapp/LogInLogOut/sign_in.dart';
import 'package:pythonapp/Lesson.dart';
import 'package:pythonapp/AddTest.dart';

import 'package:pythonapp/t1.dart';
import 'package:pythonapp/System.dart';
import 'package:pythonapp/Noti.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottonBar extends StatefulWidget {
  @override
  _BottonBarState createState() => _BottonBarState();
}

class _BottonBarState extends State<BottonBar> {
  var _currentIndex = 0;
  List<Widget> listViews = <Widget>[];
  final ScrollController scrollController = ScrollController();
  double topBarOpacity = 0.0;

  Widget tabBody = Container();

  static final List<Widget> _widgetOptions = <Widget>[
    Home(),
    Admin(),
    noti(),
    System()
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      home: Scaffold(
        bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          items: [
            SalomonBottomBarItem(
              icon: Icon(Icons.home),
              title: Text("หน้าแรก"),
              selectedColor: Colors.purple,
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.book),
              title: Text("แอดมิน"),
              selectedColor: Colors.pink,
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.notifications),
              title: Text("แจ้งเตือน"),
              selectedColor: Colors.teal,
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.person),
              title: Text("ข้อมูลส่วนตัว"),
              selectedColor: Color.fromARGB(255, 31, 58, 94),
            ),
          ],
        ),
        body: Center(
          child: _widgetOptions.elementAt(_currentIndex),
        ),
      ),
    );
  }
}
