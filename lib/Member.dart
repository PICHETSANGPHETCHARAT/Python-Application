import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pythonapp/1.dart';
import 'package:pythonapp/Them.dart';
import 'package:pythonapp/t1.dart';

class Member extends StatefulWidget {
  @override
  _MemberState createState() => _MemberState();
}

class _MemberState extends State<Member> {
  String _selectedMenu = '';
  final FocusNode _focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(
          "ผู้ใช้งาน",
        ),
        centerTitle: true,
        backgroundColor: Colors.black,

        elevation: 0,

        // actions: <Widget>[
        //   // This button presents popup menu items.
        //   PopupMenuButton<Menu>(
        //       // Callback that sets the selected popup menu item.
        //       onSelected: (Menu item) {
        //         setState(() {
        //           _selectedMenu = item.name;
        //         });
        //       },
        //       itemBuilder: (BuildContext context) => <PopupMenuEntry<Menu>>[
        //             PopupMenuItem<Menu>(
        //               value: Menu.itemOne,
        //               child: Text('แก้ไขเนื้อหา'),
        //             ),
        //             PopupMenuItem<Menu>(
        //               value: Menu.itemTwo,
        //               child: Text('แก้ไขวีดีโอ'),
        //             ),
        //             PopupMenuItem<Menu>(
        //               value: Menu.itemThree,
        //               child: Text('ลบ'),
        //             ),
        //             PopupMenuItem<Menu>(
        //               value: Menu.itemFour,
        //               child: Text('แชร์'),
        //             ),
        //           ]),
        // ],
        // actions:  [
        //   Padding(
        //     padding: EdgeInsets.only(right: 16),
        //     child: Icon(
        //       Icons.search,
        //       color: Colors.grey,
        //     ),
        //   ),
        // ],
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(0.0)),
            boxShadow: <BoxShadow>[],
            gradient: LinearGradient(
                colors: <Color>[
                  Color.fromARGB(255, 34, 31, 32),
                  Color.fromARGB(255, 28, 16, 5)
                  // CustomTheme.GradientEnd,
                  // CustomTheme.GradientStart
                ],
                begin: FractionalOffset(0.2, 0.2),
                end: FractionalOffset(1.0, 1.0),
                stops: <double>[0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 5.0,
                ),
                TextField(
                  focusNode: _focusNode,
                  cursorColor: Color.fromARGB(255, 21, 11, 11),
                  cursorRadius: Radius.circular(10.0),
                  style: TextStyle(color: Color.fromARGB(255, 18, 10, 10)),
                  decoration: InputDecoration(
                      hintText: "ค้นหาผู้ใช้",
                      hintStyle:
                          TextStyle(color: Color.fromARGB(255, 12, 4, 4)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide.none),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color.fromARGB(255, 10, 6, 6),
                      ),
                      suffixIcon: Container(
                        height: 20,
                        width: 70,
                        // decoration: BoxDecoration(
                        //     color: Colors.white24,
                        //     borderRadius: BorderRadius.only(
                        //         topRight: Radius.circular(20.0),
                        //         bottomRight: Radius.circular(20.0))),
                        // child: Icon(
                        //   Icons.menu,
                        //   color: Color.fromARGB(255, 8, 5, 5),
                        // ),
                      ),
                      filled: true,
                      fillColor: Colors.white24),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Button(context),
                // iconbuttonRR(context),
                // iconbuttonRRR(context),
                // iconbuttonRRRR(context),
                // iconbuttonRRRRR(context),
                // iconbuttonRRRRRR(context),
                SizedBox(
                  height: 800,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: []),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [])
              ],
            ),
          )),
      // drawer: Drawer(
      //   // Add a ListView to the drawer. This ensures the user can scroll
      //   // through the options in the drawer if there isn't enough vertical
      //   // space to fit everything.
      //   child: ListView(
      //     // Important: Remove any padding from the ListView.
      //     padding: EdgeInsets.zero,
      //     children: [
      //       DrawerHeader(
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.all(Radius.circular(0.0)),
      //           gradient: LinearGradient(
      //               colors: <Color>[
      //                 Color.fromARGB(255, 247, 65, 140),
      //                 CustomTheme.GradientStart
      //               ],
      //               begin: FractionalOffset(0.2, 0.2),
      //               end: FractionalOffset(1.0, 1.0),
      //               stops: <double>[0.0, 1.0],
      //               tileMode: TileMode.clamp),
      //         ),
      //         child: Text(
      //           'กลุ่มเรียน',
      //           style: TextStyle(
      //               color: Color.fromARGB(255, 251, 250, 250),
      //               fontFamily: "Jasmine",
      //               fontSize: 30.0,
      //               fontWeight: FontWeight.bold),
      //         ),
      //       ),
      //       ListTile(
      //         title: Text(
      //           'กลุ่ม 1',
      //           style: TextStyle(
      //               color: Color.fromARGB(255, 41, 41, 41),
      //               fontFamily: "Jasmine",
      //               fontSize: 18.0,
      //               fontWeight: FontWeight.bold),
      //         ),
      //         onTap: () {
      //           // Update the state of the app
      //           // ...
      //           // Then close the drawer
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         title: Text(
      //           'Item 2',
      //           style: TextStyle(
      //               color: Color.fromARGB(255, 41, 41, 41),
      //               fontFamily: "Jasmine",
      //               fontSize: 18.0,
      //               fontWeight: FontWeight.bold),
      //         ),
      //         onTap: () {
      //           // Update the state of the app
      //           // ...
      //           // Then close the drawer
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         title: Text(
      //           'Item 2',
      //           style: TextStyle(
      //               color: Color.fromARGB(255, 41, 41, 41),
      //               fontFamily: "Jasmine",
      //               fontSize: 18.0,
      //               fontWeight: FontWeight.bold),
      //         ),
      //         onTap: () {
      //           // Update the state of the app
      //           // ...
      //           // Then close the drawer
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         title: Text(
      //           'Item 2',
      //           style: TextStyle(
      //               color: Color.fromARGB(255, 41, 41, 41),
      //               fontFamily: "Jasmine",
      //               fontSize: 18.0,
      //               fontWeight: FontWeight.bold),
      //         ),
      //         onTap: () {
      //           // Update the state of the app
      //           // ...
      //           // Then close the drawer
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         title: Text(
      //           'Item 2',
      //           style: TextStyle(
      //               color: Color.fromARGB(255, 41, 41, 41),
      //               fontFamily: "Jasmine",
      //               fontSize: 18.0,
      //               fontWeight: FontWeight.bold),
      //         ),
      //         onTap: () {
      //           // Update the state of the app
      //           // ...
      //           // Then close the drawer
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         title: Text(
      //           'Item 2',
      //           style: TextStyle(
      //               color: Color.fromARGB(255, 41, 41, 41),
      //               fontFamily: "Jasmine",
      //               fontSize: 18.0,
      //               fontWeight: FontWeight.bold),
      //         ),
      //         onTap: () {
      //           // Update the state of the app
      //           // ...
      //           // Then close the drawer
      //           Navigator.pop(context);
      //         },
      //       ),
      //     ],
      //   ),
      // )
    );
  }
}

Widget Button(BuildContext context) {
  return SizedBox(
      width: double.infinity,
      height: 100,
      child: Card(
        color: Color.fromARGB(255, 242, 247, 242),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) {
                  return t1();
                }),
              );
            },
            child: Padding(
                padding: EdgeInsets.only(
                  right: 0,
                ),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Padding(
                    padding: EdgeInsets.only(
                      right: 20,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          // Image(
                          //     // height: MediaQuery.of(context).size.height > 800
                          //     //     ? 191.0
                          //     //     : 20,
                          //     // fit: BoxFit.fill,
                          //     image: AssetImage('assets/1.png')),
                          SizedBox(
                            width: 20,
                          ),
                          Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    // Text("Intoduction",
                                    //     style: TextStyle(
                                    //         color: Colors.black,
                                    //         fontFamily: "Jasmine",
                                    //         fontSize: 20.0,
                                    //         fontWeight: FontWeight.bold)),
                                    // SizedBox(
                                    //   height: 2,
                                    // ),
                                    Text(
                                      "",
                                      style: TextStyle(
                                        color: Colors.grey[700],
                                        fontFamily: "Jasmine",
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ])),
                          SizedBox(
                            width: 280,
                          ),
                          // This button presents popup menu items.
                          PopupMenuButton<Menu>(
                              // Callback that sets the selected popup menu item.

                              itemBuilder: (BuildContext context) =>
                                  <PopupMenuEntry<Menu>>[
                                    PopupMenuItem<Menu>(
                                      value: Menu.itemOne,
                                      child: Text('ดูข้อมูล'),
                                    ),
                                    PopupMenuItem<Menu>(
                                      value: Menu.itemTwo,
                                      child: Text('ดูรายงาน'),
                                    ),
                                    PopupMenuItem<Menu>(
                                      value: Menu.itemThree,
                                      child: Text('ลบบัญชี'),
                                    ),
                                    PopupMenuItem<Menu>(
                                      value: Menu.itemFour,
                                      child: Text('แกไขบัญชี'),
                                    ),
                                  ]),
                        ]),
                  ),
                ]))),
      ));
}

