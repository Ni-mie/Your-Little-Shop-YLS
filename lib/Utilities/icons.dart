// ignore_for_file: must_be_immutable, file_names, duplicate_ignore

// ignore: must_be_immutable
import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  Color? color;
  final IconData icon;
  double size;
  double width;
  double height;
  final String text;
  AppIcon(
      {Key? key,
      this.color = const Color(0XFF000000),
      required this.icon,
      this.size = 20,
      this.width = 200,
      this.height = 200,
      this.text = 'message'})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.black12,
      ),
      child: Icon(
        icon,
        color: color,
      ),
    );
  }
}
