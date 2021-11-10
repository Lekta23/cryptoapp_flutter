
import 'package:notreprojet/screens/home/home.dart';
import 'package:flutter/material.dart';

class Navbar extends State<Home> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
