import 'package:flutter/material.dart';

class WelcomeTextMedium extends StatelessWidget {
  const WelcomeTextMedium({
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
        color: color ?? Colors.black54,
        fontSize: size ?? 16,
      ),
    );
  }
}
