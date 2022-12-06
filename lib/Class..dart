import 'package:flutter/material.dart';
import 'package:pythonapp/t1.dart';
import 'package:pythonapp/System.dart';
import 'package:page_transition/page_transition.dart';

class Class extends StatefulWidget {
  @override
  _ClassState createState() => _ClassState();
}

class _ClassState extends State<Class> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("กลุ่มเรียน", style: TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 0, 4, 0),
        ),
        body: Container(
            color: Colors.green[50],
            child: Center(
              child: Container(
                  // decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(16),
                  //     gradient: LinearGradient(
                  //         colors: [Colors.yellow[100], Colors.green[100]])),
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image(
                          height: MediaQuery.of(context).size.height > 800
                              ? 191.0
                              : 85,
                          fit: BoxFit.fill,
                          image: const AssetImage('assets/AddFile.png')),
                      SizedBox(
                        height: 20,
                      ),
                      iconbuttonRo(context),
                      SizedBox(
                        height: 40,
                      ),
                      buildTextFieldEmail(),
                      buildTextFieldPassword(),
                      // buildTextFieldPasswordConfirm(),
                      SizedBox(
                        height: 20,
                      ),
                      button(context),
                      SizedBox(
                        height: 30,
                      ),
                      iconbuttonR(context)
                    ],
                  )),
            )));
  }

  Widget button(BuildContext context) {
    return Container(
      // width: 100,
      // height: 60,

      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.only(left: 0, top: 5),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.leftToRight, child: t1()));
            },
            child: Icon(Icons.arrow_left_outlined,
                size: 60, color: Color.fromARGB(255, 204, 228, 67)),
          ),
        ),
        SizedBox(
          width: 40,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 0, top: 5),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.rightToLeft, child: System()),
              );
            },
            child: Icon(Icons.arrow_right_outlined,
                size: 60, color: Color.fromARGB(255, 204, 228, 67)),
          ),
        )
      ]),
    );
  }

  Widget iconbuttonRo(BuildContext context) {
    var actions;
    return SizedBox(
        width: 140,
        height: 60,
        child: Card(
          color: Color.fromARGB(255, 136, 237, 115),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) {
                    return Class();
                  }),
                );
              },
              child: Padding(
                  padding: EdgeInsets.all(0),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40, right: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("เลือกไฟล์",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 251, 248, 248),
                                      fontFamily: "Jasmine",
                                      fontSize: 14,
                                      // fontWeight: FontWeight.bold
                                    )),
                              ]),
                          // Icon(Icons.arrow_forward_ios_rounded,
                          //     size: 30, color: Colors.grey),
                        ]),
                  ))),
        ));
  }

  Widget iconbuttonR(BuildContext context) {
    var actions;
    return SizedBox(
        width: 340,
        height: 60,
        child: Card(
          color: Color.fromARGB(255, 221, 67, 67),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) {
                    return Class();
                  }),
                );
              },
              child: Padding(
                  padding: EdgeInsets.all(0),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 100,
                                ),
                                Text("บันทึก",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 251, 248, 248),
                                        fontFamily: "Jasmine",
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                              ]),
                          // Icon(Icons.arrow_forward_ios_rounded,
                          //     size: 30, color: Colors.grey),
                        ]),
                  ))),
        ));
  }

  Container buildTextFieldEmail() {
    return Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.yellow[50], borderRadius: BorderRadius.circular(16)),
        child: TextField(
            decoration: InputDecoration.collapsed(hintText: "ชื่อหัวข้อ"),
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(fontSize: 18)));
  }

  Container buildTextFieldPassword() {
    return Container(
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.only(top: 12),
        decoration: BoxDecoration(
            color: Colors.yellow[50], borderRadius: BorderRadius.circular(16)),
        child: TextField(
            obscureText: true,
            decoration: InputDecoration.collapsed(hintText: "ลิ้งวีดีโอ"),
            style: TextStyle(fontSize: 18)));
  }

  Container buildTextFieldPasswordConfirm() {
    return Container(
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.only(top: 12),
        decoration: BoxDecoration(
            color: Colors.yellow[50], borderRadius: BorderRadius.circular(16)),
        child: TextField(
            obscureText: true,
            decoration: InputDecoration.collapsed(hintText: "Re-password"),
            style: TextStyle(fontSize: 18)));
  }
}
