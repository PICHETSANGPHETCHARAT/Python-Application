import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pythonapp/1.dart';
import 'package:pythonapp/AddFile.dart';
import 'package:pythonapp/AddTest.dart';
import 'package:pythonapp/Class..dart';
import 'package:pythonapp/Lesson.dart';
import 'package:pythonapp/Member.dart';
import 'package:pythonapp/Rank.dart';
import 'package:pythonapp/Report.dart';
import 'package:pythonapp/Them.dart';
import 'package:pythonapp/ForgetPass.dart';
import 'package:pythonapp/t1.dart';
import 'package:pythonapp/Noti.dart';
import 'package:pythonapp/Test.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(0.0)),
            gradient: LinearGradient(
                colors: <Color>[
                  Color.fromARGB(255, 45, 2, 34),
                  Color.fromARGB(255, 227, 125, 183)
                ],
                begin: FractionalOffset(0.2, 0.2),
                end: FractionalOffset(1.0, 1.0),
                stops: <double>[0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40.0,
                ),
                ButtonBook(context),
                SizedBox(
                  height: 40.0,
                ),
                SizedBox(
                    width: double.infinity,
                    height: 120,
                    child: Card(
                        color: Color.fromARGB(255, 6, 6, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)),
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 10),
                          child: Column(children: [
                            Expanded(
                              child: Row(children: [
                                Expanded(child: ButtonTest(context)),
                                Expanded(child: ButtonExamResults(context)),
                                Expanded(child: ButtonVideo(context)),
                              ]),
                            ),
                            // Expanded(
                            //   child: Row(
                            //       mainAxisAlignment:
                            //           MainAxisAlignment.spaceEvenly,
                            //       children: [
                            //         Expanded(child: ButtonAddFile(context)),
                            //         Expanded(child: ButtonAddTest(context)),
                            //         Expanded(child: ButtonMember(context))
                            //       ]),
                            // ),
                            // Expanded(
                            //   child: Row(
                            //       mainAxisAlignment:
                            //           MainAxisAlignment.spaceEvenly,
                            //       children: [
                            //         Expanded(child: ButtonClass(context)),
                            //         Expanded(child: ButtonRank(context)),
                            //         Expanded(child: ButtonReport(context)),
                            //       ]),
                            // ),
                          ]),
                        ))),
                SizedBox(
                  height: 800,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget Status() {
    return SizedBox(
      width: 350,
      height: 121,
      child: Card(
          color: Colors.orange,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          // color: Colors.orange[900], //สีของกรอบ

          margin: EdgeInsets.symmetric(vertical: 12), //ความห่างของกรอบแต่ละอัน
          child: Padding(
              padding: EdgeInsets.all(30), //ความห่างของกรอบจากทุกด้าน
              // height: 250, //ความสูงของกรอบ

              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Text('สถานะ : ',
                          style: TextStyle(
                              color: Color.fromARGB(255, 11, 8, 8),
                              fontFamily: "Jasmine",
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold)),
                    ])
                  ]))),
    );
  }

  Widget ButtonBook(BuildContext context) {
    return InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) {
              return Lesson();
            }),
          );
        },
        child: Expanded(
          child: Column(children: [
            Container(
                height: 150,
                width: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/bookkk.jpg"),
                      fit: BoxFit.cover),
                ),
                child: SizedBox(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      SizedBox(
                        width: 12,
                      ),
                      Text("บทเรียน",
                          style: TextStyle(
                              color: Color.fromARGB(255, 244, 243, 243),
                              fontFamily: "Jasmine",
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold)),
                    ]))),
          ]),
        )
        // Expanded(
        //   child: Padding(
        //     padding: EdgeInsets.all(12),
        //     child: Image(image: AssetImage('assets/Test.png')),
        //   ),
        // ),
        // Text("แบบทดสอบ",
        //     style: TextStyle(
        //       color: Color.fromARGB(255, 82, 80, 80),
        //       fontFamily: "Jasmine",
        //       fontSize: 12.0,
        //       // fontWeight: FontWeight.bold
        //     )),
        );
  }

  Widget ButtonTest(BuildContext context) {
    return InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) {
              return test();
            }),
          );
        },
        child: Expanded(
          child: Column(children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Image(image: AssetImage('assets/Test.png')),
              ),
            ),
            Text("แบบทดสอบ",
                style: TextStyle(
                    color: Color.fromARGB(255, 250, 249, 249),
                    fontFamily: "Jasmine",
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold)),
          ]),
        ));
  }

  Widget ButtonExamResults(BuildContext context) {
    return InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) {
              return t1();
            }),
          );
        },
        child: Expanded(
          child: Column(children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Image(image: AssetImage('assets/ExamResults.png')),
              ),
            ),
            Text("ผลสอบ",
                style: TextStyle(
                    color: Color.fromARGB(255, 253, 251, 251),
                    fontFamily: "Jasmine",
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold)),
          ]),
        ));
  }

  Widget ButtonVideo(BuildContext context) {
    return InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) {
              return t1();
            }),
          );
        },
        child: Expanded(
          child: Column(children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Image(image: AssetImage('assets/Video.png')),
              ),
            ),
            Text("วีดีโอ",
                style: TextStyle(
                    color: Color.fromARGB(255, 248, 247, 247),
                    fontFamily: "Jasmine",
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold)),
          ]),
        ));
  }

  Widget ButtonAddFile(BuildContext context) {
    return InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) {
              return t1();
            }),
          );
        },
        child: Expanded(
          child: Column(children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Image(image: AssetImage('assets/AddFile.png')),
              ),
            ),
            Text("เพิ่มไฟล์",
                style: TextStyle(
                  color: Color.fromARGB(255, 82, 80, 80),
                  fontFamily: "Jasmine",
                  fontSize: 12.0,
                  // fontWeight: FontWeight.bold
                )),
          ]),
        ));
  }

  Widget ButtonAddTest(BuildContext context) {
    return InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) {
              return t1();
            }),
          );
        },
        child: Expanded(
          child: Column(children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Image(image: AssetImage('assets/AddTest.png')),
              ),
            ),
            Text("เพิ่มแบบทดสอบ",
                style: TextStyle(
                  color: Color.fromARGB(255, 82, 80, 80),
                  fontFamily: "Jasmine",
                  fontSize: 12.0,
                  // fontWeight: FontWeight.bold
                )),
          ]),
        ));
  }

  Widget ButtonMember(BuildContext context) {
    return InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) {
              return t1();
            }),
          );
        },
        child: Expanded(
          child: Column(children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Image(image: AssetImage('assets/member.png')),
              ),
            ),
            Text("สมาชิก",
                style: TextStyle(
                  color: Color.fromARGB(255, 82, 80, 80),
                  fontFamily: "Jasmine",
                  fontSize: 12.0,
                  // fontWeight: FontWeight.bold
                )),
          ]),
        ));
  }

  Widget ButtonClass(BuildContext context) {
    return InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) {
              return t1();
            }),
          );
        },
        child: Expanded(
          child: Column(children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Image(image: AssetImage('assets/Class1.png')),
              ),
            ),
            Text("กลุ่มเรียน",
                style: TextStyle(
                  color: Color.fromARGB(255, 82, 80, 80),
                  fontFamily: "Jasmine",
                  fontSize: 12.0,
                  // fontWeight: FontWeight.bold
                )),
          ]),
        ));
  }

  Widget ButtonRank(BuildContext context) {
    return InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) {
              return t1();
            }),
          );
        },
        child: Expanded(
          child: Column(children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Image(image: AssetImage('assets/Rank.png')),
              ),
            ),
            Text("อันดับ",
                style: TextStyle(
                  color: Color.fromARGB(255, 82, 80, 80),
                  fontFamily: "Jasmine",
                  fontSize: 12.0,
                  // fontWeight: FontWeight.bold
                )),
          ]),
        ));
  }

  Widget ButtonReport(BuildContext context) {
    return InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) {
              return t1();
            }),
          );
        },
        child: Expanded(
          child: Column(children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Image(image: AssetImage('assets/Report.png')),
              ),
            ),
            Text("รายงานผล",
                style: TextStyle(
                  color: Color.fromARGB(255, 82, 80, 80),
                  fontFamily: "Jasmine",
                  fontSize: 12.0,
                  // fontWeight: FontWeight.bold
                )),
          ]),
        ));
  }

  // Widget p(BuildContext context) {
  //   return Scaffold(
  //     body: Container(
  //       decoration: BoxDecoration(
  //         image: DecorationImage(
  //           image: AssetImage("assets/p.png"), // <-- BACKGROUND IMAGE
  //           fit: BoxFit.fill,
  //         ),
  //       ),
  //     ),
  //   );
  // }

}
