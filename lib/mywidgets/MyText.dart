import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;

  const MyText({
    @required this.text,
    this.color,
    this.fontSize = 20,
  });
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          fontSize: fontSize,
          color: color,
        ));
  }
}
