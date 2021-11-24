
import 'package:notreprojet/screens/home/home.dart';
import '../../../globals.dart';
import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
 
  int _counter = 0;
   void _incrementCounter() {
      _counter++;
  }
 

  @override
  Widget build(BuildContext context) {  
      return FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
        backgroundColor: Globals.secondaryColor,// This trailing comma makes auto-formatting nicer for build methods.
    );
    
  }


}
