import 'package:flutter/material.dart';
import 'package:travel_app/constants.dart';
import 'package:travel_app/screens/home_screen.dart';

class ResponsiveButton extends StatelessWidget {
  const ResponsiveButton({Key? key, this.isLong, this.width}) : super(key: key);
  final bool? isLong;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: ((context) => const HomeScreen()),
        ),
      ),
      child: Container(
        height: 60,
        width: width ?? 91,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: mainColor,
        ),
        child: Row(
          children: [
            Image.asset('assets/button-one.png'),
          ],
        ),
      ),
    );
  }
}
