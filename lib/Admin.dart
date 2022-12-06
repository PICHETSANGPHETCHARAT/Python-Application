import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pythonapp/AddFile.dart';
import 'package:pythonapp/AddTest.dart';
import 'package:pythonapp/Class..dart';
import 'package:pythonapp/Lesson.dart';
import 'package:pythonapp/Member.dart';
import 'package:pythonapp/Rank.dart';
import 'package:pythonapp/Report.dart';
import 'package:pythonapp/Them.dart';
import 'package:pythonapp/t1.dart';

class Admin extends StatefulWidget {
  @override
  _AdminState createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 34, 31, 32),
      appBar: AppBar(
        title: Text("แอดมิน"),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 9, 0, 3),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Container(
          height: 900,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(0.0)),
            boxShadow: <BoxShadow>[],
            gradient: LinearGradient(
                colors: <Color>[
                  Color.fromARGB(255, 69, 12, 69),
                  Color.fromARGB(255, 23, 3, 18)
                  // CustomTheme.GradientEnd,
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
              //แนวตั้ง
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                //  SizedBox(
                //     height: 2.0,
                //   ),
                ButtonAddFile(context),
                SizedBox(
                  height: 2.0,
                ),
                ButtonAddTest(context),
                SizedBox(
                  height: 2.0,
                ),
                ButtonClass(context),
                SizedBox(
                  height: 2.0,
                ),
                ButtonMember(context),
                SizedBox(
                  height: 2.0,
                ),
                ButtonReport(context),

                SizedBox(
                  height: 2.0,
                ),
                ButtonRank(context),
                // iconbuttonR(context),
              ],
            ),
          )),
    );
  }

  Widget ButtonAddFile(BuildContext context) {
    return InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) {
              return AddFile();
            }),
          );
        },
        child: Expanded(
          child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/345.jpg"), fit: BoxFit.cover),
                ),
                child: SizedBox(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Card(
                        color: Color.fromARGB(255, 211, 89, 162),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: Text("เพิ่มบทเรียน",
                            style: TextStyle(
                                color: Color.fromARGB(255, 254, 252, 252),
                                fontFamily: "Jasmine",
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold)),
                      ),
                    ]))),
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
              return AddTest();
            }),
          );
        },
        child: Expanded(
          child: Column(children: [
            Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/456.jpg"), fit: BoxFit.cover),
                ),
                child: SizedBox(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Card(
                        color: Color.fromARGB(255, 211, 89, 162),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: Text("เพิ่มบททดสอบ",
                            style: TextStyle(
                                color: Color.fromARGB(255, 254, 252, 252),
                                fontFamily: "Jasmine",
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold)),
                      ),
                    ]))),
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
              return Class();
            }),
          );
        },
        child: Expanded(
          child: Column(children: [
            Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/CLASSS.jpg"),
                      fit: BoxFit.cover),
                ),
                child: SizedBox(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Card(
                        color: Color.fromARGB(255, 211, 89, 162),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: Text("กลุ่มเรียน",
                            style: TextStyle(
                                color: Color.fromARGB(255, 254, 252, 252),
                                fontFamily: "Jasmine",
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold)),
                      ),
                    ]))),
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
              return Member();
            }),
          );
        },
        child: Expanded(
          child: Column(children: [
            Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/MEMBERRR.png"),
                      fit: BoxFit.cover),
                ),
                child: SizedBox(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Card(
                        color: Color.fromARGB(255, 211, 89, 162),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: Text("ผู้ใช้งานทั้งหมด",
                            style: TextStyle(
                                color: Color.fromARGB(255, 254, 252, 252),
                                fontFamily: "Jasmine",
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold)),
                      ),
                    ]))),
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
              return Rank();
            }),
          );
        },
        child: Expanded(
          child: Column(children: [
            Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/Rankkk.jpg"),
                      fit: BoxFit.cover),
                ),
                child: SizedBox(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Card(
                        color: Color.fromARGB(255, 211, 89, 162),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: Text("อันดับ",
                            style: TextStyle(
                                color: Color.fromARGB(255, 254, 252, 252),
                                fontFamily: "Jasmine",
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold)),
                      ),
                    ]))),
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
              return Report();
            }),
          );
        },
        child: Expanded(
          child: Column(children: [
            Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/567.jpg"), fit: BoxFit.cover),
                ),
                child: SizedBox(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Card(
                        color: Color.fromARGB(255, 211, 89, 162),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        child: Text("รายงาน",
                            style: TextStyle(
                                color: Color.fromARGB(255, 254, 252, 252),
                                fontFamily: "Jasmine",
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold)),
                      ),
                    ]))),
          ]),
        ));
  }
}

Widget iconbuttonR(BuildContext context) {
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
                padding: EdgeInsets.all(0),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  //
                ]))),
      ));
}
