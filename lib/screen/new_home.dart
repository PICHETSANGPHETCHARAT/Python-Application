import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

class newHome extends StatefulWidget {
  const newHome({super.key});

  @override
  State<newHome> createState() => _newHomeState();
}

class _newHomeState extends State<newHome> {
  Query refQuery = FirebaseDatabase.instance.ref().child('test_Users');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: FirebaseAnimatedList(
          query: refQuery,
          itemBuilder: (context, snapshot, animation, index) {
            String userString = snapshot.value as String;
            return Text(userString);
          },
        )),
      ),
    );
  }
}