Widget iconbuttonRR(BuildContext context) {
  return SizedBox(
      width: 375,
      height: 100,
      child: Card(
        color: Color.fromARGB(255, 242, 247, 242),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) {
                  return t1();
                }),
              );
            },
            child: Padding(
                padding: EdgeInsets.all(0),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    SizedBox(
                      width: 20,
                    ),
                    Image(
                        height: MediaQuery.of(context).size.height > 800
                            ? 191.0
                            : 60,
                        fit: BoxFit.fill,
                        image: AssetImage('assets/1.png')),
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Text("Intoduction",
                              //     style: TextStyle(
                              //         color: Colors.black,
                              //         fontFamily: "Jasmine",
                              //         fontSize: 20.0,
                              //         fontWeight: FontWeight.bold)),
                              // SizedBox(
                              //   height: 2,
                              // ),
                              Text(
                                "การติดตั้งภาษา Python",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontFamily: "Jasmine",
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ]))
                  ]),
                ]))),
      ));
}

Widget iconbuttonRRR(BuildContext context) {
  return SizedBox(
      width: 375,
      height: 100,
      child: Card(
        color: Color.fromARGB(255, 242, 247, 242),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) {
                  return t1();
                }),
              );
            },
            child: Padding(
                padding: EdgeInsets.all(0),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    SizedBox(
                      width: 20,
                    ),
                    Image(
                        height: MediaQuery.of(context).size.height > 800
                            ? 191.0
                            : 60,
                        fit: BoxFit.fill,
                        image: AssetImage('assets/1.png')),
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Text("Intoduction",
                              //     style: TextStyle(
                              //         color: Colors.black,
                              //         fontFamily: "Jasmine",
                              //         fontSize: 20.0,
                              //         fontWeight: FontWeight.bold)),
                              // SizedBox(
                              //   height: 2,
                              // ),
                              Text(
                                "โครงสร้างของภาษา Python",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontFamily: "Jasmine",
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ]))
                  ]),
                ]))),
      ));
}

