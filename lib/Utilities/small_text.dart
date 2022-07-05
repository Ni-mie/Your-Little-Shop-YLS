// ignore_for_file: unused_import, must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextAlign align;
  SmallText({
    Key? key,
    this.color = const Color(0XFF001839),
    required this.text,
    this.size = 14,
    this.align = TextAlign.left,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Open Sans',
        color: color,
        fontWeight: FontWeight.w600,
        fontSize: size,
      ),
    );
  }
}
