import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text("Settings".toUpperCase()),
      centerTitle: true,
      backgroundColor: Colors.pink,
    ),
  );
}