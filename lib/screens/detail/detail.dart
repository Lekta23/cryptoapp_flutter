import 'package:flutter/material.dart';

import '../../globals.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Image.network(
              "https://qph.fs.quoracdn.net/main-qimg-14aa45f4a944de6acb372fa0d4e61a7a-lq"
            ),
            Row(
              children: [
                Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Bitcoin.svg/1024px-Bitcoin.svg.png",
                    height: 30),
                const Text('Bitcoin',  style: TextStyle(
                        color: Globals.text1,
                        fontSize: 18,
                        fontWeight: FontWeight.w700)),
              ],
            )
          ],
        ),
      ),
    );
  }
}