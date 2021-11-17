import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../globals.dart';

class CryptoCard extends StatelessWidget {
  const CryptoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 175,
      height: 250,
      child: Card(
        color: Globals.secondaryColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('card'),
            
          ],
        ),
      ),
    );
  }
}
