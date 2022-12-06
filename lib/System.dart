import 'package:flutter/material.dart';
import 'package:pythonapp/EditNoti.dart';
import 'package:pythonapp/EditProfile.dart';
import 'package:pythonapp/Home.dart';
import 'package:pythonapp/LogInLogOut/sign_in.dart';
import 'package:pythonapp/LogInLogOut/sign_up.dart';
import 'package:pythonapp/ChangePass.dart';
import 'package:pythonapp/Them.dart';
import 'package:pythonapp/AddFile.dart';
import 'package:pythonapp/AddTest.dart';
import 'package:pythonapp/ForgetPass.dart';
import 'package:pythonapp/Member.dart';
import 'package:pythonapp/ProfileMember.dart';
import 'package:pythonapp/t1.dart';
import 'package:pythonapp/Test.dart';

class System extends StatefulWidget {
  @override
  _SystemState createState() => _SystemState();
}

class _SystemState extends State<System> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: true,
        brightness: Brightness.light,
        backgroundColor: Color.fromARGB(255, 31, 58, 94),
        elevation: 0,
      ),
      body: Container(
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
                Color.fromARGB(255, 31, 58, 94),
                Color.fromARGB(255, 3, 2, 0)
                // CustomTheme.GradientEnd,
              ],
              begin: FractionalOffset(0.2, 0.2),
              end: FractionalOffset(1.0, 1.0),
              stops: <double>[0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: Column(
            //แนวตั้ง
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              iconbutton(context),
              SizedBox(
                height: 30,
              ),
              iconbuttonR(context),
              SizedBox(
                height: 6,
              ),
              iconbuttonRr(context),
              SizedBox(
                height: 6,
              ),
              iconbuttonRrr(context),
              SizedBox(
                height: 50,
              ),
              iconbuttonRrrr(context),
              // iconbuttonRRRRR(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget iconbuttonR(BuildContext context) {
    var actions;
    return SizedBox(
        width: double.infinity,
        height: 70,
        child: Card(
          color: Color.fromARGB(255, 246, 249, 252),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
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
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    // Image(
                    //     height:
                    //         MediaQuery.of(context).size.height > 800
                    //             ? 191.0
                    //             : 40,
                    //     fit: BoxFit.fill,
                    //     image:
                    //         const AssetImage('assets/22.png')),
                    SizedBox(
                      width: 20,
                    ),
                    Text("แก้ไขข้อมูลส่วนตัว",
                        style: TextStyle(
                            color: Color.fromARGB(255, 253, 252, 252),
                            fontFamily: "Jasmine",
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                  ]),
                  Icon(Icons.arrow_forward_ios_rounded,
                      size: 30, color: Colors.grey),
                ]),
          ),
        ));
  }

  Widget iconbuttonRrr(BuildContext context) {
    var actions;
    return SizedBox(
        width: double.infinity,
        height: 70,
        child: Card(
          color: Color.fromARGB(255, 246, 249, 252),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) {
                    return Member();
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
                                // Image(
                                //     height:
                                //         MediaQuery.of(context).size.height > 800
                                //             ? 191.0
                                //             : 40,
                                //     fit: BoxFit.fill,
                                //     image: const AssetImage('assets/2222.png')),
                                SizedBox(
                                  width: 20,
                                ),
                                Text("เปลี่ยนรหัสผ่าน",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 251, 249, 249),
                                        fontFamily: "Jasmine",
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                              ]),
                          Icon(Icons.arrow_forward_ios_rounded,
                              size: 30, color: Colors.grey),
                        ]),
                  ))),
        ));
  }

  Widget iconbuttonRr(BuildContext context) {
    var actions;
    return SizedBox(
        width: double.infinity,
        height: 70,
        child: Card(
          color: Color.fromARGB(255, 246, 249, 252),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
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
                                // Image(
                                //     height:
                                //         MediaQuery.of(context).size.height > 800
                                //             ? 191.0
                                //             : 40,
                                //     fit: BoxFit.fill,
                                //     image: const AssetImage('assets/1.png')),
                                SizedBox(
                                  width: 20,
                                ),
                                Text("ตั้งค่าการแจ้งเตือน",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 254, 254, 254),
                                        fontFamily: "Jasmine",
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                              ]),
                          Icon(Icons.arrow_forward_ios_rounded,
                              size: 30, color: Colors.grey),
                        ]),
                  ))),
        ));
  }

  Widget iconbuttonRrrr(BuildContext context) {
    var actions;
    return SizedBox(
        width: double.infinity,
        height: 70,
        child: Card(
          color: Color.fromARGB(255, 166, 198, 241),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: InkWell(
              splashColor: Color.fromARGB(255, 94, 162, 218).withAlpha(30),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) {
                    return _showDialog();
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
                                  width: 130,
                                ),
                                Text("ออกจากระบบ",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 254, 251, 251),
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

  Widget iconbutton(BuildContext context) {
    return SizedBox(
        width: 320,
        height: 200,
        child: Card(
          color: Color.fromARGB(255, 249, 247, 246),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) {
                    return AddFile();
                  }),
                );
              },
              child: Padding(
                  padding: EdgeInsets.all(0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(height: 35),
                              // Image(
                              //     height: MediaQuery.of(context).size.height > 800
                              //         ? 191.0
                              //         : 85,
                              //     fit: BoxFit.fill,
                              //     image: const AssetImage('assets/22.png')),
                              SizedBox(
                                height: 100,
                              ),
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("ชื่อ : ",
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 252, 252, 252),
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
                                  ])
                            ]),
                      ]))),
        ));
  }

  _showDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('ต้องการออกจากระบบหรือไม่',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Jasmine",
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold)),
            // content: Text('ต้องการออกจากระบบหรือไม่'),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => MyLoginPage()));
                  },
                  child: Text('ใช่')),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('ไม่'))
            ],
          );
        });
  }
}
