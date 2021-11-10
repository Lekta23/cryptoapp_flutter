
import 'package:notreprojet/screens/home/home.dart';
import '../../../globals.dart';
import 'package:flutter/material.dart';

class Navbar extends State<Home> {
  // int _counter = 0;
  int _selectedIndex = 0;
  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }
  void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Globals.secondaryColor,
      ),
      bottomNavigationBar: BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.wallet_travel),
        label: 'Wallet',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.change_circle),
        label: 'Change',
      ),
    ],
    currentIndex: _selectedIndex,
    onTap: _onItemTapped, 
  ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       const Text(
      //         'You have pushed the button this many times:',
      //       ),
      //       Text(
      //         '$_counter',
      //         style: Theme.of(context).textTheme.headline4,
      //       ),
      //     ],
      //   ),
      // ),
      
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      //   backgroundColor: Globals.secondaryColor,
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
