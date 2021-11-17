import 'package:notreprojet/globals.dart';
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
        type: BottomNavigationBarType.fixed,
        backgroundColor: Globals.secondaryColor,
        selectedItemColor: Globals.text1,
        unselectedItemColor: Globals.text2,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favoris',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_travel),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.change_circle),
            label: 'Historique',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ));
  }
}
