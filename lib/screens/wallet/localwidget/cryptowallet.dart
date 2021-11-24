import 'package:flutter/material.dart';
import 'package:notreprojet/globals.dart';

class CryptoWallet extends StatelessWidget {
  const CryptoWallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width90 = MediaQuery.of(context).size.width * 0.90;

    return Center(
      child: SizedBox(
        width: width90,
        height: 100,
        child: Card(
          color: Globals.secondaryColor,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
            child: Row(
              children: [
                Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Bitcoin.svg/1024px-Bitcoin.svg.png",
                    height: 64),
                const SizedBox(width: 16),
                const Expanded(
                  child: Text('Bitcoin USA',
                      style: TextStyle(
                        color: Globals.text1,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      )),
                ),
                const Text('x1200',
                    style: TextStyle(
                      color: Globals.text1,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
