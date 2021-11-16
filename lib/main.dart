import 'package:flutter/material.dart';
import 'package:notreprojet/screens/home/home.dart';

import 'globals.dart';

// import 'globals.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(scaffoldBackgroundColor: Globals.primaryColor),
      home: const Home(title: 'Flutter Demo Home Page'),
    );
  }
}