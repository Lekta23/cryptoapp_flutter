import 'package:flutter/material.dart';
import 'package:notreprojet/globals.dart';

class CryptoWallet extends StatelessWidget {
  const CryptoWallet({Key? key}) : super(key: key);


  @override

  Widget build(BuildContext context) {
    return const SizedBox(
      width: 250,
      height: 50,
      child: Card(
        color: Globals.secondaryColor,
      ),
    );
  }
}
