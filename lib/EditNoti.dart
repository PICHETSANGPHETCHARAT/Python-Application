
import 'package:flutter/material.dart';

class EditNoti extends StatefulWidget {


  @override
  _EditNotiState createState() => _EditNotiState();
}

class _EditNotiState extends State<EditNoti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ตั้งค่าการแจ้งเตือน", style: TextStyle(color: Colors.white)),
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
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      buildTextFieldEmail(),
                      // buildTextFieldPassword(),
                      // buildTextFieldPasswordConfirm(),
                      // SizedBox(height: 30,),
                      // iconbuttonR(context)
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
                    return EditNoti();
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
                                  width: 80,
                                ),
                                Text("ลงทะเบียน",
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
            decoration: InputDecoration.collapsed(hintText: "การแจ้งเตือน"),
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(fontSize: 18)));
  }

  // Container buildTextFieldPassword() {
  //   return Container(
  //       padding: EdgeInsets.all(12),
  //       margin: EdgeInsets.only(top: 12),
  //       decoration: BoxDecoration(
  //           color: Colors.yellow[50], borderRadius: BorderRadius.circular(16)),
  //       child: TextField(
  //           obscureText: true,
  //           decoration: InputDecoration.collapsed(hintText: "Password"),
  //           style: TextStyle(fontSize: 18)));
  // }

  // Container buildTextFieldPasswordConfirm() {
  //   return Container(
  //       padding: EdgeInsets.all(12),
  //       margin: EdgeInsets.only(top: 12),
  //       decoration: BoxDecoration(
  //           color: Colors.yellow[50], borderRadius: BorderRadius.circular(16)),
  //       child: TextField(
  //           obscureText: true,
  //           decoration: InputDecoration.collapsed(hintText: "Re-password"),
  //           style: TextStyle(fontSize: 18)));
  // }

  
}