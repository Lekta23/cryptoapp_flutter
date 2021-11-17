import 'package:flutter/material.dart';
import 'package:notreprojet/globals.dart';
import 'package:notreprojet/screens/home/localwidget/appbar.dart';
import 'package:notreprojet/screens/home/localwidget/navbar.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  MyAppBar(titre:  Text('Top cryptos'.toUpperCase()), backgroundColor: Globals.secondaryColor),
      bottomNavigationBar: Navbar(ontap: _ontap, selectedIndex: _selectedIndex),
    );
  }

  int _selectedIndex = 0;
  void _ontap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
