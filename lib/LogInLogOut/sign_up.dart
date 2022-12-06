
import 'package:flutter/material.dart';

class MySignUpPage extends StatefulWidget {


  @override
  _MySignUpPageState createState() => _MySignUpPageState();
}

class _MySignUpPageState extends State<MySignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ลงทะเบียน", style: TextStyle(color: Colors.white)),
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
                  margin: EdgeInsets.all(32),
                  padding: EdgeInsets.all(24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      buildTextFieldName(),
                       SizedBox(height: 10,),
                      buildTextFieldEmail(),
                      buildTextFieldPassword(),
                      buildTextFieldPasswordConfirm(),
                      SizedBox(height: 50,),
                      iconbuttonR(context)
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
                    return MySignUpPage();
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
                                  width: 60,
                                ),
                                Text("ขอ OTP เพื่อสมัคร",
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
  Container buildTextFieldName() {
    return Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.yellow[50], borderRadius: BorderRadius.circular(16)),
        child: TextField(
            decoration: InputDecoration.collapsed(hintText: "ชื่อ"),
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(fontSize: 18)));
  }

  Container buildTextFieldEmail() {
    return Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.yellow[50], borderRadius: BorderRadius.circular(16)),
        child: TextField(
            decoration: InputDecoration.collapsed(hintText: "อีเมล"),
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
            decoration: InputDecoration.collapsed(hintText: "รหัสผ่าน"),
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
            decoration: InputDecoration.collapsed(hintText: "ยืนยันรหัสผ่าน"),
            style: TextStyle(fontSize: 18)));
  }

  
}