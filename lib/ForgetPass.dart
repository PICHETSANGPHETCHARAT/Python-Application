import 'package:flutter/material.dart';
import 'package:pythonapp/LogInLogOut/sign_in.dart';
import 'package:pythonapp/t1.dart';
import 'package:pythonapp/System.dart';
import 'package:page_transition/page_transition.dart';

class ForgetPass extends StatefulWidget {
  @override
  _ForgetPassState createState() => _ForgetPassState();
}

class _ForgetPassState extends State<ForgetPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ลืมรหัสผ่าน", style: TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 0, 4, 0),
        ),
        body: Container(
            height: 800,
            color: Colors.green[50],
            child: SingleChildScrollView(
              child: Container(
                  // decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(16),
                  //     gradient: LinearGradient(
                  //         colors: [Colors.yellow[100], Colors.green[100]])),
                  margin: EdgeInsets.all(32),
                  padding: EdgeInsets.all(24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      buildTextField(),
                      //  SizedBox(height: 30,),
                      // buildTextFieldE(),
                      //  SizedBox(height: 10,),
                      // buildTextFieldEmail(),

                      // buildTextFieldPassword(),
                      // buildTextFieldPasswordConfirm(),
                      //  SizedBox(height: 30,),
                      // buildTextFieldEE(),

                      SizedBox(
                        height: 10,
                      ),
                      //  button(context),
                      SizedBox(
                        height: 20,
                      ),
                      iconbuttonR(context),
                    ],
                  )),
            )));
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
                    return MyLoginPage();
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
                                  width: 95,
                                ),
                                Text("ขอ OTP",
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

  Container buildTextFieldEmail() {
    return Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.yellow[50], borderRadius: BorderRadius.circular(16)),
        child: TextField(
            decoration: InputDecoration.collapsed(hintText: "B"),
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(fontSize: 18)));
  }

  Container buildTextField() {
    return Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.yellow[50], borderRadius: BorderRadius.circular(16)),
        child: TextField(
            decoration: InputDecoration.collapsed(hintText: "อีเมลผู้ใช้"),
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(fontSize: 18)));
  }

  Container buildTextFieldE() {
    return Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.yellow[50], borderRadius: BorderRadius.circular(16)),
        child: TextField(
            decoration: InputDecoration.collapsed(hintText: "A"),
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(fontSize: 18)));
  }

  Container buildTextFieldEE() {
    return Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.yellow[50], borderRadius: BorderRadius.circular(16)),
        child: TextField(
            decoration: InputDecoration.collapsed(hintText: "คำตอบ"),
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
            decoration: InputDecoration.collapsed(hintText: "C"),
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
            decoration: InputDecoration.collapsed(hintText: "D"),
            style: TextStyle(fontSize: 18)));
  }
}
