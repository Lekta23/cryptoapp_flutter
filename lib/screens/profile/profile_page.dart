import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text("Profile".toUpperCase()),
      centerTitle: true,
      backgroundColor: Colors.pink,
    ),
  );
}