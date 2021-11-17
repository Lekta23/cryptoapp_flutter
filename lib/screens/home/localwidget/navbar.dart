import 'package:notreprojet/globals.dart';
import 'package:notreprojet/screens/home/home.dart';
import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
 final Function(int) ontap;
 final int selectedIndex;

  const Navbar({Key? key , required this.ontap, required this.selectedIndex }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return BottomNavigationBar(
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
        currentIndex: selectedIndex,
        onTap: ontap,
      );
  }
}
