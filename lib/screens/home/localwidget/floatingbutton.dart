// ignore_for_file: unused_field

import '../../../globals.dart';
import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: _incrementCounter,
      tooltip: 'Increment',
      child: const Icon(Icons.add),
      backgroundColor: Globals
          .secondaryColor, // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _incrementCounter() {
    _counter++;
  }
}
