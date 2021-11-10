
import 'package:notreprojet/screens/home/home.dart';
import '../../../globals.dart';
import 'package:flutter/material.dart';

class FloatingButton extends State<Home> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
        backgroundColor: Globals.secondaryColor,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
