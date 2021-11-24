import 'package:flutter/material.dart';

import 'localwidget/cryptocard.dart';

class Tab1 extends StatelessWidget {
  const Tab1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        alignment: WrapAlignment.spaceAround,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          const CryptoCard(),
          const CryptoCard(),
        ],
      ),
    );
  }
}