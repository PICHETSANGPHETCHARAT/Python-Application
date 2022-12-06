import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pythonapp/BottonBar.dart';
import 'package:pythonapp/firebase_options.dart';
import 'package:pythonapp/screen/new_home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(newHome());
}
 
// class GeeksforGeeks extends StatelessWidget {
//     @override Widget build(BuildContext context)
//     {return MaterialApp(
//         home: Scaffold(
//             backgroundColor: Colors.grey,
//             appBar: AppBar(backgroundColor: Colors.green,
//                            title: Text("GeeksforGeeks"), ),
//             body: Container(child: Center(child: Text("Stateless Widget"),
//                                           ),
//                             ),
//         ),
//     );
//     }}