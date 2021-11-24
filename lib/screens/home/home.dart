import 'package:flutter/material.dart';
import 'package:notreprojet/globals.dart';
import 'package:notreprojet/screens/favoris/favoris.dart';
import 'package:notreprojet/screens/historique/historique.dart';
import 'package:notreprojet/screens/home/localwidget/appbar.dart';
import 'package:notreprojet/screens/home/localwidget/navbar.dart';
import 'package:notreprojet/screens/home/localwidget/cryptocard.dart';
import 'package:notreprojet/screens/wallet/wallet.dart';

import 'homepage.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

const tab = [Tab1(), Favoris(), Wallet(), Historique()];
const titre = ['Top cryptos', 'Vos Favoris', 'Vos cryptos' , 'Historique'];


class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
          titre: Text(titre[_selectedIndex].toUpperCase()),
          backgroundColor: Globals.secondaryColor),
      body: tab[_selectedIndex],
      bottomNavigationBar: Navbar(ontap: _ontap, selectedIndex: _selectedIndex),
    );
  }

  int _selectedIndex = 0;
  void _ontap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
