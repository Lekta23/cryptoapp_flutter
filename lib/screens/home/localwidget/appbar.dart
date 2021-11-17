import '../../../globals.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  final Color backgroundColor = Globals.secondaryColor;
  final Text titre;
  final AppBar appBar;

  const MyAppBar({Key? key, required this.titre, required this.appBar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
return AppBar(
  title: titre,
  backgroundColor: backgroundColor,
);
}}
