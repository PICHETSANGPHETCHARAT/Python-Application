import 'package:flutter/material.dart';
import 'package:pythonapp/BottonBar.dart';
import 'package:pythonapp/LogInLogOut/sign_up.dart';
import 'package:pythonapp/t1.dart';

class MyLoginPage extends StatefulWidget {
  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("สมัครสมาชิก", style: TextStyle(color: Colors.white)),
        //   centerTitle: true,
        //   backgroundColor: Colors.black,
        // ),
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
                      SizedBox(
                        height: 40,
                      ),
                      Image(
                          height: MediaQuery.of(context).size.height > 800
                              ? 191.0
                              : 100,
                          fit: BoxFit.fill,
                          image: const AssetImage('assets/Python.png')),
                      SizedBox(
                        height: 40,
                      ),
                      buildTextFieldEmail(),
                      buildTextFieldPassword(),
                      SizedBox(
                        height: 10,
                      ),
                      Text("ลืมรหัสผ่าน"),
                      SizedBox(
                        height: 20,
                      ),
                      iconbuttonR(context),

                      // Row(
                      //   mainAxisSize: MainAxisSize.min,
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: <Widget>[
                      //     IconButton(context),
                      // iconbuttonRrrr(context),
                      //   ],
                      // ),

                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          iconbuttonRRR(context),
                          iconbuttonRR(context)
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text("ลงทะเบียน",
                          style: TextStyle(
                              color: Color.fromARGB(255, 11, 10, 10),
                              fontFamily: "Jasmine",
                              fontSize: 16,
                              fontWeight: FontWeight.bold))
                    ],
                  )),
            )));
  }

  Container buildButtonSignIn() {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        child: Text("Sign in",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.white)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.green[200]),
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(12));
  }

  Container buildTextFieldEmail() {
    return Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.yellow[50], borderRadius: BorderRadius.circular(16)),
        child: TextField(
            decoration: InputDecoration.collapsed(hintText: "อีเมล"),
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

  Widget iconbuttonRrrr(BuildContext context) {
    var actions;
    return SizedBox(
        width: 130,
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
                    return ButtonBar();
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
                                // SizedBox(
                                //   width: 90,
                                // ),
                                Text("Admin",
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
                                  width: 80,
                                ),
                                Text("เข้าสู่ระบบ",
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

  Widget IconButton(BuildContext context) {
    var actions;
    return SizedBox(
        width: 130,
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
                                // SizedBox(
                                //   width: 90,
                                // ),
                                Text("User",
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

  Widget iconbuttonRRR(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      // child: Card(
      //   // color: Colors.white,
      //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
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
              padding: EdgeInsets.all(2),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Image(
                          height: MediaQuery.of(context).size.height > 800
                              ? 191.0
                              : 50,
                          fit: BoxFit.fill,
                          image: const AssetImage('assets/FB.png')),
                    ]),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Facebook",
                        style: TextStyle(
                          color: Color.fromARGB(255, 82, 80, 80),
                          fontFamily: "Jasmine",
                          fontSize: 16.0,
                          // fontWeight: FontWeight.bold
                        )),
                  ]))),
      // )
    );
  }

  Widget iconbuttonRR(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      // child: Card(
      //   // color: Colors.white,
      //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
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
              padding: EdgeInsets.all(2),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Image(
                          height: MediaQuery.of(context).size.height > 800
                              ? 191.0
                              : 50,
                          fit: BoxFit.fill,
                          image: const AssetImage('assets/GG.png')),
                    ]),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Google",
                        style: TextStyle(
                          color: Color.fromARGB(255, 82, 80, 80),
                          fontFamily: "Jasmine",
                          fontSize: 14.0,
                          // fontWeight: FontWeight.bold
                        )),
                  ]))),
      // )
    );
  }
}
