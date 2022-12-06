// import 'package:firebase_database/firebase_database.dart';
// import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:pythonapp/Them.dart';

import 'package:pythonapp/System.dart';

import 'package:page_transition/page_transition.dart';

class t1 extends StatefulWidget {
  @override
  _t1State createState() => _t1State();
}

class _t1State extends State<t1> {
  Widget button(BuildContext context) {
    return Container(
      // width: 100,
      // height: 60,

      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.only(left: 0, top: 0),
          child: GestureDetector(
            onTap: () {
              // Navigator.push(
              //     context,
              //     PageTransition(
              //         type: PageTransitionType.leftToRight, child: ));
            },
            child: Icon(Icons.arrow_left_outlined,
                size: 60, color: Colors.yellowAccent),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text('1/3',
            style: TextStyle(
                color: Colors.red,
                fontFamily: "Jasmine",
                fontSize: 15.0,
                fontWeight: FontWeight.bold)),
        SizedBox(
          width: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 0, top: 0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.rightToLeft, child: System()),
              );
            },
            child: Icon(Icons.arrow_right_outlined,
                size: 60, color: Colors.yellowAccent),
          ),
        )
      ]),
    );
    // Padding(
    //           padding: const EdgeInsets.only(left: 15, top: 12),
    //           child: GestureDetector(
    //             onTap: () {
    //               Navigator.pop(context);
    //             },
    //             child:
    //                 Icon(Icons.arrow_back_ios_new, size: 42, color: Colors.white),
    //           ),
    //         );
  }

  Widget content() {
    // Color typeColor = getTypeColor(contact['type']);
    return SizedBox(
      // child: SizedBox(

      // padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
      // height: MediaQuery.of(context).size.height * 0.850,
      width: 380,
      height: 480,
      child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: Colors.white, //สีของcard

          margin: EdgeInsets.symmetric(vertical: 15), //ความห่างของกรอบแต่ละอัน
          child: Padding(
            padding: EdgeInsets.all(30), //ความห่างของกรอบจากทุกด้าน
            // height: 250, //ความสูงของกรอบ

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    // Icon(
                    //   Icons.pets,
                    //   color: Colors.black,
                    //   size: 60,
                    // ),
                    SizedBox(
                      width: 20,
                    ),
                    Text('เนื้อหา + รูปภาพ ',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Jasmine",
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold)),
                    SizedBox(
                      width: 25,
                    ),
                    // Text(
                    //   '  เสื้อ : ' + contact['type'],
                    //   style: TextStyle(
                    //       fontSize: 16,
                    //       color: Colors.white,
                    //       fontWeight: FontWeight.w600),
                    // ),
                  ],
                ),
              ],
            ),
          )),
    );
  }

  // _showDeleteDialog({ Map contact}) {
  //   showDialog(
  //       context: context,
  //       builder: (context) {
  //         return AlertDialog(
  //           title: Text('ลบ ${contact['name']}',
  //               style: TextStyle(
  //                   color: Colors.black,
  //                   fontFamily: "Jasmine",
  //                   fontSize: 25.0,
  //                   fontWeight: FontWeight.bold)),
  //           content: Text('คุณแน่ใจว่าต้องการลบหรือไม่'),
  //           actions: [
  //             FlatButton(
  //                 onPressed: () {
  //                   Navigator.pop(context);
  //                 },
  //                 child: Text('ยกเลิก')),
  //             // FlatButton(
  //             //     onPressed: () {
  //             //       reference
  //             //           .child(contact['key'])
  //             //           .remove()
  //             //           .whenComplete(() => Navigator.pop(context));
  //             //     },
  //             //     child: Text('ลบ'))
  //           ],
  //         );
  //       });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomTheme.GradientStart,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          automaticallyImplyLeading: true,
          leading: Padding(
            padding: const EdgeInsets.only(left: 15, top: 12),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => t1()));
              },
              child:
                  Icon(Icons.arrow_back_ios_new, size: 42, color: Colors.white),
            ),
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25))),
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Column(children: const [
            // SizedBox(
            //   height: 15,
            // ),
            Text(
              "แนะนำภาษา Python",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Jasmine",
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
          ]),
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(0.0)),
            gradient: LinearGradient(
                colors: <Color>[
                  CustomTheme.GradientStart,
                  Color.fromARGB(255, 12, 11, 10)
                ],
                begin: FractionalOffset(0.2, 0.2),
                end: FractionalOffset(1.0, 1.0),
                stops: <double>[0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 620,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:
                            AssetImage("assets/12.jpg"), // <-- BACKGROUND IMAGE
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //       // Text('data'), Image(
                  //       //         height: MediaQuery.of(context).size.height > 800 ? 191.0 : 90,
                  //       //         fit: BoxFit.fill,
                  //       //         image: const AssetImage('assets/Python.png'))
                  //     ],
                  //   ),
                  // ),
                  // Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                  //   SizedBox(
                  //     width: 30,
                  //   ),
                  //   Image(
                  //       height: MediaQuery.of(context).size.height > 800 ? 191.0 : 90,
                  //       fit: BoxFit.fill,
                  //       image: const AssetImage('assets/Python.png')),
                  // ]),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   children: const [
                  //     // SizedBox(
                  //     //   width: 30,
                  //     //   height: 50,
                  //     // ),
                  //     Text(
                  //       "PYTHON",
                  //       style: TextStyle(
                  //           color: Color.fromARGB(255, 41, 41, 41),
                  //           fontFamily: "Jasmine",
                  //           fontSize: 30.0,
                  //           fontWeight: FontWeight.bold),
                  //     ),
                  //   ],
                  // ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [],
                  ),
                  // SizedBox(
                  //   height: 60,
                  // ),
                  // Column(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   children: [
                  //     // Text(
                  //     //   "Tools",
                  //     //   style: TextStyle(
                  //     //     fontSize: 21.0,
                  //     //     fontWeight: FontWeight.w600,
                  //     //   ),
                  //     // ),
                  //     Text(
                  //       "ความคืบหน้า",
                  //       style: TextStyle(
                  //         fontSize: 16.0,
                  //       ),
                  //     ),

                  SizedBox(
                      width: double.infinity,
                      height: 900,
                      //  backgroundColor:Colors.w
                      // color: Colors.orange[900], //สีของกรอบ

                      // margin: EdgeInsets.symmetric(
                      //     vertical: 10), //ความห่างของกรอบแต่ละอัน

                      child: Padding(
                          padding: EdgeInsets.all(0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [Text("data")]))),
                  //   ],
                  // ),
                  // SizedBox(
                  //   width: 10.0,
                  //   height: 40.0,
                  // ),
                  //   SizedBox(
                  //       width: double.infinity,
                  //       height: double.infinity,
                  //       child: Card(
                  //           // color: Colors.white,
                  //           shape: RoundedRectangleBorder(
                  //               borderRadius: BorderRadius.circular(16)),
                  //           // color: Colors.orange[900], //สีของกรอบ

                  //           // margin: EdgeInsets.symmetric(
                  //           //     vertical: 10), //ความห่างของกรอบแต่ละอัน

                  //           child: Padding(
                  //               padding: EdgeInsets.all(0),
                  //               child: Row(
                  //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //                   children: [

                  //                   ])))),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget iconbuttonR(BuildContext context) {
    return Center(
        child: Card(
      color: Colors.red,
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
        child: const SizedBox(
          width: 360,
          height: 100,
          child: Center(
              child: Text(
            'สีแดง',
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Jasmine",
                fontSize: 16.0,
                fontWeight: FontWeight.bold),
          )),
        ),
      ),
    ));
  }
}
