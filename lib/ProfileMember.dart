
import 'package:flutter/material.dart';

class ProfileMember extends StatefulWidget {


  @override
  _ProfileMemberState createState() => _ProfileMemberState();
}

class _ProfileMemberState extends State<ProfileMember> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ข้อมูลส่วนตัว", style: TextStyle(color: Colors.white)),
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
                        image: const AssetImage('assets/22.png')),
                        SizedBox(
                      height: 20,
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("ชื่อ ผู้ใช้",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: "Jasmine",
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                          // SizedBox(
                          //   height: 2,
                          // ),
                          // Text(
                          //   "เรียนเกี่ยวกับไพทอน เริ่มจากเบซิก",
                          //   style: TextStyle(
                          //     color: Colors.grey[700],
                          //     fontFamily: "Jasmine",
                          //     fontSize: 5.0,
                          //   ),
                          // )
                        ]),
                        SizedBox(height: 50,) ,SizedBox(
                          width: double.infinity,
                          height: 80,
                          child: Card(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)),
                              // color: Colors.orange[900], //สีของกรอบ
                  
                              // margin: EdgeInsets.symmetric(
                              //     vertical: 10), //ความห่างของกรอบแต่ละอัน
                  
                        
                                  child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [  Image(
                                  height:
                                      MediaQuery.of(context).size.height > 800
                                          ? 191.0
                                          : 60,
                                  fit: BoxFit.fill,
                                  image: const AssetImage('assets/555.jpg')),
                                  SizedBox(width: 10,),
                                Text(
                        "ความคืบหน้าในบทเรียน : 40%",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),]))),
                      //  SizedBox(height: 20,),
                      // iconbuttonRo(context),
                        SizedBox(height: 40,),
                      // buildTextFieldEmail(),
                      // buildTextFieldPassword(),
                      // buildTextFieldPasswordConfirm(),
                      
                      // SizedBox(height: 70,),
                      // iconbuttonR(context)
                    ],
                  )),
            )));
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
                    return ProfileMember();
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
                             
                                Text("เลือกรูปโปรไฟล์",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 251, 248, 248),
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
                    return ProfileMember();
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
            decoration: InputDecoration.collapsed(hintText: "ชื่อผู้ใช้"),
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
            decoration: InputDecoration.collapsed(hintText: "Password"),
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