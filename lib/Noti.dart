import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pythonapp/Them.dart';
import 'package:pythonapp/t1.dart';

class noti extends StatefulWidget {
  @override
  _notiState createState() => _notiState();
}

class _notiState extends State<noti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 34, 31, 32),
      appBar: AppBar(
        title: Text("Notification"),
        centerTitle: true,
        backgroundColor: Colors.black,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Container(
          height: 900,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(0.0)),
            boxShadow: <BoxShadow>[],
            gradient: LinearGradient(
                colors: <Color>[
                  Color.fromARGB(255, 46, 65, 53),
                  Color.fromARGB(255, 1, 19, 13)
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 5.0,
                ),
                iconbuttonR(context),
              ],
            ),
          )),
    );
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
