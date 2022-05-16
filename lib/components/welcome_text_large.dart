import 'package:flutter/material.dart';

class WelcomeTextLarge extends StatelessWidget {
  const WelcomeTextLarge({
    Key? key,
    required this.text,
    this.color,
    this.size,
  }) : super(key: key);
  final String text;
  final Color? color;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? Colors.black,
        fontSize: size ?? 32,
        fontWeight: FontWeight.bold,
        fontFamily: 'Roboto',
      ),
    );
  }
}
