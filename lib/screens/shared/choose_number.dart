import 'package:flutter/material.dart';

import '../../globals.dart';

class choose_number extends StatelessWidget {
  const choose_number({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
            onPressed: null,
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)),
            child: const Text(
              '-',
              style: TextStyle(color: Colors.white, fontSize: 22),
            )),
        const SizedBox(
          width: 98,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Globals.secondaryColor,
                hintText: '1',
                hintStyle: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ),
        ElevatedButton(
            onPressed: null,
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)),
            child: const Text(
              '+',
              style: TextStyle(color: Colors.white, fontSize: 22),
            )),
      ],
    );
  }
}
