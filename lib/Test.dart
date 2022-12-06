import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pythonapp/Them.dart';
import 'package:pythonapp/t1.dart';

class test extends StatefulWidget {
  @override
  _testState createState() => _testState();
}

class _testState extends State<test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("แบบทดสอบ"),
        centerTitle: true,
        backgroundColor: Colors.black,
        // orange[200],
        // transparent,
        elevation: 0,
        // leading: Icon(
        //   Icons.sort,
        //   color: Colors.grey,
        // ),
        // actions: const [
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
          height: 800,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(0.0)),
            boxShadow: <BoxShadow>[
              // BoxShadow(
              //   color: CustomTheme.loginGradientStart,
              //   offset: Offset(1.0, 6.0),
              //   blurRadius: 0.0,
              // ),
              // BoxShadow(
              //   color: CustomTheme.loginGradientEnd,
              //   offset: Offset(1.0, 6.0),
              //   blurRadius: 0.0,
              // ),
            ],
            gradient: LinearGradient(
                colors: <Color>[
                  CustomTheme.GradientEnd,
                  CustomTheme.GradientStart
                ],
                begin: FractionalOffset(0.2, 0.2),
                end: FractionalOffset(1.0, 1.0),
                stops: <double>[0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          child: SingleChildScrollView(
            child: Column(
              //แนวตั้ง
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 10.0,
                  height: 10.0,
                ),
                iconbuttonR(context),
                iconbuttonRR(context),
                iconbuttonRRR(context),
                iconbuttonRRRR(context),
                iconbuttonRRRRR(context),
                iconbuttonRRRRRR(context),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const []),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [])
              ],
            ),
          )),
    );
  }
}

Widget iconbuttonR(BuildContext context) {
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
                    // SizedBox(
                    //   width: 20,
                    // ),
                    // Image(
                    //     height: MediaQuery.of(context).size.height > 800
                    //         ? 191.0
                    //         : 60,
                    //     fit: BoxFit.fill,
                    //     image: const AssetImage('assets/1.png')),
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 15),
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
                                "แนะนำภาษา Python",
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
                    // SizedBox(
                    //   width: 20,
                    // ),
                    // Image(
                    //     height: MediaQuery.of(context).size.height > 800
                    //         ? 191.0
                    //         : 60,
                    //     fit: BoxFit.fill,
                    //     image: const AssetImage('assets/1.png')),
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 15),
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
                    // SizedBox(
                    //   width: 20,
                    // ),
                    // Image(
                    //     height: MediaQuery.of(context).size.height > 800
                    //         ? 191.0
                    //         : 60,
                    //     fit: BoxFit.fill,
                    //     image: const AssetImage('assets/1.png')),
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 15),
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
                    // SizedBox(
                    //   width: 20,
                    // ),
                    // Image(
                    //     height: MediaQuery.of(context).size.height > 800
                    //         ? 191.0
                    //         : 60,
                    //     fit: BoxFit.fill,
                    //     image: const AssetImage('assets/1.png')),
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 15),
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
                    // SizedBox(
                    //   width: 20,
                    // ),
                    // Image(
                    //     height: MediaQuery.of(context).size.height > 800
                    //         ? 191.0
                    //         : 60,
                    //     fit: BoxFit.fill,
                    //     image: const AssetImage('assets/1.png')),
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 15),
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
                    // SizedBox(
                    //   width: 20,
                    // ),
                    // Image(
                    //     height: MediaQuery.of(context).size.height > 800
                    //         ? 191.0
                    //         : 60,
                    //     fit: BoxFit.fill,
                    //     image: const AssetImage('assets/1.png')),
                    SizedBox(
                      width: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
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
