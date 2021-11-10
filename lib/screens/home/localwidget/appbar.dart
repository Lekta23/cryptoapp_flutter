
import 'package:notreprojet/screens/home/home.dart';
import '../../../globals.dart';
import 'package:flutter/material.dart';

class Navbar extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Globals.secondaryColor,
      ),
    );
  }
}
