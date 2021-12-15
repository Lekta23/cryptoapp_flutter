import 'package:flutter/material.dart';
import 'package:notreprojet/screens/home/localwidget/appbar.dart';
import 'package:notreprojet/screens/home/localwidget/navbar.dart';
import 'package:notreprojet/screens/wallet/localwidget/cryptowallet.dart';

import '../../globals.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            CryptoWallet(),
          ],
        ),
      ),
    );
  }
}
