// ignore_for_file: unused_import, must_be_immutable, prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overFlow;
  TextDirection textDirection;

  BigText(
      {Key? key,
      required this.color,
      required this.text,
      this.size = 20,
      this.overFlow = TextOverflow.visible,
      this.textDirection = TextDirection.ltr})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textDirection: textDirection,
      style: TextStyle(
        fontFamily: 'Roboto Slab',
        color: color,
        fontWeight: FontWeight.w800,
        fontSize: size,
        overflow: overFlow,
      ),
    );
  }
}
