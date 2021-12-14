import 'package:flutter/material.dart';

import '../../providers/dio_main.dart';
import 'localwidget/cryptocard.dart';

class Tab1 extends StatelessWidget {
  const Tab1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: DioMain()
        ),
      );
  }}
