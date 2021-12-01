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
                "https://qph.fs.quoracdn.net/main-qimg-14aa45f4a944de6acb372fa0d4e61a7a-lq"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.network(
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Bitcoin.svg/1024px-Bitcoin.svg.png",
                      height: 60),
                  const SizedBox(width: 16),
                  const Text('Bitcoin',
                      style: TextStyle(
                          color: Globals.text1,
                          fontSize: 24,
                          fontWeight: FontWeight.w700)),
                  const SizedBox(width: 8),
                  const Text('(N°1)',
                      style: TextStyle(
                          color: Globals.text1,
                          fontSize: 18,
                          fontWeight: FontWeight.w700)),
                ],
              ),
            ),
            const Center(
              child: Text('1 7988 €',
                  style: TextStyle(
                      color: Globals.text1,
                      fontSize: 24,
                      fontWeight: FontWeight.w700)),
            ),
            const Center(
              child: Text('Mettre ici un input pour choisir le nombre etc',
                  style: TextStyle(
                      color: Globals.text1,
                      fontSize: 24,
                      fontWeight: FontWeight.w700)),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed cursus, eros eu tempor dictum, erat libero pharetra risus, sed mattis odio velit non massa. Cras pellentesque neque non ante porta mattis. Vivamus id nunc id diam interdum auctor mollis a ligula. Interdum et malesuada fames ac ante ipsum primis in faucibus. Fusce eget leo non eros fermentum venenatis. Quisque ante quam, eleifend varius felis a, varius sodales dolor. Mauris feugiat fringilla quam, sit amet congue leo tempor ac. Sed suscipit, tortor eu gravida euismod, erat diam sollicitudin augue, sed molestie sapien urna in lorem. Donec sollicitudin sit amet libero eget consectetur. Fusce dapibus ante quis luctus vehicula. ',
                  style: TextStyle(color: Globals.text1, fontSize: 12)),
            ),
          ],
        ),
      ),
    );
  }
}