Widget iconbuttonRRRR(BuildContext context) {
  return SizedBox(
      width: 375,
      height: 100,
      child: Card(
        color: Color.fromARGB(255, 242, 247, 242),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) {
                  return t1();
                }),
              );
            },
            child: Padding(
                padding: EdgeInsets.all(0),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    SizedBox(
                      width: 20,
                    ),
                    Image(
                        height: MediaQuery.of(context).size.height > 800
                            ? 191.0
                            : 60,
                        fit: BoxFit.fill,
                        image: AssetImage('assets/1.png')),
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Text("Intoduction",
                              //     style: TextStyle(
                              //         color: Colors.black,
                              //         fontFamily: "Jasmine",
                              //         fontSize: 20.0,
                              //         fontWeight: FontWeight.bold)),
                              // SizedBox(
                              //   height: 2,
                              // ),
                              Text(
                                "ตัวแปรและประเภทข้อมูล",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontFamily: "Jasmine",
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ]))
                  ]),
                ]))),
      ));
}

Widget iconbuttonRRRRR(BuildContext context) {
  return SizedBox(
      width: 375,
      height: 100,
      child: Card(
        color: Color.fromARGB(255, 242, 247, 242),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) {
                  return t1();
                }),
              );
            },
            child: Padding(
                padding: EdgeInsets.all(0),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    SizedBox(
                      width: 20,
                    ),
                    Image(
                        height: MediaQuery.of(context).size.height > 800
                            ? 191.0
                            : 60,
                        fit: BoxFit.fill,
                        image: AssetImage('assets/1.png')),
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Text("Intoduction",
                              //     style: TextStyle(
                              //         color: Colors.black,
                              //         fontFamily: "Jasmine",
                              //         fontSize: 20.0,
                              //         fontWeight: FontWeight.bold)),
                              // SizedBox(
                              //   height: 2,
                              // ),
                              Text(
                                "การรับค่าและการแสดงผล",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontFamily: "Jasmine",
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ]))
                  ]),
                ]))),
      ));
}

Widget iconbuttonRRRRRR(BuildContext context) {
  return SizedBox(
      width: 375,
      height: 100,
      child: Card(
        color: Color.fromARGB(255, 242, 247, 242),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: InkWell(
            splashColor: Colors.blue.withAlpha(30),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) {
                  return t1();
                }),
              );
            },
            child: Padding(
                padding: EdgeInsets.all(0),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    SizedBox(
                      width: 20,
                    ),
                    Image(
                        height: MediaQuery.of(context).size.height > 800
                            ? 191.0
                            : 60,
                        fit: BoxFit.fill,
                        image: AssetImage('assets/1.png')),
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Text("Intoduction",
                            //     style: TextStyle(
                            //         color: Colors.black,
                            //         fontFamily: "Jasmine",
                            //         fontSize: 20.0,
                            //         fontWeight: FontWeight.bold)),
                            // SizedBox(
                            //   height: 2,
                            // ),
                            Text(
                              "ตัวดำเนินการ",
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontFamily: "Jasmine",
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ]),
                    )
                  ]),
                ]))),
      ));
}
