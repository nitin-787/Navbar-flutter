import 'package:flutter/material.dart';
import 'package:navbar_flutter/utils/navbar1.dart';
import 'package:navbar_flutter/utils/navbar2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const Navbar1(),
      home: const Navbar2(),
    );
  }
}
