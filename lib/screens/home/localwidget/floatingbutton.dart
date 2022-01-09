// ignore_for_file: unused_field

import '../../../globals.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FloatingButton extends StatelessWidget {
  int _counter = 0;

  FloatingButton({Key? key}) : super(key: key);

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
