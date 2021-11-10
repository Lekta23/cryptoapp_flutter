import 'package:flutter/material.dart';
import 'package:notreprojet/screens/home/localwidget/navbar.dart';

class Home extends StatefulWidget {
  const Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Home> createState() => Navbar();
  
}
